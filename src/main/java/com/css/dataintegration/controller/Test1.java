package com.css.dataintegration.controller;

import java.util.List;

public class Test1 {

}
class Department{
   private String departmentId;
   private String departmentName;
   private List<Employee> employeeList;

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    public void setEmployeeList(List<Employee> employeeList) {
        this.employeeList = employeeList;
    }
}
class Position{
    private  String positionId;
    private  String positionName;

    public String getPositionId() {
        return positionId;
    }

    public void setPositionId(String positionId) {
        this.positionId = positionId;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }
}
class Employee{
    private String name ;
    private String id;
    private byte age;
    private String sex;
    private Department department;
    private Position position;

    public void setAge(byte age) {
        if(age>18 && age <65){
            this.age=age;
        } else {
            this.age=18;
        }
    }

    public void setSex(String sex) {
        switch (sex){
            case "女":this.sex="女" ;break;
            default:this.sex="男" ;break;
        }

    }
    public String toString(){
        return  this.id+this.name+this.sex+this.age+this.department.getDepartmentName()+this.position.getPositionName();
    }
}
