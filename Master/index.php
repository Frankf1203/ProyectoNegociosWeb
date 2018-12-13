<?php

    session_start();
     date_default_timezone_set("America/Tegucigalpa");

    require_once("libs/utilities.php");

    $pageRequest = "home";

    if(isset($_GET["page"])){
      $pageRequest = $_GET["page"];
    }

    require_once("controllers/verificar.mw.php");
    require_once("controllers/site.mw.php");

    $method = "get";
        if($_SERVER["REQUEST_METHOD"] == "POST"){
            $method="post";
        }
        
     require_once("controllers/middleware.php");

    //Este switch se encarga de todo el enrutamiento
    switch($pageRequest){
        case "home":
            //llamar al controlador
            require_once("controllers/home.control.php");
            break;
            case "login":
              require_once("controllers/login.control.php");
              break;
            case "productos":
            require_once("controllers/productos.control.php");
            break;
            case "productosSinLogin":
            require_once("controllers/productosSinLogin.control.php");
            break;
            case "addCrt":
            require_once("controllers/carretilla.control.php");
            break;
            case "carretilla":
            require_once("controllers/carretilla.control.php");
            break;
        case "logout":
           mw_setEstaLogueado("",false);
           redirectWithMessage("Ha cerrado sesión satisfactoriamente!");
          //soloMensaje("¿Desea cerrar sesión?");
            break;
            case "usuario":
            require_once("controllers/usuario.control.php");
            break;
        default:
            require_once("controllers/error.control.php");
    }
?>