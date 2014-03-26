/*
 * Copyright 2005-2014 The Kuali Foundation
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
package org.kuali.coeus.sys.api.model;

import java.math.BigDecimal;

/**
 * This class is a wrapper around {@link java.math.BigDecimal}. It exposes the only the
 * needed functionality of {@link java.math.BigDecimal}, uses a standard
 * {@link java.math.RoundingMode} of {@link java.math.RoundingMode#HALF_UP}
 * and uses a standard SCALE of 2.
 *
 * This class is, like {@link java.math.BigDecimal}, immutable; even methods which
 * might be expected to change the value actually just return a new instance
 * with the new value.
 */
public final class ScaleTwoDecimal extends AbstractDecimal<ScaleTwoDecimal> {

    private static final long serialVersionUID = 1602860735060812811L;

    public static final int SCALE = 2;

    public static final ScaleTwoDecimal ZERO = new ScaleTwoDecimal(0);

    /**
     * This constructor should never be called except during JAXB unmarshalling.
     */
    private ScaleTwoDecimal() {
        super();
    }

    /**
     * This is the base constructor, used by constructors that take other types
     * 
     * @param value String containing numeric value
     * @throws IllegalArgumentException if the given String is null
     */
    public ScaleTwoDecimal(String value) {
        super(value, SCALE);
    }

    public ScaleTwoDecimal(int value) {
        super(value, SCALE);
    }

    public ScaleTwoDecimal(double value) {
        super(value, SCALE);
    }

    public ScaleTwoDecimal(BigDecimal value) {
        super(value, SCALE);
    }

    protected ScaleTwoDecimal(String value, int scale) {
        super(value, scale);
    }

    protected ScaleTwoDecimal(int value, int scale) {
        super(value, scale);
    }

    protected ScaleTwoDecimal(double value, int scale) {
        super(value, scale);
    }

    protected ScaleTwoDecimal(BigDecimal value, int scale) {
        super(value, scale);
    }

    public ScaleTwoDecimal percentage(ScaleTwoDecimal rate){
        return multiply(rate).divide(new ScaleTwoDecimal(100)).setScale();
    }

    public ScaleTwoDecimal setScale() {
        return setScale(SCALE);
    }

    public ScaleTwoDecimal setScale(int scale) {
        return new ScaleTwoDecimal(bigDecimalValue().setScale(scale,BigDecimal.ROUND_HALF_UP));
    }

    @Override
    public ScaleTwoDecimal divide(ScaleTwoDecimal divisor){
        return super.divide(divisor, false);
    }

    @Override
    public ScaleTwoDecimal multiply(ScaleTwoDecimal multiplier){
        return super.multiply(multiplier, false);
    }

    @Override
    protected ScaleTwoDecimal newInstance(String value) {
        return new ScaleTwoDecimal(value);
    }

    @Override
    protected ScaleTwoDecimal newInstance(double value) {
        return new ScaleTwoDecimal(value);
    }

    @Override
    protected ScaleTwoDecimal newInstance(double value, int scale) {
        return new ScaleTwoDecimal(value, scale);
    }  

    @Override
    protected ScaleTwoDecimal newInstance(BigDecimal value) {
        return new ScaleTwoDecimal(value);
    }

    @Override
    protected ScaleTwoDecimal newInstance(BigDecimal value, int scale) {
        return new ScaleTwoDecimal(value, scale);
    }

    /**
     * return {@link #ZERO} if the object is null
     * @param value the passed in value or {@link #ZERO}
     */
    public static ScaleTwoDecimal returnZeroIfNull(ScaleTwoDecimal value){
        return value==null ? ScaleTwoDecimal.ZERO : value;
    }
    
    /**
     * This method calls the floatValue() function.  It is needed so the TAGs can call this function.
     */
    public float getFloatValue() {
        return this.floatValue();
    }

    @Override
    protected ScaleTwoDecimal zero() {
        return ZERO;
    }
}
