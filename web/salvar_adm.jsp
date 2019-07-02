<%@page import="persistencia.AdmBD"%>
<%@page import="dominio.Adm"%>

<%
    String nome = request.getParameter("nome");
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    Adm adm = new Adm();

    try {
        adm.setNome(nome);
        adm.setLogin(login);
        adm.setSenha(senha);

        AdmBD.inserir(adm);
        response.sendRedirect("adm.jsp?resposta=OK");
    } catch (Exception excecao) {
        response.sendRedirect("adm.jsp?resposta=" + excecao.getMessage());
    }


%>