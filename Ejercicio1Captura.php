<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equip="X-UA-Compatible" content="ie-edge">
    <title>Practica 1</title>
</head>
<body>

  
<?php

$sueldobase = $_GET["sueldo"];
$cantidad = $_GET["cantidad"];
$valorventas = $_GET["valor"];
$comision = $cantidad * $valorventas * 0.10;
$sueldoconcomi = $sueldobase + $comision;

echo "El Sueldo Base es: $sueldobase"."<hr>";
echo "El total de comision es: $comision"."<hr>";
echo "El Sueldo mas comision es: $sueldoconcomi"."<hr>";
?>


<h1> Calcular</h1>


</body>
</html>