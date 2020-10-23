<?php

include_once("cone.php");
include_once("ConexionBD.php");

$obj = new BD();
$Cone = $obj -> con();

$query = "SELECT * FROM usuarios";
$resul = $Cone -> prepare($query);
$resul -> execute();
$consulta = $resul-> fetchAll(PDO::FETCH_ASSOC);



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test</title>
    <style type="text/css">
.highcharts-figure, .highcharts-data-table table {
    min-width: 320px; 
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}


input[type="number"] {
	min-width: 50px;
}
		</style>
</head>
<body>
<script src="../HC/code/highcharts.js"></script>
<script src="../HC/code/modules/exporting.js"></script>
<script src="../HC/code/modules/export-data.js"></script>
<script src="../HC/code/modules/accessibility.js"></script>
    <h3>Multiplicar 2 numero sin usar el signo de multiplicacion ni parentesis </h3>
<?php

 
function multiplicar($num1, $num2){
    if ($num2 == 0) {
        return $num2;
    }elseif($num2 == 1){
        return $num1;
    }else{
        return $num1 + multiplicar($num1, $num2 - 1);
    }
}

$resul = multiplicar(4,4);

echo $resul;
?>
<br>
<h3>Escribe una funcion que elimine los 0 y los null</h3>
<?php

 $array = array(
    '0','17','4',null,'5','9','23','11','0','0','12','09',null,'0','123',
    'GATO', '23','44','33','0','99','00',null);

    $newArray = array();
    foreach($array as $k => $v){
        if ($array[$k] > 0) {
            $newArray[$v] = $array[$k];
        }
    }
    print_r($newArray);
//echo $array1[1];
?>
<br>
<br>
<br>
<h3>CRUD con MySQL</h3>
<table border="1">
    <thead>
        <tr>
            <th> id </th>
            <th> Nombre </th>
            <th> Apellido Paterno </th>
            <th> Apellido Materno </th>
            <th> Edad </th>
            <th> Direccion </th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach($consulta as $dat){
        ?>
        <tr>
            <td> <?php echo $dat['id']; ?> </td>
            <td> <?php echo $dat['nombre']; ?> </td>
            <td> <?php echo $dat['app']; ?> </td>
            <td> <?php echo $dat['apm']; ?> </td>
            <td> <?php echo $dat['edad']; ?> </td>
            <td> <?php echo $dat['direccion']; ?> </td>
            
        </tr>
        <?php
        }
        ?>
    </tbody>
</table>
<br>
<h3>Hacer una grafica de pastel con datos de MySQL y Highcharts</h3>
<br>

<figure class="highcharts-figure">
    <div id="container"></div>
 
</figure>


<?php
$objeto = new BD();
$Conec = $objeto -> con();

$queryProdu = "SELECT * FROM productos";
$result = $Conec -> prepare($queryProdu);
$result -> execute();
$consultaa = $result -> fetchAll(PDO::FETCH_ASSOC);

?>
		<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Productos'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: [{
        name: 'Productos totales',
        colorByPoint: true,
        data: [       
            {
                <?php
                    foreach($consultaa as $datoo ){
                    ?>
            name: '<?php echo $datoo ['nombre']; ?>',
            y: <?php echo $datoo ['numero_serie'];?>,
            sliced: true,
            selected: true
            
            }
            
            ]
    }]
    
});

        </script>
            <?php
}
        ?>
        <br>
        <h3>Tabla ventas</h3>

</body>
</html>