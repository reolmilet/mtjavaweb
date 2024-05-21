package com.example.mttext01.service;

import com.example.mttext01.dao.ProductDao;
import com.example.mttext01.dao.ProductDaoImpl;
import com.example.mttext01.db.DBConnection;
import com.example.mttext01.pojo.Product;

import java.util.ArrayList;
import java.util.List;


public class ProductDaoService implements ProductDao {
	private DBConnection dbconn = null; // 定义数据库连接类
	private ProductDao dao = null; // 声明DAO对象
	// 在构造方法中实例化数据库连接，同时实例化dao对象
	public ProductDaoService() throws Exception {
		//System.out.println("建立了一个ProductDaoService对象");

		this.dbconn = new DBConnection();

		this.dao = new ProductDaoImpl(this.dbconn.getConnection());// 实例化ProductDao的实现类
	}


	@Override
	public List findSideBar(String value) throws Exception {
		List<String> results = new ArrayList<String>();
		try {
			results = this.dao.findSideBar(value);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return results;
	}


}
