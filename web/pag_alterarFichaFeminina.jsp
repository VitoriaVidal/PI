<%@page import="persistencia.AlunoBD"%>
<%@page import="dominio.Aluno"%>
<%@page import="persistencia.FichaFemininaBD"%>
<%@page import="dominio.FichaFeminina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width initial-scale=1" />

        <title>Ficha de Treino Feminina</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="js/script.js" type="text/javascript"></script>

    </head>
    <body>
        <%
            // pega os dados da ficha cadastrado
            FichaFeminina fichaFeminina = null;
            int codigo = Integer.parseInt(request.getParameter("codigo"));

            if (codigo != 0) {
                fichaFeminina = FichaFemininaBD.getByCodigo(codigo);
            } else { //está adicionando um aluno caso nao tenha nenhum aluno com esse nome
                fichaFeminina = new FichaFeminina();
            }
             Aluno aluno = AlunoBD.getByCodigo(codigo);
        %>
        
        <div class="container-fluid">

            <div class="row align-items-center mb-3 person-w-1200-fix">

                <div  class="col-sm-2 col-xs-12">
                    <img src="img/logvermelho.png" alt="" class="icone"/>
                </div>

                <div  class="col-sm-5 col-xs-12">

                    <nav class="nav nav-pills nav-justified">
                        <a class="nav-item nav-link person-text-color-1" href="listar.jsp">Lista de Alunos</a>
                        <a class="nav-item nav-link active person-background-color-1" href="#">Alterar ficha</a>
                        <a class="nav-item nav-link person-text-color-1" href="login.jsp">SAIR </a>
                    </nav>
                </div>
                <div  class="col-sm-3 col-xs-12">
                    <a class="nav-item nav-link person-text-color-0">ADMINISTRADOR</a>
                </div>

                <div class="col-sm-2 col-xs-12">

                    <img src="img/acd1.png" alt="" class="icone"/>
                </div>

            </div>
            <hr>

            <div class="row">

                <div class="col-12 col-xs-12 ">

                    <form id="fichaFeminina" name="fichaFeminina" method="post" action="alterarFichaFeminina.jsp">

                        <div class="form-group">
                            <h1><strong>Ficha Feminina</strong></h1>
                            <h1>Aluna: <%=aluno.getNome()%></h1> 

                            <br><br>

                            

                            <table class="border-radius-style ficha">
                                <tr>
                                    <td>Data de Avaliação:</td>
                                    <td><input type="text" id="entrada" name="entrada" value="<%=fichaFeminina.getEntrada()%>" class="form-control" placeholder="00/00/0000"></td>

                                </tr>
                                <tr>
                                    <td>Data da Reavaliação:</td>
                                    <td><input type="text" id="renovacao" name="renovacao" value="<%=fichaFeminina.getRenovacao()%>" class="form-control" placeholder="00/00/0000"></td>

                                </tr>
                            </table>



                            <table class="border-radius-style ficha">
                                <thead>
                                    <tr>
                                        <th>Exercício</th>
                                        <th>Série</th>
                                        <th>Repetição</th>
                                    </tr>
                                </thead>

                                <tr>
                                    <td>Abdominal Prancha:</td>
                                    <td><input type="number" id="seriePrancha" name="seriePrancha" value="<%=fichaFeminina.getSeriePrancha()%>" class="form-control"></td>
                                    <td><input type="number" id="repPrancha" name="repPrancha"  value="<%=fichaFeminina.getRepPrancha()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Agachamento Leg horizontal + Panturrilha:</td>
                                    <td><input type="number" id="serieAgachamento" name="serieAgachamento" value="<%=fichaFeminina.getSerieAgachamento()%>" class="form-control"></td>
                                    <td><input type="number" id="repAgachamento" name="repAgachamento"  value="<%=fichaFeminina.getRepAgachamento()%>" class="form-control"></td>
                                </tr> 
                                <tr>
                                    <td>Abdominal Infra Banco:</td>
                                    <td><input type="number" id="serieAbdominalInfra" name="serieAbdominalInfra" value="<%=fichaFeminina.getSerieAbdominalInfra()%>" class="form-control"></td>
                                    <td><input type="number" id="repAbdominalInfra" name="repAbdominalInfra" value="<%=fichaFeminina.getRepAbdominalInfra()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Cadeira Abdutora:</td>
                                    <td><input type="number" id="serieCadAbdutora" name="serieCadAbdutora" value="<%=fichaFeminina.getSerieCadAbdutora()%>" class="form-control"></td>
                                    <td><input type="number" id="repCadAbdutora" name="repCadAbdutora"  value="<%=fichaFeminina.getRepCadAbdutora()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Cadeira Adutora:</td>
                                    <td><input type="number" id="serieCadAdutora" name="serieCadAdutora" value="<%=fichaFeminina.getSerieCadAdutora()%>" class="form-control"></td>
                                    <td><input type="number" id="repCadAdutora" name="repCadAdutora" value="<%=fichaFeminina.getRepCadAdutora()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Elevação Frontal:</td>
                                    <td><input type="number" id="serieElevacaoFrontal" name="serieElevacaoFrontal" value="<%=fichaFeminina.getSerieElevacaoFrontal()%>"  class="form-control"></td>
                                    <td><input type="number" id="repElevacaoFrontal" name="repElevacaoFrontal" value="<%=fichaFeminina.getRepElevacaoFrontal()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Fortalecimento Lombar Romana:</td>
                                    <td><input type="number" id="serieFortLombar" name="serieFortLombar" value="<%=fichaFeminina.getSerieFortLombar()%>" class="form-control"></td>
                                    <td><input type="number" id="repFortLombar" name="repFortLombar" value="<%=fichaFeminina.getRepFortLombar()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Glúteos Cross:</td>
                                    <td><input type="number" id="serieGluteoCross" name="serieGluteoCross"  value="<%=fichaFeminina.getSerieGluteoCross()%>" class="form-control"></td>
                                    <td><input type="number" id="repGluteoCross" name="repGluteoCross" value="<%=fichaFeminina.getRepGluteoCross()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Glúteos 3 Apoios:</td>
                                    <td><input type="number" id="serieGluteoApoio" name="serieGluteoApoio"  value="<%=fichaFeminina.getSerieGluteoApoio()%>" class="form-control"></td>
                                    <td><input type="number" id="repGluteoApoio" name="repGluteoApoio" value="<%=fichaFeminina.getRepGluteoApoio()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Mesa Flexora:</td>
                                    <td><input type="number" id="serieMesaFlex" name="serieMesaFlex"  value="<%=fichaFeminina.getSerieMesaFlex()%>" class="form-control"></td>
                                    <td><input type="number" id="repMesaFlex" name="repMesaFlex" value="<%=fichaFeminina.getRepMesaFlex()%>"  class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Puxador Costas:</td>
                                    <td><input type="number" id="seriePuxador" name="seriePuxador" value="<%=fichaFeminina.getSeriePuxador()%>" class="form-control"></td>
                                    <td><input type="number" id="repPuxador" name="repPuxador" value="<%=fichaFeminina.getRepPuxador()%>" class="form-control"></td>
                                </tr>

                                <tr>
                                    <td>Rosca Alternada + Inteira:</td>
                                    <td><input type="number" id="serieRoscaAlternada" name="serieRoscaAlternada" value="<%=fichaFeminina.getSerieRoscaAlternada()%>" class="form-control"></td>
                                    <td><input type="number" id="repRoscaAlternada" name="repRoscaAlternada"  value="<%=fichaFeminina.getRepRoscaAlternada()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Supino Plano:</td>
                                    <td><input type="number" id="serieSupino" name="serieSupino" value="<%=fichaFeminina.getSerieSupino()%>" class="form-control"></td>
                                    <td><input type="number" id="repSupino" name="repSupino" value="<%=fichaFeminina.getRepSupino()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    <td>Tríceps Pulley:</td>
                                    <td><input type="number" id="serieTriceps" name="serieTriceps" value="<%=fichaFeminina.getSerieTriceps()%>"  class="form-control"></td>
                                    <td><input type="number" id="repTriceps" name="repTriceps"  value="<%=fichaFeminina.getRepTriceps()%>"  class="form-control"></td>
                                </tr>



                                <tr>
                                    <td><input type="text" id="exer1" name="exer1"  class="form-control" value="<%=fichaFeminina.getExer1()%>" placeholder="Adionar Exercicio"></td>
                                    <td><input type="number" id="serieExer1" name="serieExer1"  value="<%=fichaFeminina.getSerieExer1()%>" class="form-control"></td>
                                    <td><input type="number" id="repExer1" name="repExer1"  value="<%=fichaFeminina.getRepExer1()%>" class="form-control"></td>
                                </tr> 
                                <tr>
                                    <td><input type="text" id="exer2" name="exer2" class="form-control" value="<%=fichaFeminina.getExer2()%>" placeholder="Adionar Exercicio"></td>
                                    <td><input type="number" id="serieExer2" name="serieExer2" value="<%=fichaFeminina.getSerieExer2()%>" class="form-control"></td>
                                    <td><input type="number" id="repExer2" name="repExer2" value="<%=fichaFeminina.getRepExer2()%>" class="form-control"></td>
                                </tr> 
                                <tr>
                                    <td><input type="text" id="exer3" name="exer3" class="form-control" value="<%=fichaFeminina.getExer3()%>" placeholder="Adionar Exercicio"></td>
                                    <td><input type="number" id="serieExer3" name="serieExer3" value="<%=fichaFeminina.getSerieExer3()%>" class="form-control"></td>
                                    <td><input type="number" id="repExer3" name="repExer3" value="<%=fichaFeminina.getRepExer3()%>" class="form-control"></td>
                                </tr> 

                                <tr>
                                    
                                    <td><input type="text" id="aerobico" name="aerobico" value="<%=fichaFeminina.getAerobico()%>"class="form-control"></td>
                                <br>
                                <td>Tempo:</td>
                                <td><input type="text" id="tempo" name="tempo" value="<%=fichaFeminina.getTempo()%>" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" class="btn_cadastro n-widht-input" value="Salvar"/></td>
                                </tr>
                            </table>
                            <input type="hidden" name="codigo" value="<%=codigo%>" />
                        </div>


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
                    <a href="fichaFeminina.jsp" class="voltar-ao-topo">Voltar ao topo</a>                   
                </div>

            </div>
            <hr>
        </div>


    </body>
</html>
