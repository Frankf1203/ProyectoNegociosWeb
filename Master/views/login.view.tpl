<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
     <link href="https://fonts.googleapis.com/css?family=Palanquin+Dark" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Palanquin|Palanquin+Dark" rel="stylesheet"> 
    <title>Sugerencias</title>
  </head>
  <body>
<header>
<h1 class="Titlefixed">INICIAR SESÍON</h1>
</header>
<!-- IDEA:   <body background="public/imgs/inicioSesion.jpg"> -->
<div class="Formulario">

<h2>Credenciales</h2>
<br>
<form action="index.php?page=login" method="post" >
<div class="ingresarDatos">
<input type="hidden" name="returnurl" value="{{returnurl}}"/>
<label>Correo Electrónico</label>
<input type="email" name="usuario_email" value="{{usuario_email}}" placeholder="Correo Electronico" />
<br><br>
<label>Contraseña</label>
<input type="password" name="usuario_pswd" value="{{usuario_pswd}}" placeholder="Contraseña" />
</div>
<button class="btn" onclick="return submitLogin();">Iniciar Sesión</button>
</form>
<script>
  function submitLogin(){
    document.forms[0].submit();
    return false;
  }
</script>
</div>
</body>
</html>
