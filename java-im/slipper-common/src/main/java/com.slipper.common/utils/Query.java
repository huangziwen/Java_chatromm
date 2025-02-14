package com.slipper.common.utils;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.Map;

/**
 * 分页参数处理工具类
 *
 * @author chen
 * @email 123456@qq.com
 * @date 2023-08-30 00:00:00
 * @param <T>
 */
public class Query<T> {

    public Page<T> getPage(Map<String, Object> params) {
        long current = 1;
        long size = 10;

        if (params.get(Constant.Page.CURRENT.getValue()) != null) {
            current = Long.parseLong((String) params.get(Constant.Page.CURRENT.getValue()));
        }
        if (params.get(Constant.Page.SIZE.getValue()) != null) {
            size = Long.parseLong((String) params.get(Constant.Page.SIZE.getValue()));
        }

        Page<T> page = new Page<>(current, size);
        return page;
    }
}
