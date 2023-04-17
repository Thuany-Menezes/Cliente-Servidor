

<?php
    include("conexao1.php");

    $nome_completo=$_POST['nome_completo'];
    $email=$_POST['email'];
    $endereco=$_POST['endereco'];
    $pontodereferencia=$_POST['pontodereferencia'];
    $qtdlixo=$_POST['qtdlixo'];
    $veiculo=$_POST['veiculo'];
    $detalhe=$_POST['detalhe'];
    
    if(isset($_FILES['foto'])){
        $foto=$_FILES['foto'];
        $pasta = "fotos/";
        $nomedafoto = $foto['name'];
        $novoNomedafoto = uniqid();
        $extensao = pathinfo($nomedafoto, PATHINFO_EXTENSION);
        $extensao = strtolower(pathinfo($nomedafoto, PATHINFO_EXTENSION));

        if($extensao != "jpg" && $extensao != 'png')
            die("Tipo de arquivo não aceito");

        $deu_certo = move_uploaded_file($foto["tmp_name"], $pasta . $nomedafoto . "." . $extensao);
        
    }
    
    $sql="INSERT INTO formulario(nome_completo, email,endereco,pontodereferencia,qtdlixo,veiculo,detalhe,  nomedafoto) 
    VALUES ('$nome_completo', '$email','$endereco','$pontodereferencia','$qtdlixo','$veiculo','$detalhe', '$nomedafoto')";

    if(mysqli_query($conexao, $sql)){
        echo "Sua queixa foi registrada com sucesso. Obrigado por nos ajudar a manter nossa cidade mais limpa!";
    }
    mysqli_close($conexao);
?>