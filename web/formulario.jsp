<%@page import="dominio.Aluno"%>
<%@page import="persistencia.AlunoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Formulário</title>

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/additional-methods.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        
        <script src="js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="js/localization/messages_pt_BR.min.js" type="text/javascript"></script>


        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <script src="js/script.js" type="text/javascript"> </script>

    </head>
    <body>

        <div class="container-fluid">

            <div class="row align-items-center mb-3 person-w-1200-fix">

                <div  class="col-sm-2 col-xs-12">


                    <img src="img/logvermelho.png" alt=""   class="icone"/>
                </div>

                <div  class="col-sm-5 col-xs-12">
                    <nav class="nav nav-pills nav-justified">
                        <a class="nav-item nav-link active person-background-color-1" href="#">Cadastro de Alunos</a>
                        <a class="nav-item nav-link person-text-color-1" href="listar.jsp">Lista de Alunos </a>
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
                    <form name="formulario" id="formulario" method="post" action="salvar_controller.jsp">

                        <div class="form-group">

                            <h1>Cadastro de Aluno</h1>
                            <label>Nome Completo:</label>
                            <input type="text" name="nome" id="nome" class="form-control" placeholder="José Santos" required />
                        </div>

                        <div class="form-group">
                            <label>Idade: </label>
                            <input type="number" name="idade" id="idade" class="form-control" placeholder="20" required/>
                        </div>
                        <div class="form-group ">
                            <label>Sexo:</label>
                            <select name="sexo" id="sexo" class="form-control" required>
                                <option value="---">---</option>
                                <option value="feminino">Feminino</option>
                                <option value="masculino">Masculino</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <label>Contato:</label>
                            <input type="text" name="tel" id="tel" class="form-control" placeholder="Celular"/>
                            <input type="text" name="email" id="email" class="form-control" placeholder="Email"/>

                        </div>
                        <div class="form-group">
                            <label>Altura:</label>
                            <input type="text" name="altura" id="altura" class="form-control" placeholder="1,70" required />
                            <br>
                            <label>Peso:</label>
                            <input type="text" name="peso" id="peso" class="form-control " placeholder="70kg"  required/>
                        </div>

                        <div class="form-group">
                            <label>Dores:</label>
                            <input type="text" name="dores" id="dores" class="form-control" placeholder="Coluna" />
                        </div>
                        <div class="form-group">
                            <label>Cirurgia:</label>
                            <input type="text" name="cirurgia" id="cirurugia" class="form-control" placeholder="Coração" />
                        </div>
                        <div class="form-group">
                            <label>Atividade Física:</label>
                            <select name="atividade" id="atividade" class="form-control" required>
                                <option value="---">---</option>
                                <option value="sedentaria">Sedentária</option>
                                <option value="moderada">Moderada</option>
                                <option value="intensa">Intensa</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Objetivos:</label>
                            <input type="text" name="objetivos" id="objetivos" class="form-control" placeholder="Ganhar massa" required/>
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
