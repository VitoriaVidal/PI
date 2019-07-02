<%@page import="persistencia.AlunoBD"%>
<%@page import="dominio.Aluno"%>

<%
    String nome = request.getParameter("nome");  
    int idade
            = Integer.parseInt(request.getParameter("idade"));
    String sexo = request.getParameter("sexo");
    String altura = request.getParameter("altura");
    String peso = request.getParameter("peso");
    String dores = request.getParameter("dores");
    String cirurgia = request.getParameter("cirurgia");
    String atividade = request.getParameter("atividade");
    String objetivos = request.getParameter("objetivos");
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    String tel = request.getParameter("tel");
    String email = request.getParameter("email");
    
 
         Aluno pessoa = new Aluno();
         
         try{
        pessoa.setNome(nome);
        pessoa.setIdade(idade);
        pessoa.setSexo(sexo);
        pessoa.setAltura(altura);
        pessoa.setPeso(peso);
        pessoa.setDores(dores);
        pessoa.setCirurgia(cirurgia);
        pessoa.setAtividade(atividade);
        pessoa.setObjetivos(objetivos);
        pessoa.setLogin(login);
        pessoa.setSenha(senha);
        pessoa.setTel(tel);
        pessoa.setEmail(email);
         AlunoBD.inserir(pessoa);
        response.sendRedirect("listar.jsp?resposta=OK");
    } catch (Exception excecao) {
        response.sendRedirect("formulario.jsp?resposta=" + excecao.getMessage());
    }
      

%>