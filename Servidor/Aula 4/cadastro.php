<?php
    include("conexao1.php");

    $nome_completo=$_POST['nome_completo'];
    $email=$_POST['email'];
    $endereco=$_POST['endereco'];
    $pontodereferencia=$_POST['pontodereferencia'];
    $qtdlixo=$_POST['qtdlixo'];
    
    $sql="INSERT INTO formulario(nome_completo, email,endereco,pontodereferencia,qtdlixo) 
    VALUES ('$nome_completo', '$email','$endereco','$pontodereferencia','$qtdlixo')";

    if(mysqli_query($conexao, $sql)){
        echo "Sua queixa foi registrada com sucesso. Obrigado por nos ajudar a manter nossa cidade mais limpa!";
    }
    mysqli_close($conexao);
?>