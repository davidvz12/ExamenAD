/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webservices;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import conexion.*;
/**
 *
 * @author david
 */
@WebService(serviceName = "WS_ValidarUser")
public class WS_ValidarUser {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Loguearse")
    public Usuarios Loguearse(@WebParam(name = "usuario") String usuario, @WebParam(name = "clave") String clave) {
        //TODO write your implementation code here:
        Usuarios usu = new Usuarios();
        Conexion c = new Conexion();
        usu = c.Loguearse(usuario, clave);
        return usu;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "RegistrarUser")
    public Usuarios RegistrarUser(@WebParam(name = "user") String user, @WebParam(name = "clave") String clave, @WebParam(name = "tipo") String tipo, @WebParam(name = "estado") String estado, @WebParam(name = "correo") String correo, @WebParam(name = "nombre") String nombre) {
        //TODO write your implementation code here:
        return null;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "RegistrarPedido")
    public Pedido RegistrarPedido(@WebParam(name = "id_user") int id_user, @WebParam(name = "estado") String estado, @WebParam(name = "id_product") int id_product, @WebParam(name = "cantidad") int cantidad) {
        //TODO write your implementation code here:
        return null;
    }
}
