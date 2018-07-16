package com.css.dataintegration.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;
import java.util.Date;

public class BaseInfo {
    private String project;
    private String name;
    private Timestamp bizDate;
    private String appId;
    private String taskCount;
    private String statusNotRunning;
    private String statusWaiting;
    private String statusWaitingResource;
    private String statusRunning;
    private String statusFailed;
    private String statusSucceed;
    private Timestamp taskBegin;
    private Timestamp taskFinished;
    private Timestamp taskWorkingTime;

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @JsonFormat(pattern = "yyyyMMdd", timezone = "GMT+8")
    public Timestamp getBizDate() {
        return bizDate;
    }

    public void setBizDate(Timestamp bizDate) {
        this.bizDate = bizDate;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getTaskCount() {
        return taskCount;
    }

    public void setTaskCount(String taskCount) {
        this.taskCount = taskCount;
    }

    public String getStatusNotRunning() {
        return statusNotRunning;
    }

    public void setStatusNotRunning(String statusNotRunning) {
        this.statusNotRunning = statusNotRunning;
    }

    public String getStatusWaiting() {
        return statusWaiting;
    }

    public void setStatusWaiting(String statusWaiting) {
        this.statusWaiting = statusWaiting;
    }

    public String getStatusWaitingResource() {
        return statusWaitingResource;
    }

    public void setStatusWaitingResource(String statusWaitingResource) {
        this.statusWaitingResource = statusWaitingResource;
    }

    public String getStatusRunning() {
        return statusRunning;
    }

    public void setStatusRunning(String statusRunning) {
        this.statusRunning = statusRunning;
    }

    public String getStatusFailed() {
        return statusFailed;
    }

    public void setStatusFailed(String statusFailed) {
        this.statusFailed = statusFailed;
    }

    public String getStatusSucceed() {
        return statusSucceed;
    }

    public void setStatusSucceed(String statusSucceed) {
        this.statusSucceed = statusSucceed;
    }
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Timestamp getTaskBegin() {
        return taskBegin;
    }

    public void setTaskBegin(Timestamp taskBegin) {
        this.taskBegin = taskBegin;
    }
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Timestamp getTaskFinished() {
        return taskFinished;
    }

    public void setTaskFinished(Timestamp taskFinished) {
        this.taskFinished = taskFinished;
    }
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Timestamp getTaskWorkingTime() {
        return taskWorkingTime;
    }

    public void setTaskWorkingTime(Timestamp taskWorkingTime) {
        this.taskWorkingTime = taskWorkingTime;
    }
}
