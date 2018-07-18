package com.css.dataintegration.service.imp;

import com.css.dataintegration.dao.BaseInfoDao;
import com.css.dataintegration.entity.BaseInfo;
import com.css.dataintegration.service.BaseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

@Service("BaseInfoService")
public class BaseInfoServiceImp implements BaseInfoService{
    @Autowired
    private BaseInfoDao baseInfoDao;

    @Override
    public List<BaseInfo> findAllBaseMessage(Timestamp gmtDate){
        //System.out.println("find all "+gmtDate);
        List<BaseInfo> baseInfoList =convertMessage(baseInfoDao.findAllBaseMessage(gmtDate));

        return baseInfoList;
    }
    //转换信息
    public List<BaseInfo> convertMessage(List<BaseInfo> baseInfoList){

        List<BaseInfo> baseInfoArrayList = new ArrayList<BaseInfo>();
        try {
            String path = BaseInfoServiceImp.class.getClassLoader().getResource("project.properties").getPath();
            Properties properties = new Properties();
            //System.out.println(path);
            InputStream in = new FileInputStream(path);
            properties.load(new InputStreamReader(in, "UTF-8"));
            for(BaseInfo baseInfo : baseInfoList){
                String projectEN = baseInfo.getName().toUpperCase();
                String projectCN = properties.getProperty(projectEN);
                baseInfo.setProject(projectCN);
                if (projectCN == null||projectCN.isEmpty()||projectCN.length()<=0){
                    continue;
                } else {
                    baseInfoArrayList.add(baseInfo);
                }


            }

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return baseInfoList;
    }


}
