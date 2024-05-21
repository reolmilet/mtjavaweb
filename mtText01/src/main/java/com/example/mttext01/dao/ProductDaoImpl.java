package com.example.mttext01.dao;

import com.example.mttext01.pojo.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {

    private Connection conn = null; // 数据库连接对象
    private PreparedStatement pstmt = null; // 数据库操作对象


    // 通过构造方法取得数据库连接
    public ProductDaoImpl(Connection conn) {

        this.conn = conn;
    }
//    @Override
//    public List find(String sql, Object... obj) throws Exception {
//        return null;
//    }


    @Override
    public List findSideBar(String value)throws Exception {
        boolean flag = false; // 定义标识
        String sql = "select name from sidebar where value=?";


        this.pstmt = this.conn.prepareStatement(sql);// 实例化PrepareStatement对象

List<String> results = new ArrayList<String>();
        this.pstmt.setString(1, value);
        ResultSet rs = this.pstmt.executeQuery();
        while (rs.next()) {
            results.add(rs.getString("name"));


        }
        System.out.println(results);
        this.pstmt.close(); // 关闭PreparedStatement操作
        return results;
    }

//    @Override
//    public List<Product> findAll(String product_name) throws Exception {
//
//        List<Product> list = new ArrayList<Product>();// 定义集合，接受返回的数据
//
//        String sql = "select sid,student_id,course_id,num from score ";
//
//        if (product_name != null && !"".equals(product_name)) {
//            sql = "select sid,student_id,course_id,num from product where product_name like? ";
//           this.pstmt = this.conn.prepareStatement(sql);
//
//            this.pstmt.setString(1, "%" + product_name + "%");// 设置查询产品名称
//        } else {
//            this.pstmt = this.conn.prepareStatement(sql);// 实例化PreparedStatement
//        }
//        ResultSet rs = this.pstmt.executeQuery();// 执行查询操作
//        Product product = null;
//        while (rs.next()) {
//            product = new Product();// 实例化新的product对象
//            product.setProduct_id(rs.getString(1));
//            product.setProduct_name(rs.getString(2));
//            product.setPrice(rs.getDouble(3));
//            product.setInfo(rs.getString(4));
//            list.add(product); // 向集合中增加product对象
//        }
//
//        this.pstmt.close();
//        System.out.println("111---"+list);
//        return list; // 返回全部结果
//    }
//
//    @Override
//    public Product findByProductId(String product_id) throws Exception {
//        Product product = null;
//        String sql = "select product_id,product_name,price,info from product where product_id=?";
//        this.pstmt = this.conn.prepareStatement(sql);
//        this.pstmt.setString(1, product_id); // 设置产品编号
//        ResultSet rs = this.pstmt.executeQuery();
//        if (rs.next()) {
//            product = new Product();
//            product.setProduct_id(rs.getString(1));
//            product.setProduct_name(rs.getString(2));
//            product.setPrice(rs.getDouble(3));
//            product.setInfo(rs.getString(4));
//        }
//        this.pstmt.close();
//        return product; // 如果查询不到结果则返回null,默认值为null
//    }

}
