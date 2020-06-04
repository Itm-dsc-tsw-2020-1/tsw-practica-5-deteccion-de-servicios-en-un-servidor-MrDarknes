<?php session_start() ?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <title>Servicios Detectados</title>
    
</head>

<body>
    <div>
        <h1>Resultados</h1>
        <?php
        $servidor = "localhost";
        $usuario = "root";
        $clave = "";
        $conexion = mysqli_connect($servidor, $usuario, $clave, "datospuertos");
        if (!$conexion) {
            echo "No se pudo conectar";
            exit;
        }
        $query = "SELECT * FROM datos";
        $resultado = mysqli_query($conexion, $query);
        ?>

        <table border="1px">
            <tr>
                <th>IP</th>
                <th>Puerto</th>
                <th>Estado</th>
                <th>Servicio</th>
            </tr>
            <?php
            while ($res = mysqli_fetch_assoc($resultado)) { ?>
                <tr>
                    <td><?php echo $res['ip'] ?></td>
                    <td><?php echo $res['puerto'] ?></td>
                    <td><?php echo $res['estado'] ?></td>
                    <td><?php echo $res['servicio'] ?></td>
                </tr>
            <?php } ?>

        </table>

    </div>
</body>

</html>
