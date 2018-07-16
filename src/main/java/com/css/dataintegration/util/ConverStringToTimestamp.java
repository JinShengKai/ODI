package com.css.dataintegration.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ConverStringToTimestamp {
    public static Timestamp convert(String gmtdate) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Date date = new Date();
        SimpleDateFormat simpleDateFormatOutputGmtdate = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormatInputGmtdate = new SimpleDateFormat("yyyyMMdd");
        try {
            //如果gmtdate为空，时间将取当前时间
            if (gmtdate == null || gmtdate.equals("") || gmtdate.length() == 0) {
                gmtdate = simpleDateFormatOutputGmtdate.format(date);
                timestamp = new Timestamp(simpleDateFormatOutputGmtdate.parse(gmtdate).getTime());
            } else {
                date = simpleDateFormatInputGmtdate.parse(gmtdate);
                gmtdate = simpleDateFormatOutputGmtdate.format(date);
                timestamp = new Timestamp(simpleDateFormatOutputGmtdate.parse(gmtdate).getTime());
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return timestamp;
    }
}
