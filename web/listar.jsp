<%@page import="dominio.Adm"%>
<%@page import="persistencia.FichaFemininaBD"%>
<%@page import="dominio.FichaFeminina"%>
<%@page import="dominio.Aluno"%>
<%@page import="persistencia.AlunoBD"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //verifica se sessão existe
    Adm adm = null;
    
    if(session.getAttribute("adm") != null){
        adm =(Adm) session.getAttribute("adm");
    }else{
        response.sendRedirect("login.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1" />

        <title>Lista de Alunos</title>
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
                         <a  class="nav-item nav-link active person-background-color-1" href="#">Lista de Alunos</a>
                        <a class="nav-item nav-link person-text-color-1" href="formulario.jsp">Cadastro de Aluno </a>
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

                <div class="col-12">
                    <h1>Lista de Alunos</h1>

                    <table class="border-radius-style">
                        <thead>
                            <tr>

                                <th>Nome</th>
                                <th>Alterar</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                //faz um array list, pegando do banco todos os alunos
                                ArrayList<Aluno> lista = AlunoBD.listar();
                                for (Aluno Aluno : lista) {
                            %>
                            <tr>

                                <td> <%=Aluno.getNome()%>  </td>


                                <td><a class="nav-item nav-link person-text-color-1" href="pag_alterarAluno.jsp?nome=<%=Aluno.getNome()%>">Dados</a></td>
                                <td><a class="nav-item nav-link person-text-color-1" href="listaFicha.jsp?codigo=<%=Aluno.getCodigo()%>">Ficha</a></td>

                                

                            </tr>   
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div> 

            <br>
            <br>


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
    </body>
</html>
