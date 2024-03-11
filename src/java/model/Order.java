/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Order {
    private int id;
    private float ammount;
    private int accountId;
    private Date createTime;
    List<OrderDetail> listOrderDetail = new ArrayList<>();
    public Order() {
    }

    public Order(int id, float ammount, int accountId, Date createTime) {
        this.id = id;
        this.ammount = ammount;
        this.accountId = accountId;
        this.createTime = createTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getAmmount() {
        return ammount;
    }

    public void setAmmount(float ammount) {
        this.ammount = ammount;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public List<OrderDetail> getListOrderDetail() {
        return listOrderDetail;
    }

    public void setListOrderDetail(List<OrderDetail> listOrderDetail) {
        this.listOrderDetail = listOrderDetail;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", ammount=" + ammount + ", accountId=" + accountId + ", createTime=" + createTime + ", listOrderDetail=" + listOrderDetail + '}';
    }
    
}
