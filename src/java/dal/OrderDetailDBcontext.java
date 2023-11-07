/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.Order;
import model.OrderDetail;

/**
 *
 * @author ManhHieuNguyen
 */
public class OrderDetailDBcontext extends DBContext {

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {

            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                    + "           ([order_id]\n"
                    + "           ,[productName]\n"
                    + "           ,[productImage]\n"
                    + "           ,[productPrice]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                stm.setString(2, cart.getProduct().getName());
                stm.setString(3, cart.getProduct().getImageUrl());
                stm.setDouble(4, cart.getProduct().getPrice());
                stm.setDouble(5, cart.getQuantity());
                stm.executeUpdate();
            }

        } catch (Exception ex) {
            Logger.getLogger(OrderDetailDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<OrderDetail> getAllOrderDetailById(int id) {
        List<OrderDetail> OrderDetails = new ArrayList<>();
        try {
            String sql = "SELECT * FROM OrderDetail Where order_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                OrderDetail order = new OrderDetail();
                order.setId(rs.getInt(1));
                order.setOrderId(rs.getInt(2));
                order.setProductName(rs.getString(3));
                order.setProductImage(rs.getString(4));
                order.setProductPrice(rs.getDouble(5));
                order.setQuantity(rs.getInt(6));

                OrderDetails.add(order);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return OrderDetails;
    }

    public void delete(int id) {

        try {

            String sql = "DELETE FROM [OrderDetail]\n"
                    + "      WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDetailDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        OrderDetailDBcontext a = new OrderDetailDBcontext();
        a.delete(19);
    }
}
