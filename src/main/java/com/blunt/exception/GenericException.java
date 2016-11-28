/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.payroll.exception;

/**
 *
 * @author Spunk
 */
public class GenericException extends RuntimeException {
private static long serialVersionUID = 1L;
private String exceptionMsg;
private String exceptionCode;
public GenericException(String exceptionCode, String exceptionMsg) {
this.exceptionCode = exceptionCode;
this.exceptionMsg = exceptionMsg;
}

    /**
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @return the exceptionMsg
     */
    public String getExceptionMsg() {
        return exceptionMsg;
    }

    /**
     * @return the exceptionCode
     */
    public String getExceptionCode() {
        return exceptionCode;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }

    /**
     * @param exceptionMsg the exceptionMsg to set
     */
    public void setExceptionMsg(String exceptionMsg) {
        this.exceptionMsg = exceptionMsg;
    }

    /**
     * @param exceptionCode the exceptionCode to set
     */
    public void setExceptionCode(String exceptionCode) {
        this.exceptionCode = exceptionCode;
    }

}
