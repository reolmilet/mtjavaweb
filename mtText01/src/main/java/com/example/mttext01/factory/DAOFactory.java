package com.example.mttext01.factory;

import com.example.mttext01.dao.ProductDao;
import com.example.mttext01.service.ProductDaoService;

public class DAOFactory {
    public static ProductDao getIEmpDAOInstance()throws Exception {
        //System.out.println("建立了一个ProductDaoFactory对象");
        return new ProductDaoService();//取得业务操作类
    }
}
