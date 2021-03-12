<%-- 
    Document   : registrarse.jsp
    Created on : 12-mar-2021, 13:06:43
    Author     : Cristhian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <style>
            html, body {
                height: 100%;
            }
            body {
                display: flex;
                flex-direction: column;
            }
            body { 
                background-color: rgba(50, 115, 220, 0.3);
                background-size: cover;
                overflow-x:hidden;
            }

            #mainNav {
                background-color: darkslategrey;
            }

            #mainNav .navbar-toggler {
                font-size: 12px;
                right: 0;
                padding: 13px;
                text-transform: uppercase;
                color: white;
                border: 0;
                background-color: #fed136;
                font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            }

            #mainNav .navbar-brand {
                color: #fed136;
                font-family: 'Kaushan Script', 'Helvetica Neue', Helvetica, Arial, cursive;
            }


            #mainNav .navbar-nav .nav-item .nav-link {
                font-size: 90%;
                font-weight: 400;
                padding: 0.75em 0;
                letter-spacing: 1px;
                color: white;
                font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            }

            @media (min-width: 992px) {
                #mainNav {
                    padding-top: 25px;
                    padding-bottom: 25px;
                    -webkit-transition: padding-top 0.3s, padding-bottom 0.3s;
                    -moz-transition: padding-top 0.3s, padding-bottom 0.3s;
                    transition: padding-top 0.3s, padding-bottom 0.3s;
                    border: none;
                    background-color: transparent;
                }
                #mainNav .navbar-brand {
                    font-size: 1.75em;
                    -webkit-transition: all 0.3s;
                    -moz-transition: all 0.3s;
                    transition: all 0.3s;
                }
                #mainNav .navbar-nav .nav-item .nav-link {
                    padding: 1.1em 1em;
                }
                #mainNav.navbar-shrink {
                    padding-top: 0;
                    padding-bottom: 0;
                    background-color: darkslategrey;
                }
                #mainNav.navbar-shrink .navbar-brand {
                    font-size: 1.25em;
                    padding: 12px 0;
                }
            }

            #login{
                border-radius:25px;
                padding: 0.8em 1em !important;
                margin-top:0.3em;
            }

            .content{
                margin-top:20%;
                margin-bottom: 5%;
            }


            .btn-primary:hover {
                box-shadow: 0 6px 10px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19) !important;
            }

            .btn-primary:active,
            .btn-primary:visited,
            .btn-primary:focus {
                box-shadow:none;
            }

            .content {
                flex: 1 0 auto;
            }
            .footer {
                flex-shrink: 0;
            }

            @media (min-width: 400px) {
                .content{
                    margin-top:15% !important;
                    margin-bottom: 5%;
                }
            }

            @media (min-width: 500px) {
                .content{
                    margin-top:10% !important;
                    margin-bottom: 5%;
                }
            }

            footer {
                text-align: center;
                background-color: white;
            }

            footer span.copyright {
                font-size: 90%;
                line-height: 40px;
                text-transform: none;
                font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            }

            footer ul.quicklinks {
                font-size: 90%;
                line-height: 40px;
                margin-bottom: 0;
                text-transform: none;
                font-family: 'Montserrat', 'Helvetica Neue', Helvetica, Arial, sans-serif;
            }

            ul.social-buttons {
                margin-bottom: 0;
            }

            ul.social-buttons li a {
                font-size: 20px;
                line-height: 40px;
                display: block;
                width: 40px;
                height: 40px;
                -webkit-transition: all 0.3s;
                -moz-transition: all 0.3s;
                transition: all 0.3s;
                color: white;
                border-radius: 100%;
                outline: none;
                background-color: #212529;
            }

            ul.social-buttons li a:active, ul.social-buttons li a:focus, ul.social-buttons li a:hover {
                background-color: #fed136;
            }
        </style>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top" style="color: #00587A;">Mi tienda</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a id="login" class="nav-link  text-uppercase js-scroll-trigger"  href="login.jsp">Login <i class="fa fa-lock"></i></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-primary btn-lg text-uppercase js-scroll-trigger" style="border-radius: 50px; height: 45px; margin-top: 5px; padding-top: 10px; margin-left: 15px;" href="registrarse.jsp" class="conn">
                                Register<i class="fa fa-lock"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container content">
           
            <div class="row">
                <div class="card card-register mx-auto mt-5 col-md-8">
                    <div class="card-header">Registrar una cuenta</div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-3">
                                        <div>
                                            <label>Eres un :</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="marstylegin-bottom: 5px;">
                                        <div class="form-check-inline">
                                            <label class="form-check-label" for="radio1">
                                                <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked>Administrador
                                            </label>
                                        </div>
                                        <div class="form-check-inline">
                                            <label class="form-check-label" for="radio2">
                                                <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Tienda
                                            </label>
                                        </div>
                                        <div class="form-check-inline">
                                            <label class="form-check-label" for="radio3">
                                                <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">Cliente
                                            </label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="margin-top: 5px;">
                               
                                   
                                        <div class="form-label-group">
                                            <label for="firstName">Nombre :</label>
                                            <input type="text" id="firstName" class="form-control" style="width: 100%;" placeholder="Ingrese su nombre" required="required" autofocus="autofocus">
                                        </div>
                                                                
                            </div>
                            <div class="form-group" style="margin-top: 5px;">
                                <div class="form-label-group">
                                    <label for="inputEmail">Correo :</label>
                                    <input type="email" id="inputEmail" class="form-control" placeholder="Ingrese su correo" required="required">
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                                <div class="form-row">
                                    
                                        <div class="form-label-group" style="margin-top: 5px;">
                                            <label for="inputPassword">Clave :</label>
                                            <input type="password" id="inputPassword" class="form-control" placeholder="Ingresar clave" required="required">
                                        </div>
                                    
                                    
                                        <div class="form-label-group" style="margin-top: 5px;">
                                            <label for="inputPassword">Repetir clave :</label>
                                            <input type="password" id="confirmPassword" class="form-control" placeholder="Repetir clave" required="required">
                                        </div>
                                    
                                </div>
                            </div>

                            <a class="btn btn-primary btn-block" style="margin-top: 10px;" href="login.html">Registrar</a>
                        </form>
                                           </div>
                </div>
            </div>
           
        </div>
        <footer class="footer">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2018</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li class="list-inline-item">
                            <a href="https://github.com/ELMORABITYounes">
                                <i class="fa fa-github"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://www.facebook.com/younes.elmorabit.92">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="https://www.linkedin.com/in/younes-elmorabit-2a162310b/">
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li class="list-inline-item">
                            <a href="#">Privacy Policy</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </footer
       
    </body>
</html>
