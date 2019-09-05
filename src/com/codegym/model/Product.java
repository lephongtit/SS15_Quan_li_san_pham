package com.codegym.model;

public class Product {
    private int id;
    private String name;
    private float price;
    private String kind;
    private String avatar;

    public Product(){};

    public Product(int id, String name, float price, String kind, String avatar) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.kind = kind;
        this.avatar = avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}


