/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.s2s.generator.impl;

import gov.grants.apply.coeus.additionalEquipment.AdditionalEquipmentListDocument;
import gov.grants.apply.coeus.additionalEquipment.AdditionalEquipmentListDocument.AdditionalEquipmentList;
import gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument;
import gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList;
import gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons.Compensation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kuali.coeus.common.budget.api.nonpersonnel.BudgetLineItemContract;
import org.kuali.coeus.common.budget.api.period.BudgetPeriodContract;
import org.kuali.coeus.common.budget.api.personnel.BudgetPersonnelDetailsContract;
import org.kuali.coeus.common.framework.print.PrintingException;
import org.kuali.coeus.common.framework.print.PrintingService;
import org.kuali.coeus.propdev.api.person.ProposalPersonContract;
import org.kuali.coeus.propdev.impl.core.ProposalDevelopmentDocument;
import org.kuali.coeus.sys.api.model.KcFile;
import org.kuali.coeus.common.budget.framework.core.BudgetDocument;
import org.kuali.coeus.propdev.impl.budget.ProposalBudgetService;
import org.kuali.kra.s2s.S2SException;
import org.kuali.coeus.propdev.api.attachment.NarrativeContract;
import org.kuali.coeus.propdev.api.attachment.NarrativeService;
import org.kuali.kra.s2s.generator.S2SBaseFormGenerator;
import org.kuali.kra.s2s.generator.bo.BudgetPeriodInfo;
import org.kuali.kra.s2s.generator.bo.CostInfo;
import org.kuali.kra.s2s.generator.bo.KeyPersonInfo;
import org.kuali.kra.s2s.printing.GenericPrintable;
import org.kuali.kra.s2s.service.S2SBudgetCalculatorService;
import org.kuali.kra.s2s.service.S2SUtilService;
import org.kuali.kra.s2s.util.AuditError;
import org.kuali.kra.s2s.util.S2SConstants;
import org.kuali.kra.s2s.validator.S2SErrorHandler;
import org.kuali.rice.kew.api.exception.WorkflowException;
import org.kuali.rice.krad.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * This abstract class has methods that are common to all the versions of
 * RRBudget form.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public abstract class RRBudgetBaseGenerator extends S2SBaseFormGenerator {

    private static final Log LOG = LogFactory.getLog(RRBudgetBaseGenerator.class);

    private static final String ADDITIONAL_EQUIPMENT = "ADDITIONAL_EQUIPMENT";
	public static final String OTHERCOST_DESCRIPTION = "Other";
	public static final String OTHERPERSONNEL_POSTDOC = "PostDoc";
	public static final String OTHERPERSONNEL_GRADUATE = "Grad";
	public static final String OTHERPERSONNEL_UNDERGRADUATE = "UnderGrad";
	public static final String OTHERPERSONNEL_SECRETARIAL = "Sec";
	public static final int BUDGET_JUSTIFICATION_ATTACHMENT = 7;

	protected static final int OTHERPERSONNEL_MAX_ALLOWED = 6;
	protected static final int ARRAY_LIMIT_IN_SCHEMA = 4;
	protected static final String NID_PD_PI = "PD/PI";
	protected static final String NID_CO_PD_PI = "CO-INVESTIGATOR";		
	protected static final String KEYPERSON_CO_PD_PI = "CO-PD/PI";
	
	private static final String EXTRA_KEYPERSONS = "EXTRA_KEYPERSONS";
	private static final String EQUIPMENT_NARRATIVE_TYPE_CODE = "12";

	private static final String EXTRA_KEYPERSON_ATTACHMENT_XSL = "/org/kuali/kra/s2s/stylesheet/ExtraKeyPersonAttachment.xsl";
	private static final String EXTRA_KEYPERSONS_COMMENT = "EXTRA_KEYPERSONS";
	private static final String EXTRA_KEYPERSONS_TYPE = "11";

    @Autowired
    @Qualifier("s2SBudgetCalculatorService")
    protected S2SBudgetCalculatorService s2sBudgetCalculatorService;

    @Autowired
    @Qualifier("s2SUtilService")
    protected S2SUtilService s2sUtilService;

    @Autowired
    @Qualifier("narrativeService")
    protected NarrativeService narrativeCleanupService;

    @Autowired
    @Qualifier("proposalBudgetService")
    protected ProposalBudgetService proposalBudgetService;

    @Autowired
    @Qualifier("documentService")
    protected DocumentService documentService;

    @Autowired
    @Qualifier("printingService")
    protected PrintingService printingService;

	protected void deleteAutoGenNarratives() {
        narrativeCleanupService.deleteAutoGeneratedNarratives(pdDoc.getDevelopmentProposal().getNarratives());
	}
	
	protected NarrativeContract saveAdditionalEquipments(BudgetPeriodInfo periodInfo,List<CostInfo> extraEquipmentArrayList) {
        NarrativeContract narrative = null;
		if (extraEquipmentArrayList.size() > 0) {
			AdditionalEquipmentList additionalEquipmentList = AdditionalEquipmentList.Factory
					.newInstance();
			additionalEquipmentList.setProposalNumber(pdDoc
					.getDevelopmentProposal().getProposalNumber());
			additionalEquipmentList.setBudgetPeriod(new BigInteger(Integer
					.toString(periodInfo.getBudgetPeriod())));
			additionalEquipmentList
					.setEquipmentListArray(getEquipmentListArray(extraEquipmentArrayList));

			AdditionalEquipmentListDocument additionalEquipmentDoc = AdditionalEquipmentListDocument.Factory.newInstance();
			additionalEquipmentDoc.setAdditionalEquipmentList(additionalEquipmentList);
			Source xsltSource = new StreamSource(
					getClass()
							.getResourceAsStream(
									"/org/kuali/kra/s2s/stylesheet/AdditionalEquipmentAttachment.xsl"));
			Map<String, Source> xSLTemplateWithBookmarks = new HashMap<String, Source>();
			xSLTemplateWithBookmarks.put("", xsltSource);

			String xmlData = additionalEquipmentDoc.xmlText();
			Map<String, byte[]> streamMap = new HashMap<String, byte[]>();
			streamMap.put("", xmlData.getBytes());
			GenericPrintable printable = new GenericPrintable();
			printable.setXSLTemplateWithBookmarks(xSLTemplateWithBookmarks);
			printable.setStreamMap(streamMap);
			try {
				KcFile printData = printingService
						.print(printable);
				String fileName=pdDoc.getDevelopmentProposal().getProposalNumber()+periodInfo.getBudgetPeriod()+ADDITIONAL_EQUIPMENT+".pdf";
				narrative = saveNarrative(printData.getData(),
						EQUIPMENT_NARRATIVE_TYPE_CODE,fileName,ADDITIONAL_EQUIPMENT);
			} catch (PrintingException e) {
				LOG.error(e.getMessage(), e);
			}
		}
		return narrative;
	}

	private gov.grants.apply.coeus.additionalEquipment.AdditionalEquipmentListDocument.AdditionalEquipmentList.EquipmentList[] getEquipmentListArray(
			List<CostInfo> extraEquipmentArrayList) {
		List<AdditionalEquipmentList.EquipmentList> additionalEquipmentListList = new ArrayList<AdditionalEquipmentList.EquipmentList>();
		AdditionalEquipmentList.EquipmentList equipmentList = null;
		for (CostInfo costInfo : extraEquipmentArrayList) {
			equipmentList = AdditionalEquipmentList.EquipmentList.Factory
					.newInstance();
			equipmentList.setFundsRequested(costInfo.getCost()
					.bigDecimalValue());
			equipmentList
					.setEquipmentItem(costInfo.getDescription() != null ? costInfo
							.getDescription()
							: costInfo.getCategory());
			additionalEquipmentListList.add(equipmentList);
		}
		return additionalEquipmentListList
				.toArray(new gov.grants.apply.coeus.additionalEquipment.AdditionalEquipmentListDocument.AdditionalEquipmentList.EquipmentList[0]);
	}
	protected NarrativeContract saveExtraKeyPersons(BudgetPeriodInfo periodInfo) {
        NarrativeContract extraKPNarrative = null;
		if (periodInfo.getExtraKeyPersons() != null && !periodInfo.getExtraKeyPersons().isEmpty()) {
			ExtraKeyPersonListDocument  extraKeyPersonListDocument = ExtraKeyPersonListDocument.Factory.newInstance();
			ExtraKeyPersonList extraKeyPersonList = ExtraKeyPersonList.Factory.newInstance(); 
			extraKeyPersonList.setProposalNumber(pdDoc.getDevelopmentProposal().getProposalNumber());
			extraKeyPersonList.setBudgetPeriod(new BigInteger(""+periodInfo.getBudgetPeriod()));
			extraKeyPersonList.setKeyPersonsArray(getExtraKeyPersons(periodInfo.getExtraKeyPersons()));
			extraKeyPersonListDocument.setExtraKeyPersonList(extraKeyPersonList);
			String xmlData = extraKeyPersonListDocument.xmlText();
			Map<String, byte[]> streamMap = new HashMap<String, byte[]>();
			streamMap.put("", xmlData.getBytes());
			Source xsltSource = new StreamSource(getClass()
					.getResourceAsStream(EXTRA_KEYPERSON_ATTACHMENT_XSL));
			Map<String, Source> xSLTemplateWithBookmarks = new HashMap<String, Source>();
			xSLTemplateWithBookmarks.put("", xsltSource);
			
			GenericPrintable printable = new GenericPrintable();
			printable.setXSLTemplateWithBookmarks(xSLTemplateWithBookmarks);
			printable.setStreamMap(streamMap);
			try {
				KcFile printData = printingService.print(printable);
				String fileName = pdDoc.getDevelopmentProposal().getProposalNumber()+periodInfo.getBudgetPeriod()+"_"+EXTRA_KEYPERSONS+".pdf";
				extraKPNarrative = saveNarrative(printData.getData(), EXTRA_KEYPERSONS_TYPE, fileName, EXTRA_KEYPERSONS_COMMENT);
			} catch (PrintingException e) {
				LOG.error(e.getMessage(), e);
			}
		}
		return extraKPNarrative;
	}
	private gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons[] getExtraKeyPersons(List<KeyPersonInfo> keyPersonList) {
		List<gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons> keypersonslist = new ArrayList<gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons>();
		for(KeyPersonInfo keyPersonInfo : keyPersonList){
			gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons keyPerson = gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons.Factory.newInstance();
			keyPerson.setFirstName(keyPersonInfo.getFirstName());
			keyPerson.setMiddleName(keyPersonInfo.getMiddleName());
			keyPerson.setLastName(keyPersonInfo.getLastName());
			keyPerson.setProjectRole(keyPersonInfo.getRole());
			keyPerson.setCompensation(getExtraKeyPersonCompensation(keyPersonInfo));
			keypersonslist.add(keyPerson);
		}
		return keypersonslist.toArray(new gov.grants.apply.coeus.extraKeyPerson.ExtraKeyPersonListDocument.ExtraKeyPersonList.KeyPersons[0]);
	}
	private Compensation getExtraKeyPersonCompensation(
			KeyPersonInfo keyPersonInfo) {
		Compensation compensation = Compensation.Factory.newInstance();
		if(keyPersonInfo.getAcademicMonths() != null){
			compensation.setAcademicMonths(keyPersonInfo.getAcademicMonths().bigDecimalValue());
		}
		if(keyPersonInfo.getBaseSalary() != null){
			compensation.setBaseSalary(keyPersonInfo.getBaseSalary().bigDecimalValue());
		}
		if(keyPersonInfo.getCalendarMonths() != null){
			compensation.setCalendarMonths(keyPersonInfo.getCalendarMonths().bigDecimalValue());
		}
		if(keyPersonInfo.getFringe() != null){
			compensation.setFringeBenefits(keyPersonInfo.getFringe().bigDecimalValue());
		}
		if(keyPersonInfo.getFundsRequested() != null){
			compensation.setFundsRequested(keyPersonInfo.getFundsRequested().bigDecimalValue());
		}
		if(keyPersonInfo.getRequestedSalary() != null){
			compensation.setRequestedSalary(keyPersonInfo.getRequestedSalary().bigDecimalValue());
		}
		if(keyPersonInfo.getSummerMonths() != null){
			compensation.setSummerMonths(keyPersonInfo.getSummerMonths().bigDecimalValue());
		}
		return compensation;
	}
   protected boolean isProposalPersonEqualsKeyPerson(ProposalPersonContract proposalPerson, KeyPersonInfo keyPerson) {
        if(keyPerson.getPersonId()!=null){
            return keyPerson.getPersonId().equals(proposalPerson.getPersonId());
        }else if(keyPerson.getRolodexId()!=null){
            return keyPerson.getRolodexId().equals(proposalPerson.getRolodexId());
        }
        return false;
    }

   /**
    * This method check whether the key person has a personnel budget  
    * 
    * @param keyPerson
    *            (KeyPersonInfo) key person entry.
    * @param period
    *            budget period
    * @return true if key person has personnel budget else false.
    */
   protected Boolean hasPersonnelBudget(KeyPersonInfo keyPerson,int period){
       BudgetDocument budgetDocument = null;
       List<? extends BudgetLineItemContract> budgetLineItemList = new ArrayList<BudgetLineItemContract>();
       List<BudgetPersonnelDetailsContract> budgetPersonnelDetailsList = new ArrayList<BudgetPersonnelDetailsContract>();
       
       try {
           budgetDocument = (BudgetDocument) getDocumentService()
           .getByDocumentHeaderId(pdDoc.getBudgetDocumentVersion(0).getDocumentNumber());
           }
           catch (WorkflowException e) {
               LOG.error(e.getMessage(), e);
           }           
          budgetLineItemList = budgetDocument.getBudget().getBudgetPeriod(period-1).getBudgetLineItems();
          
          for(BudgetLineItemContract budgetLineItem : budgetLineItemList) {
            for(BudgetPersonnelDetailsContract budgetPersonnelDetails : budgetLineItem.getBudgetPersonnelDetailsList()){
               if( budgetPersonnelDetails.getPersonId().equals(keyPerson.getPersonId())){
                   return true;
               } else if (keyPerson.getRolodexId() != null && budgetPersonnelDetails
                       .getPersonId().equals(keyPerson.getRolodexId().toString())) {
                   return true;
               }
            }
          }        
       return false;       
   }
   
   /**
    * Perform manual validations on the budget. Similarly done in RRFedNonFedBudgetBaseGenerator due to object graph.
    * @param pdDoc
    * @return
    * @throws S2SException
    */
   protected boolean validateBudgetForForm(ProposalDevelopmentDocument pdDoc) throws S2SException {
       boolean valid = true;

       BudgetDocument budget = null;
       try {
           budget = proposalBudgetService.getFinalBudgetVersion(pdDoc);
       } catch (WorkflowException e) {
           throw new S2SException(e);
       }
       if(budget != null){
           for (BudgetPeriodContract period : budget.getBudget().getBudgetPeriods()) {
               List<String> participantSupportCode = new ArrayList<String>();
               participantSupportCode.add(s2sBudgetCalculatorService.getParticipantSupportCategoryCode());
               List<? extends BudgetLineItemContract> participantSupportLineItems =
                       s2sBudgetCalculatorService.getMatchingLineItems(period.getBudgetLineItems(), participantSupportCode);
               int numberOfParticipants = period.getNumberOfParticipants() == null ? 0 : period.getNumberOfParticipants();
               if (!participantSupportLineItems.isEmpty() && numberOfParticipants == 0) {
                   AuditError auditError= S2SErrorHandler.getError(S2SConstants.PARTICIPANT_COUNT_REQUIRED);
                   AuditError error= new AuditError(auditError.getErrorKey(),
                          auditError.getMessageKey()+period.getBudgetPeriod(),auditError.getLink());
                   getAuditErrors().add(error);
                   valid = false;
               } else if (numberOfParticipants > 0 && participantSupportLineItems.isEmpty()) {
                   getAuditErrors().add(S2SErrorHandler.getError(S2SConstants.PARTICIPANT_COSTS_REQUIRED));
                   valid = false;
               }
           }
       }
       return valid;
   }

    public S2SBudgetCalculatorService getS2sBudgetCalculatorService() {
        return s2sBudgetCalculatorService;
    }

    public S2SUtilService getS2sUtilService() {
        return s2sUtilService;
    }

    public NarrativeService getNarrativeCleanupService() {
        return narrativeCleanupService;
    }

    public ProposalBudgetService getProposalBudgetService() {
        return proposalBudgetService;
    }

    public DocumentService getDocumentService() {
        return documentService;
    }

    public void setS2sBudgetCalculatorService(S2SBudgetCalculatorService s2sBudgetCalculatorService) {
        this.s2sBudgetCalculatorService = s2sBudgetCalculatorService;
    }

    public void setS2sUtilService(S2SUtilService s2sUtilService) {
        this.s2sUtilService = s2sUtilService;
    }

    public void setNarrativeCleanupService(NarrativeService narrativeCleanupService) {
        this.narrativeCleanupService = narrativeCleanupService;
    }

    public void setProposalBudgetService(ProposalBudgetService proposalBudgetService) {
        this.proposalBudgetService = proposalBudgetService;
    }

    public void setDocumentService(DocumentService documentService) {
        this.documentService = documentService;
    }

    public PrintingService getPrintingService() {
        return printingService;
    }

    public void setPrintingService(PrintingService printingService) {
        this.printingService = printingService;
    }
}
