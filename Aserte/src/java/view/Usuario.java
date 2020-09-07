/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

/**
 *
 * @author User
 */
public class Usuario {
    private int idusiario;
    private String NombreEmpresa;
    private String correo;
    private String usuario;
    private String password;
    private String direccion;
    private int RUC;
    private String Rubro;
    private int nivel;

    public Usuario() {
    }

    public Usuario(int idusiario, String NombreEmpresa, String correo, String usuario, String password, String direccion, int RUC, String Rubro, int nivel) {
        this.idusiario = idusiario;
        this.NombreEmpresa = NombreEmpresa;
        this.correo = correo;
        this.usuario = usuario;
        this.password = password;
        this.direccion = direccion;
        this.RUC = RUC;
        this.Rubro = Rubro;
        this.nivel = nivel;
    }

    public Usuario(int idusiario, String correo, String usuario, String password, String direccion, int nivel) {
        this.idusiario = idusiario;
        this.NombreEmpresa="";
        
        this.correo = correo;
        this.usuario = usuario;
        this.password = password;
        this.direccion = direccion;
        this.RUC=0;
        this.Rubro="";
        this.nivel = nivel;
    }

    public int getIdusiario() {
        return idusiario;
    }

    public void setIdusiario(int idusiario) {
        this.idusiario = idusiario;
    }

    public String getNombreEmpresa() {
        return NombreEmpresa;
    }

    public void setNombreEmpresa(String NombreEmpresa) {
        this.NombreEmpresa = NombreEmpresa;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getRUC() {
        return RUC;
    }

    public void setRUC(int RUC) {
        this.RUC = RUC;
    }

    public String getRubro() {
        return Rubro;
    }

    public void setRubro(String Rubro) {
        this.Rubro = Rubro;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }
    
    
}
