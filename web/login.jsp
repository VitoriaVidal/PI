<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Estação Fitness</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>



        <div class="col-md-12 login-corpo">

               <img src="img/logobrunopi.png" alt="" class="img-fluid"/>
            <br>

            <h1> ACESSE SUA CONTA FITNESS</h1>
            <% //verifica se o usuário existe
                String erro = request.getParameter("erro");
                if (erro != null) {
                    if (erro.equals("USUARIO_NAO_EXISTE")) {
            %>
            Esse usuário não existe!
            <%
                    }
                }
            %>
            <br>
            <form name="formularioLogin" id="formularioLogin" method="post" action="logar.jsp">


                <input type="text" name="login" id="login" class="form-control n-widht-input" placeholder="Login" />

                <br />

                <input type="password" name="senha" id="senha" class="form-control n-widht-input" placeholder="Senha"/>
                <br />

                <input type="submit" class="btn_cadastro n-widht-input" value="Entrar" />

                <hr class="hr-custom">

                <p class="senha">Esqueceu sua senha?</p>
                <br>

            </form>


            <div class="rodape">

                <a href="https://pt-br.facebook.com/pages/category/Gym-Physical-Fitness-Center/Academia-Esta%C3%A7%C3%A3o-Fitness-1415020635396333/">
                    <p class="face"><img src="img/face.png" class="faceimg" alt=""/>  Academia Estação Fitness</p>  </a>          

            </div>

        </div>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.min.js" type="text/javascript"></script>
        <script src="js/script.js" type="text/javascript"></script>

    </body>
</html>
