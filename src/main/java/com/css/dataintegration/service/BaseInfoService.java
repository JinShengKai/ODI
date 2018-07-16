package com.css.dataintegration.service;

import com.css.dataintegration.entity.BaseInfo;

import java.sql.Timestamp;
import java.util.List;

public interface BaseInfoService {
    public List<BaseInfo> findAllBaseMessage(Timestamp gmtDate);
}
