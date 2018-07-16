package com.css.dataintegration.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {
    public static void main(String[] args) throws ParseException {

        Date date = new Date();
        SimpleDateFormat simpleDateFormatOutputGmtdate = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormatInputGmtdate = new SimpleDateFormat("yyyyMMdd");
        //String datetime = simpleDateFormat.format(date);
        String gmtdate="2018-01-01";
        //Date date1=simpleDateFormat2.parse(datetime1);
        //System.out.println();
        String strDate="2005年04月22日";
        //注意：SimpleDateFormat构造函数的样式与strDate的样式必须相符

        SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //加上时间
        //必须捕获异常
        try {
            //Date date1=simpleDateFormatInputGmtdate.parse(datetime1);
           // String bizdate=simpleDateFormat.format(date1);

            String bizdate = simpleDateFormatOutputGmtdate.format(simpleDateFormatOutputGmtdate.parse(gmtdate).getTime()-86400*1000);
            Timestamp timestamp=new Timestamp(simpleDateFormatOutputGmtdate.parse(gmtdate).getTime());
            System.out.println(bizdate);
        } catch(ParseException px) {
            px.printStackTrace();
        }
    }
}
