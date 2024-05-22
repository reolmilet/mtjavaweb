package com.example.mttext01.pojo;

import java.io.Serializable;
import java.util.List;

public class Product implements Serializable {

	private static final long serialVersionUID = 1L;
	private String tags;
	private String images;
	private String unit;
	private int inventory;
	private String updateTime;
	private int status;
	private int sale;
	private String _id;
	private int id;
	private String title;
	private double price;
	private Double price_off;
	private String desc;
	private int category;
	private String c_item;
	private String appkey;
	private int __v;
private int nowinventory;
	// getters and setters


	public int getNowinventory() {
		return nowinventory;
	}

	public void setNowinventory(int nowinventory) {
		this.nowinventory = nowinventory;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Double getPrice_off() {
		return price_off;
	}

	public void setPrice_off(Double price_off) {
		this.price_off = price_off;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getC_item() {
		return c_item;
	}

	public void setC_item(String c_item) {
		this.c_item = c_item;
	}

	public String getAppkey() {
		return appkey;
	}

	public void setAppkey(String appkey) {
		this.appkey = appkey;
	}

	public int get__v() {
		return __v;
	}

	public void set__v(int __v) {
		this.__v = __v;
	}

	@Override
	public String toString() {
		return "Product{" +
				"tags='" + tags + '\'' +
				", images='" + images + '\'' +
				", unit='" + unit + '\'' +
				", inventory=" + inventory +
				", updateTime='" + updateTime + '\'' +
				", status=" + status +
				", sale=" + sale +
				", _id='" + _id + '\'' +
				", id=" + id +
				", title='" + title + '\'' +
				", price=" + price +
				", price_off=" + price_off +
				", desc='" + desc + '\'' +
				", category=" + category +
				", c_item='" + c_item + '\'' +
				", appkey='" + appkey + '\'' +
				", __v=" + __v +
				", nowinventory=" + nowinventory +
				'}';
	}

	public Product(String tags, String images, String unit, int inventory, String updateTime, int status, int sale, String _id, int id, String title, double price, Double price_off, String desc, int category, String c_item, String appkey, int __v, int nowinventory) {
		this.tags = tags;
		this.images = images;
		this.unit = unit;
		this.inventory = inventory;
		this.updateTime = updateTime;
		this.status = status;
		this.sale = sale;
		this._id = _id;
		this.id = id;
		this.title = title;
		this.price = price;
		this.price_off = price_off;
		this.desc = desc;
		this.category = category;
		this.c_item = c_item;
		this.appkey = appkey;
		this.__v = __v;
		this.nowinventory = nowinventory;
	}

	public Product() {
	}
}