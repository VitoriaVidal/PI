<%@page import="dominio.Aluno"%>
<%@page import="persistencia.AlunoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Administrador</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.min.js" type="text/javascript"></script>


        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <script src="js/script.js" type="text/javascript">

           
        </script>

    </head>
    <body>

        <div class="container-fluid">

            <div class="row align-items-center mb-3 person-w-1200-fix">

                <div  class="col-sm-2 col-xs-12">


                    <img src="img/logvermelho.png" alt=""   class="icone"/>
                </div>

                <div  class="col-sm-5 col-xs-12">
                    <nav class="nav nav-pills nav-justified">   
                        <a class="nav-item nav-link person-text-color-1" href="listar.jsp">Lista de Alunos </a>
                        <a class="nav-item nav-link active person-background-color-1" href="#">Administrador</a>
                        <a class="nav-item nav-link person-text-color-1" href="login.jsp">SAIR </a>
                    </nav>
                </div>

                <div  class="col-sm-3 col-xs-12">

                    <a class="nav-item nav-link person-text-color-0">ADMINISTRADOR</a>

                </div>

                <div  class="col-sm-2 col-xs-12">

                    <img src="img/log1.png" alt="" class="icone"/>
                </div>

            </div>
            <hr>

            <div class="row">             

                <div  id="cadastro"  class="col-6 offset-3">
                    <%
                        String resposta = request.getParameter("resposta");
                        if (resposta != null) {
                            if (resposta.equalsIgnoreCase("OK")) {
                                out.println("Cadastrado com sucesso");
                            } else {
                                out.println(resposta);
                            }
                        }
                    %>
                    <form name="formulario" id="formulario" method="post" action="salvar_adm.jsp">

                        <div class="form-group">

                            <h1>Cadastro de Administrador</h1>
                            <label>Nome Completo:</label>
                            <input type="text" name="nome" id="nome" class="form-control" placeholder="José Santos" required />
                        </div>

                       
                        <div class="form-group">
                            <label>Login:</label>
                            <input type="text" name="login" placeholder="Nome de Usuário" class="form-control" required />
                            <input type="password" name="senha" placeholder="Senha" class="form-control" minlength=5 required />
                        </div>
                        <input type="submit" class="btn_cadastro n-widht-input" value="Cadastrar"/>

                    </form>
                </div>
            </div>

           
            <hr>

            <div class="row">
                 <div class="col-4" >
                </div>
                <div class="col-4" >
                    <img src="img/nomelogo.png" alt=""  class="icone"/>                    
                </div>
                 <div class="col-4" >
                     <a href="formulario.jsp" class="voltar-ao-topo">Voltar ao topo</a>                   
                </div>
                
            </div>
            <hr>
        </div>
    </body>
</html>
