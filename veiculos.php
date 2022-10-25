<div class="container px-4 px-lg-5 mt-5">

<?php 
     
$conn = Conectar();
$marca = @$_GET['marca'];
$modelo = @$_GET['modelo'];

$filtro = '';
if( $marca != '' )
{
    echo '<h1>Marca:'.$_GET['nomemarca'].'</h1>';
    $filtro = ' WHERE VE.cod_marca='.$marca;
}
if( $modelo != '')
{
    echo '<h1>Modelo:'.$_GET['nomemodelo'].'</h1>';
    $filtro = ' WHERE VE.cod_mod='.$modelo;
}
?>
    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<?php

$query = "
SELECT MA.m_nome marca, MA.m_logo,
       MD.md_nome modelo, MD.md_logo,
       VE.portas,
       VE.ano_fab,
       VE.ano_mod,
       VE.km,
       VE.placa,
       VE.valor,
       VE.novousado,
       VE.obs,
       VE.fotonome1,VE.fotonome2,VE.fotonome3,VE.fotonome4,
       VE.dtinclu,
       VE.codigovei
	FROM 
    Veiculos VE 
    INNER JOIN Marcas MA ON MA.codigo = VE.cod_marca
    INNER JOIN modelos MD ON MD.codigo = VE.cod_mod
    LEFT JOIN combust CMB ON CMB.codigo = VE.cod_comb
    LEFT JOIN cambio CAM ON CAM.codigo = VE.cod_cambio
    LEFT JOIN corES COR ON COR.CODIGO = VE.cod_cor
    ".$filtro." 
   ORDER BY MD.md_nome, VE.ano_mod
   ";
//echo $query;
$result = $conn->query($query);
$quant = $result->num_rows;         // define o número de linhas da consulta
$limite = 12;                        // define o numero de carros a exibir
$pags = ceil( $quant / $limite);    // encontra a quantidade de paginas arred. para cima
$pagina = @$_GET['pag'];            // obtem o parametro da pagina atual
if( $pagina == '')                  // se o parametro for '' ele seta para 1
    $pagina =1;

$inicio = ( ($pagina-1) * $limite );    // define o item inicial que a consulta usará
$query = $query . " LIMIT ".$inicio.",".$limite;
  
$result = $conn->query($query);
//echo "rows=".$quant." Pags =".$pags." pagina:".$pagina;

if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {

        $filename = 'imagens/veiculos/' . $row['fotonome1'];

        if (!file_exists($filename) || $row['fotonome1'] == '') {
            $filename = 'imagens/semfoto.jpg';
        }
    ?>
        <div class="col mb-5">
            <div class="card h-100">
                <!-- Sale badge-->
                <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                <!-- Product image-->
                <img class="card-img-top" src="<?php echo $filename; ?>" alt="..." />
                <!-- Product details-->
                <div class="card-body p-4">
                    <div class="text-center">
                        <!-- Product name-->
                        <h5 class="fw-bolder"><?php echo $row['modelo']; ?> / <?php echo $row['marca']; ?></h5>
                        <!-- Product reviews-->
                        <div class="d-flex justify-content-center small text-warning mb-2">
                            <div class="bi-star-fill"></div>
                            <div class="bi-star-fill"></div>
                            <div class="bi-star-fill"></div>
                            <div class="bi-star-fill"></div>
                            <div class="bi-star-fill"></div>
                        </div>
                        <!-- Product price-->
                        <!--
                            <span class="text-muted text-decoration-line-through">$20.00</span> -->
                        <?php 
                            if( $row['valor'] == 0)
                               echo 'R$ consulte !';
                            else
                               echo 'R$ '.number_format($row['valor'], 2, ',', '.');
                        ?>
                    </div>
                </div>
                <!-- Product actions-->
                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                     href="./index.php?page=veiculo&id=<?php echo $row['codigovei']; ?>">+ Detalhes</a></div>
                </div>
            </div>
        </div>
<?php   } } 
?>
    </div>
    <?php 
        include "paginacao.php";
        ?>
</div>