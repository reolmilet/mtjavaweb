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



    @Override
    public List findSideBar(String value)throws Exception {

        String sql = "select name from sidebar where value=?";


        this.pstmt = this.conn.prepareStatement(sql);// 实例化PrepareStatement对象

List<String> results = new ArrayList<String>();
        this.pstmt.setString(1, value);
        ResultSet rs = this.pstmt.executeQuery();
        while (rs.next()) {
            results.add(rs.getString("name"));


        }

        this.pstmt.close(); // 关闭PreparedStatement操作
        return results;
    }

   @Override
public List findProduct(String value) throws Exception {
    String sql = "SELECT id, title, price, price_off, `desc`, category, c_item, tags, images, unit, inventory, updateTime, status, sale, _id, appkey, __v,nowinventory FROM products WHERE c_item = ?";

    this.pstmt = this.conn.prepareStatement(sql);

    List<Product> results = new ArrayList<>();
    this.pstmt.setString(1, value);
    ResultSet rs = this.pstmt.executeQuery();
    while (rs.next()) {
        Product product = new Product();
        product.setId(rs.getInt("id"));
        product.setTitle(rs.getString("title"));
        product.setPrice(rs.getDouble("price"));
        product.setPrice_off(rs.getDouble("price_off"));
        product.setDesc(rs.getString("desc"));
        product.setCategory(rs.getInt("category"));
        product.setC_item(rs.getString("c_item"));
        product.setTags(rs.getString("tags"));
        product.setImages(rs.getString("images"));
        product.setUnit(rs.getString("unit"));
        product.setInventory(rs.getInt("inventory"));
        product.setUpdateTime(rs.getString("updateTime"));
        product.setStatus(rs.getInt("status"));
        product.setSale(rs.getInt("sale"));
        product.set_id(rs.getString("_id"));
        product.setAppkey(rs.getString("appkey"));
        product.set__v(rs.getInt("__v"));
        product.setNowinventory(rs.getInt("nowinventory"));
        results.add(product);
    }

    this.pstmt.close();
    return results;
}

    @Override
    public List findCategory(int value) throws Exception {

            String sql = "SELECT id, title, price, price_off, `desc`, category, c_item, tags, images, unit, inventory, updateTime, status, sale, _id, appkey, __v,nowinventory FROM products WHERE category = ?";

            this.pstmt = this.conn.prepareStatement(sql);

            List<Product> results = new ArrayList<>();
            this.pstmt.setInt(1, value);
            ResultSet rs = this.pstmt.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getDouble("price"));
                product.setPrice_off(rs.getDouble("price_off"));
                product.setDesc(rs.getString("desc"));
                product.setCategory(rs.getInt("category"));
                product.setC_item(rs.getString("c_item"));
                product.setTags(rs.getString("tags"));
                product.setImages(rs.getString("images"));
                product.setUnit(rs.getString("unit"));
                product.setInventory(rs.getInt("inventory"));
                product.setUpdateTime(rs.getString("updateTime"));
                product.setStatus(rs.getInt("status"));
                product.setSale(rs.getInt("sale"));
                product.set_id(rs.getString("_id"));
                product.setAppkey(rs.getString("appkey"));
                product.set__v(rs.getInt("__v"));
                product.setNowinventory(rs.getInt("nowinventory"));
                results.add(product);
            }

            this.pstmt.close();
            return results;
        }
    }


