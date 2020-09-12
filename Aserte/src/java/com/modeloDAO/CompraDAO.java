/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modeloDAO;

import static cad.UsuarioCad.nombreUsuario;
import com.config.Conexion;
import com.modelo.Carrito;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import view.Compra;

/**
 *
 * @author User
 */
public class CompraDAO {
    int r=0;

    public CompraDAO() {
    }
    
    public int GenerarCompra(Compra compra){
        int idCompras;
        String sql="INSERT INTO `compras`(`idCliente`, `idPago`, `FechaCompras`, `Monto`, `Estado`) VALUES (?,?,?,?,?)";
            
            try{

                Connection con;
                Conexion cn =new Conexion();
                PreparedStatement ps;
                ResultSet rs;
                con=cn.getConection();
                ps=con.prepareStatement(sql);
                ps.setInt(1, compra.getIdCliente());
                ps.setInt(2, compra.getIdPago());
                ps.setString(3,compra.getFecha());
                ps.setDouble(4, compra.getMonto());
                ps.setString(5, compra.getEstado());
                r=ps.executeUpdate();
                sql="Select @@IDENTITY AS idCompras";
                rs=ps.executeQuery(sql);
                rs.next();
                idCompras=rs.getInt("idCompras");
                rs.close();
                for (Carrito detalle : compra.getDetalleCmpras()) {
                    sql="INSERT INTO `detalle_compras`(`idProducto`, `idCompras`, `cantidad`, `PrecioCompra`) VALUES (?,?,?,?)";
                    ps=con.prepareStatement(sql);
                    ps.setInt(1, detalle.getIdProducto());
                    ps.setInt(2,idCompras);
                    ps.setInt(3, detalle.getCantidad());
                    ps.setDouble(4, detalle.getPrecioCompra());
                    r=ps.executeUpdate();
                    
                }
                
                
            }catch(Exception e){
                
            }
        return r;
    }
    
}
