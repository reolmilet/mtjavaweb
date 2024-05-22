package com.example.mttext01;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        String json = " {\n" +
                "    \"total\": 17,\n" +
                "    \"list\": [ {\n" +
                "            \"tags\": [\n" +
                "                \"限时秒杀\",\n" +
                "                \"包邮\"\n" +
                "            ],\n" +
                "            \"images\": [\n" +
                "                \"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/菲律宾香蕉3金装.jpg\"\n" +
                "            ],\n" +
                "            \"unit\": \"g\",\n" +
                "            \"inventory\": 100,\n" +
                "            \"updateTime\": \"2020-08-17T07:35:22.673Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 10010,\n" +
                "            \"_id\": \"5f3a469a29af515bdf7a980e\",\n" +
                "            \"id\": 20,\n" +
                "            \"title\": \"菲律宾香蕉3斤装\",\n" +
                "            \"price\": 35,\n" +
                "            \"price_off\": 29.9,\n" +
                "            \"desc\": \"香甜美味 一口甜到心里\",\n" +
                "            \"category\": 2,\n" +
                "            \"c_item\": \"香蕉葡萄\",\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        },\n" +
                "        {\n" +
                "            \"tags\": [\n" +
                "                \"限时秒杀\",\n" +
                "                \"包邮\"\n" +
                "            ],\n" +
                "            \"images\": [\n" +
                "                \"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/葡萄.jpg\"\n" +
                "            ],\n" +
                "            \"unit\": \"g\",\n" +
                "            \"inventory\": 100,\n" +
                "            \"updateTime\": \"2020-08-17T07:35:22.673Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 10010,\n" +
                "            \"_id\": \"5f3a469a29af515bdf7a980f\",\n" +
                "            \"id\": 10024,\n" +
                "            \"title\": \"【产地直发】茉莉香无籽红提3斤装\",\n" +
                "            \"price\": 59.9,\n" +
                "            \"price_off\": 49.9,\n" +
                "            \"desc\": \"口感好 营养高\",\n" +
                "            \"category\": 2,\n" +
                "            \"c_item\": \"香蕉葡萄\",\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        },\n" +
                "        {\n" +
                "            \"tags\": [\n" +
                "                \"限时秒杀\",\n" +
                "                \"包邮\"\n" +
                "            ],\n" +
                "            \"images\": [\n" +
                "                \"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/买4送1山东青岛蓝莓.jpg\"\n" +
                "            ],\n" +
                "            \"unit\": \"g\",\n" +
                "            \"inventory\": 100,\n" +
                "            \"updateTime\": \"2020-08-17T07:35:22.673Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 10010,\n" +
                "            \"_id\": \"5f3a469a29af515bdf7a9810\",\n" +
                "            \"id\": 18,\n" +
                "            \"title\": \"【买4送1】山东青岛蓝莓大个滴 好吃\",\n" +
                "            \"price\": 69.9,\n" +
                "            \"price_off\": 49.9,\n" +
                "            \"desc\": \"源自青岛 酸甜可口\",\n" +
                "            \"category\": 2,\n" +
                "            \"c_item\": \"草莓蓝莓\",\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        },\n" +
                "        {\n" +
                "            \"tags\": [\n" +
                "                \"24小时发货\",\n" +
                "                \"包邮\"\n" +
                "            ],\n" +
                "            \"images\": [\n" +
                "                \"https://duyi-bucket.oss-cn-beijing.aliyuncs.com/img/草莓.jpg\"\n" +
                "            ],\n" +
                "            \"unit\": \"g\",\n" +
                "            \"inventory\": 100,\n" +
                "            \"updateTime\": \"2020-08-17T07:35:22.673Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 10000,\n" +
                "            \"_id\": \"5f3a469a29af515bdf7a9811\",\n" +
                "            \"id\": 5,\n" +
                "            \"title\": \"3斤丹东99红颜草莓单果20g+\",\n" +
                "            \"price\": 99,\n" +
                "            \"price_off\": 59.9,\n" +
                "            \"desc\": \"咬一口香甜爆浆 大盒装全家共享\",\n" +
                "            \"category\": 2,\n" +
                "            \"c_item\": \"草莓蓝莓\",\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        },\n" +
                "        {\n" +
                "            \"tags\": [\n" +
                "                \"包邮，最晚次日达\"\n" +
                "            ],\n" +
                "            \"images\": [\n" +
                "                \"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/IMG_03791604311783636.jpg\"\n" +
                "            ],\n" +
                "            \"unit\": \"个\",\n" +
                "            \"inventory\": 11,\n" +
                "            \"updateTime\": \"2020-08-17T07:35:22.673Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 0,\n" +
                "            \"_id\": \"5f9fdaeb29af515bdf7a9982\",\n" +
                "            \"id\": 69,\n" +
                "            \"title\": \"测试\",\n" +
                "            \"category\": 2,\n" +
                "            \"c_item\": \"苹果\",\n" +
                "            \"price_off\": 9.9,\n" +
                "            \"price\": 19.9,\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        },\n" +
                "        {\n" +
                "            \"tags\": [\n" +
                "                \"包邮，最晚次日达\",\n" +
                "                \"好吃八佰伴\"\n" +
                "            ],\n" +
                "            \"images\": [\n" +
                "                \"http://duyi-bucket.oss-cn-beijing.aliyuncs.com/mall-admin/images/%E7%8C%AA1622444185004.jpg\"\n" +
                "            ],\n" +
                "            \"unit\": \"个\",\n" +
                "            \"inventory\": 30,\n" +
                "            \"updateTime\": \"2021-05-28T06:59:09.048Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 0,\n" +
                "            \"_id\": \"60b4889bf378034fba152856\",\n" +
                "            \"id\": 75,\n" +
                "            \"title\": \"菠萝12312123\",\n" +
                "            \"desc\": \"香甜美味\",\n" +
                "            \"category\": 2,\n" +
                "            \"price_off\": 9,\n" +
                "            \"price\": 10,\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        },\n" +
                "        {\n" +
                "            \"tags\": [\n" +
                "                \"包邮，最晚次日达\"\n" +
                "            ],\n" +
                "            \"images\": [],\n" +
                "            \"unit\": \"123\",\n" +
                "            \"inventory\": 213,\n" +
                "            \"updateTime\": \"2021-07-14T03:25:06.728Z\",\n" +
                "            \"status\": 1,\n" +
                "            \"sale\": 0,\n" +
                "            \"_id\": \"625f9961018b0a503a3cd62f\",\n" +
                "            \"id\": 78,\n" +
                "            \"title\": \"1\",\n" +
                "            \"desc\": \"\",\n" +
                "            \"category\": 2,\n" +
                "            \"c_item\": \"香梨\",\n" +
                "            \"price_off\": 0,\n" +
                "            \"price\": 1,\n" +
                "            \"appkey\": \"dd_1597654682810\",\n" +
                "            \"__v\": 0\n" +
                "        }\n" +
                "    ]\n" +
                "}"; // Replace with your JSON string

        Gson gson = new Gson();
        Type type = new TypeToken<Map<String, Object>>(){}.getType();
        Map<String, Object> data = gson.fromJson(json, type);

        List<Map<String, Object>> list = (List<Map<String, Object>>) data.get("list");

        for (Map<String, Object> item : list) {
            String sql = "INSERT INTO products (id, title, price, price_off, `desc`, category, c_item, tags, images, unit, inventory, updateTime, status, sale, _id, appkey, __v, nowinventory) VALUES ("
                    + item.get("id") + ", "
                    + "'" + item.get("title") + "', "
                    + item.get("price") + ", "
                    + item.get("price_off") + ", "
                    + "'" + item.get("desc") + "', "
                    + item.get("category") + ", "
                    + "'" + item.get("c_item") + "', "
                    + "'" + gson.toJson(item.get("tags")) + "', "
                    + "'" + gson.toJson(item.get("images")) + "', "
                    + "'" + item.get("unit") + "', "
                    + item.get("inventory") + ", "
                    + "'" + "2022-01-10" + "', "
                    + item.get("status") + ", "
                    + 0 + ", "
                    + "'" + item.get("_id") + "', "
                    + "'" + item.get("appkey") + "', "
                    + item.get("__v") + ", "
                    + 100
                    + ");";
            System.out.println(sql);
        }
    }
}