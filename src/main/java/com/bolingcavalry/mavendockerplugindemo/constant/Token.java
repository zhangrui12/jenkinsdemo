package com.bolingcavalry.mavendockerplugindemo.constant;

/**
 * @author liaohua1
 * @date 2020/4/7 19:30
 */
public enum Token {
    /**
     * 成功
     */
    SUCCESS,

    /**
     * 失败
     */
    FAILED;

    public boolean isSuccess(){
        return this.equals(SUCCESS);
    }
    public boolean isFailed(){
        return this.equals(FAILED);
    }

}
