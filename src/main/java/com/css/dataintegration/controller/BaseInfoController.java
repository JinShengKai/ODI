package com.css.dataintegration.controller;

import com.css.dataintegration.entity.BaseInfo;
import com.css.dataintegration.service.BaseInfoService;
import com.css.dataintegration.util.ConverStringToTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/baseinfo")
public class BaseInfoController extends BasicController {

    @RequestMapping(value = "task_Info")
    public String findAllBaseMessage(ModelMap model, HttpServletRequest request) throws ParseException {

       // System.out.println(timestamp);

        List<BaseInfo> baseInfoList = baseInfoService.findAllBaseMessage(ConverStringToTimestamp.getTodayTimestamp());
        model.addAttribute("baseInfoList", baseInfoList);
        return "baseinfo";
    }
    @RequestMapping(value = "gmt_Info")
    public String findProjectBaseMessage(ModelMap model, HttpServletRequest request) {
        String gmtdate = null;
        if(request.getParameter("gmtdate").replaceAll("[^0-9]]","") != null){
            gmtdate=request.getParameter("gmtdate").replaceAll("[^0-9]", "");
        }

        Timestamp timestamp = ConverStringToTimestamp.convert(gmtdate);



        // System.out.println(timestamp);

        List<BaseInfo> baseInfoList = baseInfoService.findAllBaseMessage(timestamp);
        model.addAttribute("baseInfoList", baseInfoList);
        return "baseinfo";
    }
}
