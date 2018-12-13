<?php

function obtenerCarretillaCliente(){
    if(isset($_COOKIE["crtid"])){
        return $_COOKIE["crtid"];
    }else{
        require_once("models/carretilla.php");
        $carretillaID = nuevaCarretilla();
        setcookie("crtid", $carretillaID);
        return $carretillaID;
    }
}


if(mw_estaLogueado()){
  require_once("models/carretilla.php");
  addToContext("ctdcarretilla",obtenerCtdProducto(obtenerCarretillaCliente()));
}

?>
