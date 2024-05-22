package com.example.mttext01.dao;

import com.example.mttext01.pojo.Product;

import java.util.List;

public interface ProductDao {

    public List findSideBar(String value)throws Exception ;
    public List findProduct(String value)throws Exception ;
    public List findCategory(int value)throws Exception ;
}
