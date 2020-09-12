/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.modelo.Carrito;
import java.util.List;

/**
 *
 * @author User
 */
public class Compra {
    private int id;
    private int idCliente;
    private int idPago;
    private String fecha;
    private Double monto;
    private String estado;
    private List<Carrito>detalleCmpras;

    public Compra() {
    }

    public Compra( int idCliente, int idPago, String fecha, Double monto, String estado, List<Carrito> detalleCmpras) {

        this.idCliente = idCliente;
        this.idPago = idPago;
        this.fecha = fecha;
        this.monto = monto;
        this.estado = estado;
        this.detalleCmpras = detalleCmpras;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public List<Carrito> getDetalleCmpras() {
        return detalleCmpras;
    }

    public void setDetalleCmpras(List<Carrito> detalleCmpras) {
        this.detalleCmpras = detalleCmpras;
    }

    
}
