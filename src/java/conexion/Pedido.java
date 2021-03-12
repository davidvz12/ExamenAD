/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

/**
 *
 * @author david
 */
public class Pedido {
    
    int id_pedido,id_user,id_produc,cantidad;
    String estado;

    public Pedido(int id_pedido, int id_user, int id_produc, int cantidad, String estado) {
        this.id_pedido = id_pedido;
        this.id_user = id_user;
        this.id_produc = id_produc;
        this.cantidad = cantidad;
        this.estado = estado;
    }

    public Pedido() {
    
    }
    
    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getId_produc() {
        return id_produc;
    }

    public void setId_produc(int id_produc) {
        this.id_produc = id_produc;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
}
