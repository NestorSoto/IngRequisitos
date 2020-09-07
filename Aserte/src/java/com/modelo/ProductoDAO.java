/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

import com.config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class ProductoDAO {

    public Producto listarId2(int id) {
        String as = "SELECT idProducto,Nombres,Foto,Descripcion,Precio,Stock FROM producto WHERE idProducto = '" + id + "'";
        String sql = "select * from producto where idProducto ";
        String cons = "SELECT * FROM producto WHERE idProducto=?";
        Producto p = new Producto();
        try {
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;

            con = cn.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt(1));
            }
            p.setNombres(rs.getString(2));
            p.setFoto(rs.getString(3));
            p.setDescripcion(rs.getString(4));
            p.setPrecio(rs.getDouble(5));
            p.setStock(rs.getInt(6));

        } catch (Exception e) {

        }
        return p;
    }

    public Producto listarId(int id) {
        String as = "SELECT idProducto,Nombres,Foto,Descripcion,Precio,Stock FROM producto WHERE idProducto = '" + id + "'";
        String sql = "select * from producto where idProducto ";
        String cons = "SELECT * FROM producto WHERE idProducto=?";
        Producto p = new Producto();
        try {
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;

            con = cn.getConection();

            ps = con.prepareStatement(cons);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
            }

        } catch (Exception e) {

        }
        return p;
    }

    public List listar() {
        List<Producto> productos = new ArrayList();

        String sql = "select * from producto";
        try {
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                productos.add(p);
            }
        } catch (Exception e) {

        }
        return productos;
    }

    public void listarImg(int id, HttpServletResponse response) {
        String as = "SELECT idProducto FROM producto WHERE idProducto = '" + id + "'";
        String sql = "select * from producto where idProducto" + id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;

        try {
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
            outputStream = response.getOutputStream();
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("Foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {

        }
    }
}
