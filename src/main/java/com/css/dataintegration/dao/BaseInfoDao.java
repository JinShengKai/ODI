package com.css.dataintegration.dao;

import com.css.dataintegration.entity.BaseInfo;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface BaseInfoDao {
    public List<BaseInfo> findAllBaseMessage(@Param(value="gmtDate")Timestamp gmtDate);
}
