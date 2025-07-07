<?php
    include("conexao.php");

    $nome=$_POST["nome"];
    $email=$_POST["email"];
    $telefone=$_POST["telefone"];
    $senha=$_POST["senha"];
    $nome_loja=$_POST["nome_loja"];
    $descricao_loja=$_POST["descricao_loja"];
    $endereco_loja=$_POST["endereco_loja"];
    $banco=$_POST["banco"];
    $agencia=$_POST["agencia"];
    $conta=$_POST["conta"];
    $tipo_conta=$_POST["tipo_conta"];

    $sql="INSERT INTO vendedores (nome, email, telefone, senha, nome_loja, descricao_loja, endereco_loja, banco, agencia, conta, tipo_conta) VALUES
    ('$nome', '$email', '$telefone', '$senha', '$nome_loja', '$descricao_loja', '$endereco_loja', '$banco', '$agencia', '$conta', '$tipo_conta')";

    if(mysqli_query($conexao, $sql)){
        header("Location: agradec.html");
        exit();
    }
    else{
        echo("Error:".$sql."<br>".mysqli_error($conexao));
    }

?>