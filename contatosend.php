<?php
$button = @$_POST['button'];

if( $button != '')
    {

    $nome = $_POST['txt_nome'];
    $email  = $_POST['txt_email'];
    $tel  = $_POST['txt_tel'];
    $cidade  = $_POST['txt_cidade'];
    $estado  = $_POST['cmb_estado'];
    $mensagem  = $_POST['txt_mensagem'];

    $data = date("d/m/Y H:i:s", time());
    $ip = $_SERVER['REMOTE_ADDR'];

    $sqlquery = "INSERT INTO contato(nome, email, telefone, cidade, estado, mensagem, data, ip) 
    VALUES ('$nome','$email','$tel','$cidade','$estado','$mensagem','$data','$ip')";

    include "config.php";

    $conn = Conectar();
    if( $conn->query($sqlquery) ) 
           echo "Mensagem enviada com sucesso !";
    else
        echo "Houve um erro no envio !";
    }

?>