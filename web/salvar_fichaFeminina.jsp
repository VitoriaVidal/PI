<%@page import="persistencia.AlunoBD"%>
<%@page import="dominio.Aluno"%>
<%@page import="persistencia.FichaFemininaBD"%>
<%@page import="dominio.FichaFeminina"%>

<%
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    Aluno aluno = AlunoBD.getByCodigo(codigo);
    
    int serieAgachamento = Integer.parseInt(request.getParameter("serieAgachamento"));
    int repAgachamento = Integer.parseInt(request.getParameter("repAgachamento"));
    int serieCadAdutora = Integer.parseInt(request.getParameter("serieCadAdutora"));
    int repCadAdutora = Integer.parseInt(request.getParameter("repCadAdutora"));
    int serieSupino = Integer.parseInt(request.getParameter("serieSupino"));
    int repSupino = Integer.parseInt(request.getParameter("repSupino"));
    int serieElevacaoFrontal = Integer.parseInt(request.getParameter("serieElevacaoFrontal"));
    int repElevacaoFrontal = Integer.parseInt(request.getParameter("repElevacaoFrontal"));
    int seriePuxador = Integer.parseInt(request.getParameter("seriePuxador"));
    int repPuxador = Integer.parseInt(request.getParameter("repPuxador"));
    int seriePrancha = Integer.parseInt(request.getParameter("seriePrancha"));
    int repPrancha = Integer.parseInt(request.getParameter("repPrancha"));
    int serieMesaFlex = Integer.parseInt(request.getParameter("serieMesaFlex"));
    int repMesaFlex = Integer.parseInt(request.getParameter("repMesaFlex"));
    int serieGluteoApoio = Integer.parseInt(request.getParameter("serieGluteoApoio"));
    int repGluteoApoio = Integer.parseInt(request.getParameter("repGluteoApoio"));
    int serieGluteoCross = Integer.parseInt(request.getParameter("serieGluteoCross"));
    int repGluteoCross = Integer.parseInt(request.getParameter("repGluteoCross"));
    int serieCadAbdutora = Integer.parseInt(request.getParameter("serieCadAbdutora"));
    int repCadAbdutora = Integer.parseInt(request.getParameter("repCadAbdutora"));
    int serieTriceps = Integer.parseInt(request.getParameter("serieTriceps"));
    int repTriceps = Integer.parseInt(request.getParameter("repTriceps"));
    int serieRoscaAlternada = Integer.parseInt(request.getParameter("serieRoscaAlternada"));
    int repRoscaAlternada = Integer.parseInt(request.getParameter("repRoscaAlternada"));
    int serieFortLombar = Integer.parseInt(request.getParameter("serieFortLombar"));
    int repFortLombar = Integer.parseInt(request.getParameter("repFortLombar"));
    int serieAbdominalInfra = Integer.parseInt(request.getParameter("serieAbdominalInfra"));
    int repAbdominalInfra = Integer.parseInt(request.getParameter("repAbdominalInfra"));   
    String exer1 = request.getParameter("exer1");
    int serieExer1 = Integer.parseInt(request.getParameter("serieExer1"));
    int repExer1 = Integer.parseInt(request.getParameter("repExer1"));
    String exer2 = request.getParameter("exer2");
    int serieExer2 = Integer.parseInt(request.getParameter("serieExer2"));
    int repExer2 = Integer.parseInt(request.getParameter("repExer2"));
    String exer3 = request.getParameter("exer3");
    int serieExer3 = Integer.parseInt(request.getParameter("serieExer3"));
    int repExer3 = Integer.parseInt(request.getParameter("repExer3"));
    String aerobico = request.getParameter("aerobico");
    String tempo = request.getParameter("tempo");
    String entrada = request.getParameter("entrada");
    String renovacao = request.getParameter("renovacao");

    
    try {
        FichaFeminina fichaFeminina = new FichaFeminina();
        fichaFeminina.setAluno(aluno);
        fichaFeminina.setSerieAgachamento(serieAgachamento);
        fichaFeminina.setRepAgachamento(repAgachamento);        
        fichaFeminina.setSerieCadAdutora(serieCadAdutora);
        fichaFeminina.setRepCadAdutora(repCadAdutora);
        fichaFeminina.setSerieSupino(serieSupino);
        fichaFeminina.setRepSupino(repSupino);
        fichaFeminina.setSerieElevacaoFrontal(serieElevacaoFrontal);
        fichaFeminina.setRepElevacaoFrontal(repElevacaoFrontal);
        fichaFeminina.setSeriePuxador(seriePuxador);
        fichaFeminina.setRepPuxador(repPuxador);
        fichaFeminina.setSeriePrancha(seriePrancha);
        fichaFeminina.setRepPrancha(repPrancha);
        fichaFeminina.setSerieMesaFlex(serieMesaFlex);
        fichaFeminina.setRepMesaFlex(repMesaFlex);
        fichaFeminina.setSerieGluteoApoio(serieGluteoApoio);
        fichaFeminina.setRepGluteoApoio(repGluteoApoio);
        fichaFeminina.setSerieGluteoCross(serieGluteoCross);
        fichaFeminina.setRepGluteoCross(repGluteoCross);
        fichaFeminina.setSerieCadAbdutora(serieCadAbdutora);
        fichaFeminina.setRepCadAbdutora(repCadAbdutora);
        fichaFeminina.setSerieTriceps(serieTriceps);
        fichaFeminina.setRepTriceps(repTriceps);
        fichaFeminina.setSerieRoscaAlternada(serieRoscaAlternada);
        fichaFeminina.setRepRoscaAlternada(repRoscaAlternada);
        fichaFeminina.setSerieFortLombar(serieFortLombar);
        fichaFeminina.setRepFortLombar(repFortLombar);
        fichaFeminina.setSerieAbdominalInfra(serieAbdominalInfra);
        fichaFeminina.setRepAbdominalInfra(repAbdominalInfra);
        fichaFeminina.setTempo(tempo);
        fichaFeminina.setExer1(exer1);
        fichaFeminina.setSerieExer1(serieExer1);
        fichaFeminina.setRepExer1(repExer1);
        fichaFeminina.setExer2(exer2);
        fichaFeminina.setSerieExer2(serieExer2);
        fichaFeminina.setRepExer2(repExer2);
        fichaFeminina.setExer3(exer3);
        fichaFeminina.setSerieExer3(serieExer3);       
        fichaFeminina.setRepExer3(repExer3); 
        fichaFeminina.setAerobico(aerobico);
        fichaFeminina.setEntrada(entrada);
        fichaFeminina.setRenovacao(renovacao);
        FichaFemininaBD.inserir(fichaFeminina);
        response.sendRedirect("listaFicha.jsp?resposta=OK&codigo="+codigo);

    } catch (Exception excecao) {
        response.sendRedirect("fichaFeminina.jsp?resposta=" + excecao.getMessage());
    }

%>