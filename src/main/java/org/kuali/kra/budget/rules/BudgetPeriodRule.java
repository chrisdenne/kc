/*
 * Copyright 2006-2009 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.budget.rules;
import static org.kuali.kra.infrastructure.KraServiceLocator.getService;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.kuali.kra.budget.bo.BudgetLineItem;
import org.kuali.kra.budget.bo.BudgetPeriod;
import org.kuali.kra.budget.bo.BudgetPersonnelDetails;
import org.kuali.kra.budget.document.BudgetDocument;
import org.kuali.kra.budget.rule.AddBudgetPeriodRule;
import org.kuali.kra.budget.rule.DeleteBudgetPeriodRule;
import org.kuali.kra.budget.rule.SaveBudgetPeriodRule;
import org.kuali.kra.budget.rule.event.AddBudgetPeriodEvent;
import org.kuali.kra.budget.rule.event.DeleteBudgetPeriodEvent;
import org.kuali.kra.budget.rule.event.GenerateBudgetPeriodEvent;
import org.kuali.kra.budget.rule.event.SaveBudgetPeriodEvent;
import org.kuali.kra.budget.service.BudgetSummaryService;
import org.kuali.kra.infrastructure.BudgetSummaryErrorConstants;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KeyConstants;
import org.kuali.kra.rules.ResearchDocumentRuleBase;
import org.kuali.rice.kns.util.ErrorMap;
import org.kuali.rice.kns.util.GlobalVariables;

public class BudgetPeriodRule extends ResearchDocumentRuleBase implements AddBudgetPeriodRule, SaveBudgetPeriodRule, DeleteBudgetPeriodRule{
    private static final Logger LOG = Logger.getLogger(BudgetPeriodRule.class);

    private static final String NEW_BUDGET_PERIOD = "newBudgetPeriod";
    private static final String BUDGET_SUMMARY = "budgetParameters";
    private Date projectStartDate;
    private Date projectEndDate;
    private Date previousPeriodEndDate;
    private String[] errorParameter;

    /**
     * 
     * @see org.kuali.kra.budget.rule.AddBudgetPeriodRule#processAddBudgetPeriodBusinessRules(org.kuali.kra.budget.rule.event.AddBudgetPeriodEvent)
     */
    public boolean processAddBudgetPeriodBusinessRules(AddBudgetPeriodEvent addBudgetPeriodEvent) {
        BudgetDocument document = (BudgetDocument)addBudgetPeriodEvent.getDocument();
        BudgetPeriod newBudgetPeriod = addBudgetPeriodEvent.getBudgetPeriod();
        
        boolean rulePassed = true;
        //String errorPath = NEW_BUDGET_PERIOD;

        if (!isValidBudgetPeriod(document, newBudgetPeriod)) {
            rulePassed = false;
        }

        if (rulePassed) {
            rulePassed = isValidToInsert(document, newBudgetPeriod);
        }
        
        return rulePassed;
    }

    public boolean processSaveBudgetPeriodBusinessRules(SaveBudgetPeriodEvent saveBudgetPeriodEvent) {
        BudgetDocument document = (BudgetDocument)saveBudgetPeriodEvent.getDocument();
        BudgetPeriod newBudgetPeriod = saveBudgetPeriodEvent.getBudgetPeriod();
        
        boolean rulePassed = true;

        if (!isValidBudgetPeriod(document, newBudgetPeriod)) {
            rulePassed = false;
        }else if(!isValidBudgetPeriodBoundaries(document)){
            rulePassed = false;
        }else if(!isBudgetStatusValid(document)) {
            rulePassed = false;
        }

        return rulePassed;
    }

    public boolean processGenerateBudgetPeriodBusinessRules(GenerateBudgetPeriodEvent generateBudgetPeriodEvent) {
        BudgetDocument document = (BudgetDocument)generateBudgetPeriodEvent.getDocument();
        BudgetPeriod newBudgetPeriod = generateBudgetPeriodEvent.getBudgetPeriod();
        ErrorMap errorMap = GlobalVariables.getErrorMap();
        boolean rulePassed = true;
        int budgetPeriodNumber = 0;
        
        //1. Check budget periods are valid
        //2. Check for valid periods in line item
        //3. Look for line item in period 1 (needed to generate budget periods)
        //4. Check for other periods to populate
        //5. Make sure other periods have no pre-existing line items
        if (!isValidBudgetPeriod(document, newBudgetPeriod)) {
            rulePassed = false;
        }else if(!isValidBudgetPeriodBoundaries(document)){
            rulePassed = false;
        }else if(!getBudgetSummaryService().budgetLineItemExists(document, budgetPeriodNumber)) {
            errorMap.addToErrorPath(NEW_BUDGET_PERIOD);
            rulePassed = false;
            saveErrors("ERROR_PERIOD_LINE_ITEM_DOESNOT_EXIST", errorMap);
        } else if(document.getBudgetPeriods().size() <= (budgetPeriodNumber+1)) {
            errorMap.addToErrorPath(NEW_BUDGET_PERIOD);
            rulePassed = false;
            saveErrors("ERROR_NO_FUTURE_PERIOD_TO_GENERATE", errorMap);
        } else {
            String errorParam = "";
            for (int i=budgetPeriodNumber+1; i<document.getBudgetPeriods().size(); i++) {
                if (getBudgetSummaryService().budgetLineItemExists(document, i)) {
                    errorParam += ("" + (i+1) + ", ");
                }
            }
            if (errorParam.length() > 0) {
                errorMap.addToErrorPath(NEW_BUDGET_PERIOD);
                rulePassed = false;
                errorParam = errorParam.substring(0, errorParam.length()-2);
                setErrorParameter(new String[] { errorParam });
                saveErrors("ERROR_GENERATE_PERIOD", errorMap);
            }
        }
        errorMap.removeFromErrorPath(NEW_BUDGET_PERIOD);
        return rulePassed;
    }

    public boolean processDeleteBudgetPeriodBusinessRules(DeleteBudgetPeriodEvent deleteBudgetPeriodEvent) {
        BudgetDocument document = (BudgetDocument)deleteBudgetPeriodEvent.getDocument();
        int budgetPeriodNumber = deleteBudgetPeriodEvent.getBudgetPeriodNumber();
        ErrorMap errorMap = GlobalVariables.getErrorMap();
        
        boolean rulePassed = true;

        if(getBudgetSummaryService().budgetLineItemExists(document, budgetPeriodNumber)) {
            errorMap.addToErrorPath("document.budgetPeriods[" + budgetPeriodNumber + "]");
            rulePassed = false;
            saveErrors("ERROR_LINE_ITEM_EXISTS", errorMap);
            errorMap.removeFromErrorPath("document.budgetPeriods[" + budgetPeriodNumber + "]");
        }
        return rulePassed;
    }

    private boolean isBudgetStatusValid(BudgetDocument budgetDocument) {
        ErrorMap errorMap = GlobalVariables.getErrorMap();
        boolean statusValid = true;
        String budgetStatusCompleteCode = getKualiConfigurationService().getParameter(
                Constants.PARAMETER_MODULE_BUDGET, Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.BUDGET_STATUS_COMPLETE_CODE).getParameterValue();
        String budgetStatus = budgetDocument.getBudgetStatus();
        boolean finalVersionFlag = budgetDocument.getFinalVersionFlag();
        errorMap.addToErrorPath(BUDGET_SUMMARY);
        if (budgetStatus!= null 
                && budgetStatus.equals(budgetStatusCompleteCode) 
                && !finalVersionFlag) {
            errorMap.putError("document.proposal.budgetStatus", KeyConstants.ERROR_NO_FINAL_BUDGET);
            finalVersionFlag = false;
        }
        errorMap.removeFromErrorPath(BUDGET_SUMMARY);
        return true;
    }
    
    private boolean isValidBudgetPeriodBoundaries(BudgetDocument budgetDocument) {
        boolean validBoundaries = true;
        List<BudgetPeriod> budgetPeriods = budgetDocument.getBudgetPeriods();
        ErrorMap errorMap = GlobalVariables.getErrorMap();
        for(BudgetPeriod budgetPeriod: budgetPeriods) {
            String[] dateParams = {budgetPeriod.getBudgetPeriod()+""};
            setErrorParameter(dateParams);
            /* get all line items for each budget period */
            Collection<BudgetLineItem> periodLineItems = new ArrayList();
            Collection<BudgetPersonnelDetails> periodPersonnelDetails = new ArrayList();
            /* filter by budget period */
            Integer budgetPeriodNumber = budgetPeriod.getBudgetPeriod();
            int index = budgetPeriodNumber - 1;
            errorMap.addToErrorPath("document.budgetPeriods[" + index + "]");
            /* check line items */
            periodLineItems = budgetPeriod.getBudgetLineItems(); 
            BUDGET_LINEITEM_LOOP:
            for(BudgetLineItem periodLineItem: periodLineItems) {
                if(budgetPeriod.getBudgetPeriod() == periodLineItem.getBudgetPeriod()) {
                    if((periodLineItem.getStartDate().before(budgetPeriod.getStartDate())) || 
                    (periodLineItem.getStartDate().after(budgetPeriod.getEndDate())) || 
                    (periodLineItem.getEndDate().after(budgetPeriod.getEndDate())) ||
                    (periodLineItem.getEndDate().before(budgetPeriod.getStartDate()))){
                        saveErrors("ERROR_LINE_ITEM_DATE_DOESNOTMATCH", errorMap);
                        validBoundaries = false;
                        break;
                    }
                }
                /* check personnel line items */
                periodPersonnelDetails = periodLineItem.getBudgetPersonnelDetailsList();
                for(BudgetPersonnelDetails periodPersonnelDetail: periodPersonnelDetails) {
                    if(budgetPeriod.getBudgetPeriod() == periodPersonnelDetail.getBudgetPeriod()) {
                        if((periodPersonnelDetail.getStartDate().before(budgetPeriod.getStartDate())) || 
                                (periodPersonnelDetail.getStartDate().after(budgetPeriod.getEndDate())) || 
                                (periodPersonnelDetail.getEndDate().after(budgetPeriod.getEndDate())) ||
                                (periodPersonnelDetail.getEndDate().before(budgetPeriod.getStartDate()))){
                                    saveErrors("ERROR_LINE_ITEM_DATE_DOESNOTMATCH", errorMap);
                                    validBoundaries = false;
                                    break BUDGET_LINEITEM_LOOP;
                                }
                    }
                }
            }
            errorMap.removeFromErrorPath("document.budgetPeriods[" + index + "]");
        }
        return validBoundaries;
        
    }

    /* check new budget period */
    private boolean isValidNewBudgetPeriod(BudgetDocument budgetDocument, BudgetPeriod newBudgetPeriod) {
        ErrorMap errorMap = GlobalVariables.getErrorMap();
        boolean validNewBudgetPeriod = true;
        List<BudgetPeriod> budgetPeriods = budgetDocument.getBudgetPeriods();
        Date previousPeriodStartDate = null;
        Date previousPeriodEndDate = null;
        Date periodStartDate = null;
        Date periodEndDate = null;
        Date newPeriodStartDate = null;
        Date newPeriodEndDate = null;
        int index = 0;

        /* check new budget period */
        newPeriodStartDate = newBudgetPeriod.getStartDate();
        newPeriodEndDate = newBudgetPeriod.getEndDate();
        errorMap.addToErrorPath(NEW_BUDGET_PERIOD);
        if(newPeriodStartDate == null) {
            saveErrors("ERROR_PERIOD_START_REQUIRED", errorMap);
            validNewBudgetPeriod = false;
        }
        if(newPeriodEndDate == null) {
            saveErrors("ERROR_PERIOD_END_REQUIRED", errorMap);
            validNewBudgetPeriod = false;
        }
        errorMap.removeFromErrorPath(NEW_BUDGET_PERIOD);

        /* if dates are valid, check further where we can insert this new date */
        if(validNewBudgetPeriod) {
            int totalBudgetPeriods = budgetPeriods.size() - 1;
            errorMap.addToErrorPath(NEW_BUDGET_PERIOD);
            for(BudgetPeriod budgetPeriod: budgetPeriods) {
                Date validDateBefore;
                periodStartDate = budgetPeriod.getStartDate();
                periodEndDate = budgetPeriod.getEndDate();
                String dateCompareValue = null; 
                /* check first record */
                if(previousPeriodStartDate == null) {
                    validDateBefore = projectStartDate;
                }else {
                    validDateBefore = previousPeriodEndDate;
                }
                /* check if entered new period already exists in budget periods list */
                int periodNum = index;
                String[] newPeriodDateParams = {periodNum+"", periodNum+1+""};
                String invalidErrorMessage = null;
                setErrorParameter(newPeriodDateParams);
                if(index == 0 || index == totalBudgetPeriods) {
                    invalidErrorMessage = "ERROR_NEW_PERIOD_INVALID";
                }else {
                    invalidErrorMessage = "ERROR_NEW_PERIOD_VALID";
                }
                if((newPeriodStartDate.compareTo(periodStartDate) == 0) || (newPeriodEndDate.compareTo(periodEndDate) == 0)) {
                    saveErrors(invalidErrorMessage, errorMap);
                    validNewBudgetPeriod = false;
                    break;
                }else if(newPeriodStartDate.before(periodStartDate) || (index == totalBudgetPeriods && newPeriodStartDate.after(periodEndDate))) {     
                    /* check if new period start date is before current period start date */
                    boolean lastRecord = false;
                    if(index == totalBudgetPeriods) {
                        lastRecord = true;
                        if(newPeriodStartDate.after(periodEndDate)) {
                            periodNum = index + 1;
                        }
                    }
                    /* check new budget period */
                    if(newPeriodStartDate.before(getProjectStartDate())) {
                        dateCompareValue = "ERROR_PERIOD_START_BEFORE_PROJECT_START"; 
                    }else if (newPeriodStartDate.after(getProjectEndDate())) {
                        dateCompareValue = "ERROR_NEW_PERIOD_START_AFTER_PROJECT_END"; 
                    }else if (newPeriodEndDate.after(getProjectEndDate())) {
                        dateCompareValue = "ERROR_NEW_PERIOD_END_DATE"; 
                    }else if(newPeriodStartDate.before(validDateBefore)) {
                        dateCompareValue = invalidErrorMessage; 
                    }else if ((index < totalBudgetPeriods) && newPeriodEndDate.after(periodStartDate)) {
                        if(!lastRecord) {
                            dateCompareValue = invalidErrorMessage; 
                        }else {
                            dateCompareValue = "ERROR_NEW_PERIOD_PROJECT_END"; 
                        }
                    }
                    if(dateCompareValue != null) {
                        saveErrors(dateCompareValue, errorMap);
                        validNewBudgetPeriod = false;
                    }else {
                        newBudgetPeriod.setBudgetPeriod(periodNum+1);
                    }
                    break;
                }
                previousPeriodStartDate = budgetPeriod.getStartDate();
                previousPeriodEndDate = budgetPeriod.getEndDate();
                index++;
            }
            errorMap.removeFromErrorPath(NEW_BUDGET_PERIOD);
        }
        return validNewBudgetPeriod;
    }

    /* check existing budget periods */
    private boolean isValidBudgetPeriod(BudgetDocument budgetDocument, BudgetPeriod newBudgetPeriod) {
        setProjectStartDate(budgetDocument.getStartDate());
        setProjectEndDate(budgetDocument.getEndDate());
        List<BudgetPeriod> budgetPeriods = budgetDocument.getBudgetPeriods();
        boolean validBudgetPeriod = true;
        Date previousPeriodStartDate = null;
        Date previousPeriodEndDate = null;
        Date periodStartDate = null;
        Date periodEndDate = null;
        int index = 0;
        ErrorMap errorMap = GlobalVariables.getErrorMap();

        boolean insertBudgetPeriod = false;
        
        int totalBudgetPeriods = budgetPeriods.size() - 1;
        /* verify existing budget periods */
        for(BudgetPeriod budgetPeriod: budgetPeriods) {
            errorMap.addToErrorPath("document.budgetPeriods[" + index + "]");
            periodStartDate = budgetPeriod.getStartDate();
            periodEndDate = budgetPeriod.getEndDate();
            Date validDateBefore;
            boolean isDateNull = false;
            String[] dateParams = {index+1+""};
            setErrorParameter(dateParams);
            /* check for changes - start date is null */
            if(periodStartDate == null) {
                saveErrors("ERROR_PERIOD_START_REQUIRED", errorMap);
                validBudgetPeriod = false;
                isDateNull = true;
            }
            /* check for changes - end date is null */
            if(periodEndDate == null) {
                saveErrors("ERROR_PERIOD_END_REQUIRED", errorMap);
                validBudgetPeriod = false;
                isDateNull = true;
            }
            /* if date not null, validate budget period */
            if(!isDateNull){
                /* check first record */
                if(previousPeriodStartDate == null) {
                    validDateBefore = projectStartDate;
                }else {
                    validDateBefore = previousPeriodEndDate;
                }
                String dateCompareValue = compareDate(periodStartDate, periodEndDate, previousPeriodEndDate);
                if(dateCompareValue != null) {
                    saveErrors(dateCompareValue, errorMap);
                    validBudgetPeriod = false;
                }
                errorMap.removeFromErrorPath("document.budgetPeriods[" + index + "]");
            }
            previousPeriodStartDate = budgetPeriod.getStartDate();
            previousPeriodEndDate = budgetPeriod.getEndDate();
            index++;
        }
        /* if validation passed, then validate new budget period if it exists */
        if(validBudgetPeriod && (newBudgetPeriod != null)) {
            validBudgetPeriod = isValidNewBudgetPeriod(budgetDocument, newBudgetPeriod);
        }

        return validBudgetPeriod;
    }
    
    private void saveErrors(String errorValue, ErrorMap errorMap) {
        BudgetSummaryErrorConstants budgetSummaryErrorConstants =  BudgetSummaryErrorConstants.valueOf(errorValue);
        String errorKey = budgetSummaryErrorConstants.errorKey();
        String errorProperty = budgetSummaryErrorConstants.errorProperty();
        errorMap.putError(errorProperty, errorKey, getErrorParameter());
    }
    
    private String compareDate(Date periodStartDate, Date periodEndDate, Date previousPeriodEndDate){
        String returnErrorValue = null;
        LOG.info("prd st dt "+periodStartDate.getTime()+periodEndDate.getTime()+getProjectStartDate().getTime()+getProjectEndDate().getTime());
        if(periodStartDate.after(getProjectEndDate())) {
            LOG.info("ERROR_PERIOD_START_AFTER_PROJECT_END"+periodStartDate+getProjectEndDate());
            returnErrorValue = "ERROR_PERIOD_START_AFTER_PROJECT_END"; 
        }else if(periodStartDate.before(getProjectStartDate())) {
            LOG.info("ERROR_PERIOD_START_BEFORE_PROJECT_START"+periodStartDate+getProjectStartDate());
            returnErrorValue = "ERROR_PERIOD_START_BEFORE_PROJECT_START";
        }else if(periodEndDate.before(getProjectStartDate())) {
            LOG.info("ERROR_PERIOD_END_BEFORE_PROJECT_START"+periodEndDate+getProjectStartDate());
            returnErrorValue = "ERROR_PERIOD_END_BEFORE_PROJECT_START"; 
        }else if(periodEndDate.after(getProjectEndDate())) {
            LOG.info("ERROR_PERIOD_END_AFTER_PROJECT_END"+periodEndDate+getProjectEndDate());
            returnErrorValue = "ERROR_PERIOD_END_AFTER_PROJECT_END"; 
        }else if(periodStartDate.after(periodEndDate)) {
            LOG.info("ERROR_PERIOD_START_AFTER_PERIOD_END"+periodStartDate+periodEndDate);
            returnErrorValue = "ERROR_PERIOD_START_AFTER_PERIOD_END"; 
        }else if(previousPeriodEndDate != null && periodStartDate.before(previousPeriodEndDate)) {
            LOG.info("ERROR_PERIOD_START_BEFORE_PREVIOUS_END"+previousPeriodEndDate+periodStartDate);
            returnErrorValue = "ERROR_PERIOD_START_BEFORE_PREVIOUS_END"; 
        }else if(previousPeriodEndDate != null && periodEndDate.before(previousPeriodEndDate)) {
            LOG.info("ERROR_PERIOD_END_BEFORE_PREVIOUS_END"+previousPeriodEndDate+periodEndDate);
            returnErrorValue = "ERROR_PERIOD_END_BEFORE_PREVIOUS_END"; 
        }
        return returnErrorValue;
    }

    private BudgetSummaryService getBudgetSummaryService() {
        return getService(BudgetSummaryService.class);
    }

    private void setProjectStartDate(Date projectStartDate) {
        this.projectStartDate = projectStartDate;
    }
    
    private Date getProjectStartDate() {
        return projectStartDate;
    }

    private Date getProjectEndDate() {
        return projectEndDate;
    }

    private void setProjectEndDate(Date projectEndDate) {
        this.projectEndDate = projectEndDate;
    }

    public String[] getErrorParameter() {
        return errorParameter;
    }

    public void setErrorParameter(String[] errorParameter) {
        this.errorParameter = errorParameter;
    }
    
    private boolean isValidToInsert(BudgetDocument budgetDocument, BudgetPeriod newBudgetPeriod) {
        
        int expenseExistStatus = checkExpenseInBudget(budgetDocument);
        ErrorMap errorMap = GlobalVariables.getErrorMap();
        if (newBudgetPeriod.getEndDate().before(budgetDocument.getBudgetPeriod(0).getStartDate())) {
            // insert before 1st period
            if (expenseExistStatus >= 1) {
                errorMap.putError("newBudgetPeriod.error", KeyConstants.ERROR_INSERT_BUDGET_PERIOD);
                return false;
            }
        } else if (newBudgetPeriod.getEndDate().before(budgetDocument.getBudgetPeriod(budgetDocument.getBudgetPeriods().size()-1).getStartDate()) && expenseExistStatus > 1) {
            errorMap.putError("newBudgetPeriod.error", KeyConstants.ERROR_INSERT_BUDGET_PERIOD);
            return false;
        }
        return true;
    }
    
    private int checkExpenseInBudget(BudgetDocument budgetDocument) {
        int retVal = 0;
        for (BudgetPeriod budgetPeriod : budgetDocument.getBudgetPeriods()) {
            if (CollectionUtils.isNotEmpty(budgetPeriod.getBudgetLineItems())) {
                retVal = budgetPeriod.getBudgetPeriod();
            }
        }
        return retVal;
    }
}

