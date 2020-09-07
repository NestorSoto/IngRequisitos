/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import com.config.Conexion;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.digest.DigestUtils;
import view.Usuario;

/**
 *
 * @author User
 */
public class UsuarioCad {

    public static String nombreUsuario = "";

    public static boolean Registrar(Usuario user) {
        if (!usuarioExiste(user.getUsuario(),user.getPassword())) {
            String sql="INSERT INTO `usuarios`(`NombreEmpresa`, `correo`, `usuario`, `password`, `direccion`,`RUC`,`Rubro`,`Nivel`) VALUES (?,?,?,?,?,?,?,?)";
            
            try{
                String encriptMD5 = DigestUtils.md5Hex(user.getPassword());
                Connection con;
                Conexion cn =new Conexion();
                PreparedStatement ps;
                ResultSet rs;
                con=cn.getConection();
                ps=con.prepareStatement(sql);
                ps.setString(1,user.getNombreEmpresa());
                ps.setString(2, user.getCorreo());
                ps.setString(3, user.getUsuario());
                ps.setString(4, encriptMD5);
                ps.setString(5, user.getDireccion());
                ps.setInt(6, user.getRUC());
                ps.setString(7, user.getRubro());
                ps.setInt(8, 1);
                ps.executeUpdate();
                nombreUsuario=user.getUsuario();
                return true;
                
            }catch(Exception e){
                
            }
        }
        return false;
    }

    public static boolean usuarioExiste(String nombre, String contra) {
        String sql = "SELECT usuario FROM usuarios WHERE usuario = '" + nombre + "' AND password = '" + DigestUtils.md5Hex(contra) + "'";
        try {
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;

            con = cn.getConection();
            ps = con.prepareStatement(sql);
            rs=ps.executeQuery();
            

            return rs.next();

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioCad.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static boolean logear(String nombre,String contra){
        if(usuarioExiste(nombre,contra)){
            
        }
        
        return false;
    }
    public static Usuario obtenerUsuario(String nombre){
        String cons = "SELECT * FROM usuarios WHERE usuario=?";
        Usuario p = new Usuario();
        try {
            Connection con;
            Conexion cn = new Conexion();
            PreparedStatement ps;
            ResultSet rs;

            con = cn.getConection();

            ps = con.prepareStatement(cons);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            if (rs.next()) {
                p.setIdusiario(rs.getInt(1));
                p.setNombreEmpresa(rs.getString(2));
                p.setCorreo(rs.getString(3));
                p.setUsuario(rs.getString(4));
                p.setPassword(rs.getString(5));
                p.setDireccion(rs.getString(6));
                p.setRUC(rs.getInt(7));
                p.setRubro(rs.getString(8));
                p.setNivel(rs.getInt(9));
            }

        } catch (Exception e) {

        }
        return p;
    }
}

