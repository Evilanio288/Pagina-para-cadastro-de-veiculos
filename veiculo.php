<?php

$conn = Conectar();
$id = $_GET['id'];

$query = "
SELECT MA.m_nome marca, MA.m_logo,
       VE.cod_mod,
       VE.cod_marca,
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
       VE.codigovei,
       COR.NOME cor,
       CAM.NOME cambio,
       CMB.NOME combustivel
	FROM 
    Veiculos VE 
    INNER JOIN Marcas MA ON MA.codigo = VE.cod_marca
    INNER JOIN modelos MD ON MD.codigo = VE.cod_mod
    LEFT JOIN combust CMB ON CMB.codigo = VE.cod_comb
    LEFT JOIN cambio CAM ON CAM.codigo = VE.cod_cambio
    LEFT JOIN corES COR ON COR.CODIGO = VE.cod_cor

   WHERE VE.codigovei=" . $id;

$result = $conn->query($query);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {

        $codmarca = $row['cod_marca'];
        $codmodelo = $row['cod_mod'];
        $marca = $row['marca'];
        $modelo = $row['modelo'];
        if ($row['valor'] == 0)
            $valor = 'R$ consulte !';
        else
            $valor = 'R$ ' . number_format($row['valor'], 2, ',', '.');

        $portas = $row['portas'];
        $ano  = $row['ano_fab'] . ' / ' . $row['ano_mod'];
        $km =   $row['km'];
        $placa   = $row['placa'];
        $cor = $row['cor'];
        $cambio = $row['cambio'] == '' ? 'consulte-nos' : $row['cambio'];
        $combustivel = $row['combustivel'];
        $obs = $row['obs'];

        $foto1 = validaFoto($row['fotonome1']);
        $foto2 = validaFoto($row['fotonome2']);
        $foto3 = validaFoto($row['fotonome3']);
        $foto4 = validaFoto($row['fotonome4']);
    }
}

function validaFoto($nome)
{
    $filename = 'imagens/veiculos/' . $nome;
    if (!file_exists($filename) || $nome == '') {
        $filename = 'imagens/semfoto.jpg';
    }
    return $filename;
}
?>


<link href="css/veiculo.css" rel="stylesheet" />

<main>
    <div class="container">

        <div class="row">
            <div class="col-lg-8">
                <div class="card-header">
                    <nav class="header-navigation">
                        <a href="#" class="btn btn-link">Back to the list</a>

                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="./">Home</a></li>
                            <li class="breadcrumb-item">
                                <a href="./?page=veiculos&marca=<?php echo $codmarca; ?>&nomemarca=<?php echo $marca; ?>">
                                <?php echo $marca; ?></a>
                            </li>

                            <li class="breadcrumb-item">
                                <a href="./?page=veiculos&modelo=<?php echo $codmodelo; ?>&nomemodelo=<?php echo $modelo; ?>">
                                <?php echo $modelo; ?></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page"><?php echo $marca." ".$modelo." ".$ano; ?></li>
                        </ol>

                        <div class="btn-group">
                            <a href="#" class="btn btn-link btn-share">Share</a>
                            <a href="#" class="btn btn-link">Sell item like this</a>
                        </div>
                    </nav>
                </div>

                <!-- product info -->
                <div class="product-info">
                    <div class="product-gallery">
                        <div class="product-gallery-thumbnails">
                            <ol class="thumbnails-list list-unstyled">
                                <li><img src="<?php echo $foto1; ?>" class="img-responsive" alt=""></li>
                                <li><img src="<?php echo $foto2; ?>" title="" alt=""></li>
                                <li><img src="<?php echo $foto3; ?>" title="" alt=""></li>
                                <li><img src="<?php echo $foto4; ?>" title="" alt=""></li>
                            </ol>
                        </div>
                        <div class="product-gallery-featured">
                            <img src="<?php echo $foto1; ?>" class="img-responsive" alt="">
                        </div>
                    </div>
                </div>
                <!-- features -->
                <div class="product-description mb-5">
                    <h2 class="mb-5">Features</h2>
                    <dl class="row mb-5">
                        <dt class="col-sm-3">Marca</dt>
                        <dd class="col-sm-9"><?php echo $marca; ?></dd>
                        <dt class="col-sm-3">Modelo</dt>
                        <dd class="col-sm-9"><?php echo $modelo; ?></dd>
                        <dt class="col-sm-3">Ano</dt>
                        <dd class="col-sm-9"><?php echo $ano; ?></dd>
                        <dt class="col-sm-3">Color</dt>
                        <dd class="col-sm-9"><?php echo $cor; ?></dd>
                        <dt class="col-sm-3">Câmbio</dt>
                        <dd class="col-sm-9"><?php echo $cambio; ?></dd>
                        <dt class="col-sm-3">Combustível</dt>
                        <dd class="col-sm-9"><?php echo $combustivel; ?></dd>
                    </dl>
                    <h2 class="mb-5">Description</h2>
                    <p><?php echo $obs; ?></p>
                </div>
                <div class="product-faq mb-5">
                    <h2 class="mb-3">Questions and Answers</h2>
                    <p class="text-muted">What information do you need?</p>
                    <div class="main-questions d-inline" data-container="body" data-toggle="popover" data-placement="right" data-content="Are you in doubt? these shortcuts can help you!">
                        <a href="#" class="btn btn-outline-primary">Cost and Delivery time</a>
                        <a href="#" class="btn btn-outline-primary">Warranty</a>
                        <a href="#" class="btn btn-outline-primary">Payment options</a>
                    </div>
                </div>
                <div class="product-comments">
                    <h5 class="mb-2">Or ask to David's Store</h5>
                    <form action="" class="form-inline mb-5">
                        <textarea name="" id="" cols="50" rows="2" class="form-control mr-4" placeholder="write a question"></textarea><button class="btn btn-lg btn-primary">Ask</button>
                    </form>
                    <h5 class="mb-5">Lastest Questions</h5>
                    <ol class="list-unstyled last-questions-list">
                        <li><i class="fa fa-comment"></i> <span>Hello david, can i pay with credit card?</span></li>
                        <li><i class="fa fa-comment"></i> <span>can i send it to another address?</span></li>
                    </ol>
                </div>


            </div>


            <div class="col-lg-4">
                <div class="product-payment-details">
                    <p class="last-sold text-muted"><small>145 items sold</small></p>
                    <h4 class="product-title mb-2"><?php echo $marca . " " . $modelo; ?></h4>
                    <h2 class="product-price display-4"><?php echo $valor; ?></h2>
                    <!--       <p class="text-success"><i class="fa fa-credit-card"></i> 12x or 5x $ 5.00</p> -->
                    <p class="mb-0"><i class="fa fa-truck"></i> Delivery in all territory</p>
                    <div class="text-muted mb-2"><small>know more about delivery time and shipping forms</small></div>
                    <label for="quant">Ano:</label>
                    <label><?php echo $ano; ?></label>
                    <!--<input type="number" name="quantity" min="1" id="quant" class="form-control mb-5 input-lg" placeholder="Choose the quantity"> -->
                    <button class="btn btn-primary btn-lg btn-block">Buy Now</button>

                </div>
            </div>

        </div>

    </div>
</main>