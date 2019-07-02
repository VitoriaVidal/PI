<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1" />

        <title>Ficha de Treino</title>
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>


    </head>
    <body>
        <div class="container-fluid">
            <div class="row align-items-center mb-3 person-w-1200-fix">
                <div  class="col-sm-2 col-xs-12">
                    <img src="img/logvermelho.png" alt=""   class="icone"/>
                </div>

                <div  class="col-sm-5 col-xs-12">
                    <nav class="nav nav-pills nav-justified">
                        <a class="nav-item nav-link person-text-color-1" href="listar.jsp">Lista de Alunos</a>
                        <a  class="nav-item nav-link active person-background-color-1" href="#">Cadastro Ficha</a>
                        <a class="nav-item nav-link person-text-color-1" href="login.jsp">SAIR </a>
                    </nav>
                </div>

                <div  class="col-sm-3 col-xs-12">
                    <a class="nav-item nav-link person-text-color-0">ADMINISTRADOR <img src="img/adm.png" class="perfil" alt=""/></a>
                </div>
                <div  class="col-sm-2 col-xs-12">

                    <img src="img/acd.png" alt="" class="icone"/>
                </div>

            </div>
            <hr>
            <br>
            <div class="row C">

                <div class="col-6 offset-3">
                    <h1>Escolha a Ficha</h1>
                      <%
                            int codigo = Integer.parseInt(request.getParameter("codigo"));
                        %>
                    
                    <table class="border-radius-style">
                            <thead>
                                <tr>
                                    <th><a class="nav-item nav-link person-text-color-1" href="fichaFeminina.jsp?codigo=<%=codigo%>">Feminina</a></th>
                                    <th><a class="nav-item nav-link person-text-color-1" href="fichaMasculina.jsp?codigo=<%=codigo%>">Masculina</a></th>

                                </tr>
                            </thead>
                            
                        </table>
                </div>
            </div> 
            
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <hr>
            
            
            <div class="row">
                <div class="col-12" id="divD">
                    
                </div>
                
            </div>
        </div>
    </body>
</html>
