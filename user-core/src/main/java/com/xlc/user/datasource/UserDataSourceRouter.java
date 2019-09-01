package com.xlc.user.datasource;

import org.jfaster.mango.partition.DataSourceRouter;

public class UserDataSourceRouter implements DataSourceRouter<Integer> {

    public String getDataSourceName(Integer shardParam, int i) {
        return "dataSource" + (shardParam /100) % 10;
    }
}
