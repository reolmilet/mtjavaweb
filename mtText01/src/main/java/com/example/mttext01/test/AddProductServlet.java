package com.example.mttext01.test;

import com.example.mttext01.factory.DAOFactory;
import com.example.mttext01.pojo.Product;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddProductServlet", value = "/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> results = new ArrayList<String>();
    String value = request.getParameter("type");
        try {
            results = DAOFactory.getIEmpDAOInstance().findSideBar(value);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        Gson gson = new Gson();
        String json = gson.toJson(results);

        // Set the response content type to JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Write the JSON to the response
        try (PrintWriter out = response.getWriter()) {
            System.out.println(json);
            out.print(json);
            out.flush();
        }


    }
}
