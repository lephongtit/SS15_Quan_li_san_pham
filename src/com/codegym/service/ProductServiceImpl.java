package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer , Product>products;
    static {
        products=new HashMap<>();
        products.put(1,new Product(1,"Audi",90000,"Ôto","audi.jpg"));
        products.put(2,new Product(2,"SH",5000,"Xe máy","sh.jpg"));
        products.put(3,new Product(3,"Dell 7567",1000,"Laptop","laptop.jpg"));
        products.put(4,new Product(4,"Home Stay",10000000,"Nhà","nha.jpg"));
        products.put(5,new Product(5,"Ngọc Trinh",999999,"Người mẫu","trinh.jpg"));

    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> searchByName(String name) {


        List<Product> list = findAll();
//        for (int i =0; i<list.size(); i++){
//            if (list.get(i).getName().contains(name)){
//                return list.get(i);
//            }
//        }
        String isLowerName = name.toLowerCase().trim();
        List<Product> responseProducts = new ArrayList<>();
        for (Product product : list ){
            String isLoweProduct = product.getName().toLowerCase().trim();
            if(isLoweProduct.contains(isLowerName)) responseProducts.add(product);
        }
        return responseProducts;
    }
}
