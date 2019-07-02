<%@page import="dominio.Aluno"%>
<%@page import="persistencia.AlunoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Alterar Aluno</title>

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

        <%
            // pega os dados do aluno cadastrado
            Aluno aluno = null;
            String nome = request.getParameter("nome");
            if (nome != null) {
                aluno = AlunoBD.getByNome(nome);
            } else { //está adicionando um aluno caso nao tenha nenhum aluno com esse nome
                aluno = new Aluno();
            }

        %>

        <div class="container-fluid">
            <div class="row align-items-center mb-3 person-w-1200-fix">

                <div  class="col-sm-2 col-xs-12">


                    <img src="img/logvermelho.png" alt=""   class="icone"/>
                </div>

                <div  class="col-sm-5 col-xs-12">
                    <nav class="nav nav-pills nav-justified">
                        <a class="nav-item nav-link person-text-color-1" href="listar.jsp">Lista de Alunos </a>
                        <a class="nav-item nav-link active person-background-color-1" href="#">Alterar Aluno</a>
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

                    <form name="formulario" id="formulario" method="post" action="alterar_aluno.jsp">

                        <div class="form-group">
                            <h1>Alterar Dados do Aluno</h1>
                            <label>Nome Completo:</label>
                            <input type="text" name="nome" id="nome" value="<%=aluno.getNome()%>" class="form-control" placeholder="José Santos" required />
                        </div>

                        <div class="form-group">
                            <label>Idade: </label>
                            <input type="number" name="idade" id="idade" value="<%=aluno.getIdade()%>" class="form-control" placeholder="20" required/>
                        </div>

                        <div class="form-group ">
                            <label>Sexo:</label>
                            <%
                                String sexoSelecionada = "---";
                                if (aluno.getAtividade() != null) {
                                    sexoSelecionada = aluno.getAtividade();
                                }
                            %>
                            <select name="sexo" id="sexo" class="form-control" required>
                                <option value="---">---</option>
                                <option value="feminino">Feminino <% if (sexoSelecionada.equals("Feminino")) {
                                        out.println("selected");
                                    } %></option>
                                <option value="masculino"<% if (sexoSelecionada.equals("Masculino")) {
                                        out.println("selected");
                                    }%>>Masculino</option>

                            </select>
                        </div>

                        <div class="form-group">
                            <label>Contato:</label>
                            <input type="text" name="tel" id="tel"  value="<%=aluno.getTel()%>" class="form-control" placeholder="Celular"/>
                            <input type="text" name="email" id="email" value="<%=aluno.getEmail()%>" class="form-control" placeholder="Email"/>

                        </div>
                        <div class="form-group">
                            <label>Altura:</label>
                            <input type="text" name="altura" id="altura" value="<%=aluno.getAltura()%>" class="form-control" placeholder="1,70" required />

                        </div>
                        <div class="form-group">
                            <label>Peso:</label>
                            <input type="text" name="peso" id="peso" value="<%=aluno.getPeso()%>" class="form-control " placeholder="70kg"  required/>

                        </div>
                        <div class="form-group">
                            <label>Dores:</label>
                            <input type="text" name="dores" id="dores" value="<%=aluno.getDores()%>"class="form-control " placeholder="Coluna" />
                        </div>
                        <div class="form-group">
                            <label>Cirurgia:</label>
                            <input type="text" name="cirurgia" id="cirurugia" value="<%=aluno.getCirurgia()%>" class="form-control" placeholder="Coração" />
                        </div>
                        <div class="form-group">
                            <label>Atividade Física:</label>
                            <%
                                String atividadeSelecionada = "---";
                                if (aluno.getAtividade() != null) {
                                    atividadeSelecionada = aluno.getAtividade();
                                }
                            %>
                            <select name="atividade" id="atividade" class="form-control" required>
                                <option value="---">---</option>
                                <option value="sedentaria"<% if (atividadeSelecionada.equals("Sedentaria")) {
                                        out.println("selected");%>>Sedentária</option>
                                <option value="moderada" <% if (atividadeSelecionada.equals("Moderada")) {
                                        out.println("selected");%>>Moderada</option>
                                <option value="intensa" <% if (atividadeSelecionada.equals("Intensa")) {
                                        out.println("selected");
                                    }%>>Intensa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Objetivos:</label>
                            <input type="text" name="objetivos" id="objetivos" value="<%=aluno.getObjetivos()%>" class="form-control" placeholder="Ganhar massa" required/>
                        </div>
                        <div class="form-group">
                            <label>Login:</label>
                            <input type="text" name="login" placeholder="Nome de Usuário" value="<%=aluno.getLogin()%>" class="form-control" required />
                            <input type="password" name="senha" placeholder="Senha" value="<%=aluno.getSenha()%>" class="form-control" minlength=5 required />
                        </div>

                        <input type="submit" class="btn_cadastro n-widht-input" value="Salvar"/>
                        <input type="hidden" name="idAlterado" value="<%=nome%>" />

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