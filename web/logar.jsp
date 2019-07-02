<%@page import="dominio.Adm"%>
<%@page import="persistencia.AdmBD"%>
<%@page import="dominio.Aluno"%>
<%@page import="persistencia.AlunoBD"%>
<%

        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        //metodo no banco de dados, pega os metodos e compara para ver se existe 
        Aluno alunoEncontrado = AlunoBD.procurarPorLoginSenha(login, senha);
        Adm admEncontrado = AdmBD.procurarPorLoginSenha(login, senha);

        if (admEncontrado != null) {
            session.setAttribute("adm", admEncontrado);
            response.sendRedirect("listar.jsp");
        } else if (alunoEncontrado != null) {
            session.setAttribute("aluno", alunoEncontrado);
            response.sendRedirect("alunos.jsp");
        } else {
        response.sendRedirect("login.jsp?erro=USUARIO_NAO_EXISTE");
    }


%>