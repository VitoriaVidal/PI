<%@page import="dominio.Aluno"%>
<%@page import="persistencia.AlunoBD"%>
<%@page import="persistencia.FichaFemininaBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.FichaFeminina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Fichas</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width initial-scale=1" />
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
                        <a class="nav-item nav-link active person-background-color-1" href="#">Fichas </a>
                        <a class="nav-item nav-link person-text-color-1" href="login.jsp">SAIR </a>
                    </nav>
                </div>

                <div  class="col-sm-3 col-xs-12">
                    <a class="nav-item nav-link person-text-color-0">ADMINISTRADOR <img src="img/adm.png" class="perfil" alt=""/></a>
                </div>
                <div class="col-sm-2 col-xs-12">

                    <img src="img/acd.png" alt="" class="icone"/>
                </div>

            </div>
            <hr>

            <div class="row C">

                <div class="col-12">
                    <h1>Lista de Fichas</h1>
                    <div>
                        <%
                            int codigo = Integer.parseInt(request.getParameter("codigo"));
                        %>

                        <table class="border-radius-style ficha">

                            <thead>
                                <tr>
                                    <td> <a href="cadastro_ficha.jsp?codigo=<%=codigo%>"> Cadastrar ficha </a></td>
                                    
                                </tr>
                            </thead>
                            

                            <tbody>
                                <%
                                    
                                    Aluno aluno = AlunoBD.getByCodigo(codigo);
                                    //cria uma arrayList com o metodo listarPorAluno no banco
                                    ArrayList<FichaFeminina> lista = FichaFemininaBD.listarPorAluno(aluno);
                                    for (FichaFeminina ficha : lista) {
                                %>

                                <tr>
                                     

                                    <td>

                                        <a class="nav-item nav-link person-text-color-1" href="pag_alterarFichaFeminina.jsp?codigo=<%=ficha.getCodigo()%>">Alterar</a>
                                    </td>
                                    <td>
                                        <a class="nav-item nav-link person-text-color-1" href="alunos.jsp?codigo=<%=ficha.getCodigo()%>">Página Aluno</a>
                                    </td>
                                </tr>

                                <% }%>
                            </tbody>
                        </table>
                    </div>
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
                    <a href="fichaFeminina.jsp" class="voltar-ao-topo">Voltar ao topo</a>
                </div>

            </div>
            <hr>
        </div>


        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.js" type="text/javascript"></script>
    </body>
</html>
