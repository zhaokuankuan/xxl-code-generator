package com.xxl.codegenerator.admin.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @author :Mr.kk
 * @date: 2018/8/16-18:07
 */
public class ReturnModel implements Serializable{
        public static final long serialVersionUID = 1L;
        private Map<String, Object> result = new HashMap();
        private int code;
        private String msg;
        private Object data;
        private boolean success;

        public ReturnModel(int code, String msg) {
            this.code = code;
            this.msg = msg;
        }
        public ReturnModel() {
            this.success = false;
        }

        public void setSuccess(boolean success) {
            this.success = success;
        }

        public boolean isSuccess() {
            return success;
        }

        public Object addDefaultModel(String key, Object obj) {
            return this.result.put(key, obj);
        }
        public Map<String, Object> getMap() {
            return this.result;
        }
        public int getCode() {
            return code;
        }
        public void setCode(int code) {
            this.code = code;
        }
        public String getMsg() {
            return msg;
        }
        public void setMsg(String msg) {
            this.msg = msg;
        }
        public Object getData() {
            return data;
        }
        public void setData(Object data) {
            this.data = data;
        }

}
