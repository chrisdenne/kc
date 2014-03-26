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
package org.kuali.kra.s2s.generator.bo;

import org.kuali.coeus.sys.api.model.ScaleTwoDecimal;

import java.util.ArrayList;
import java.util.List;

public class IndirectCostInfo {


    private List<IndirectCostDetails> indirectCostDetails;
    private ScaleTwoDecimal totalIndirectCosts;
    private ScaleTwoDecimal totalIndirectCostSharing;


    public IndirectCostInfo() {
        indirectCostDetails = new ArrayList<IndirectCostDetails>();

    }

    public List<IndirectCostDetails> getIndirectCostDetails() {
        return indirectCostDetails;
    }

    /**
     * Setter for property indirectCostDetails.
     * 
     * @param indirectCostDetails New value of property indirectCostDetails.
     */
    public void setIndirectCostDetails(List<IndirectCostDetails> indirectCostDetails) {
        this.indirectCostDetails = indirectCostDetails;
    }

    /**
     * Getter for property totalIndirectCosts.
     * 
     * @return Value of property totalIndirectCosts.
     */
    public ScaleTwoDecimal getTotalIndirectCosts() {
        return totalIndirectCosts;
    }

    /**
     * Setter for property totalIndirectCosts.
     * 
     * @param totalIndirectCosts New value of property totalIndirectCosts.
     */
    public void setTotalIndirectCosts(ScaleTwoDecimal totalIndirectCosts) {
        this.totalIndirectCosts = totalIndirectCosts;
    }

    // start add costSaring for fedNonFedBudget repport
    /**
     * Getter for property totalIndirectCostSharing.
     * 
     * @return Value of property totalIndirectCostSharing.
     */
    public ScaleTwoDecimal getTotalIndirectCostSharing() {
        return totalIndirectCostSharing;
    }

    /**
     * Setter for property totalIndirectCostSharing.
     * 
     * @param totalIndirectCostSharing New value of property totalIndirectCostSharing.
     */
    public void setTotalIndirectCostSharing(ScaleTwoDecimal totalIndirectCostSharing) {
        this.totalIndirectCostSharing = totalIndirectCostSharing;
    }
}
