<%@page import="persistencia.AlunoBD"%>
<%@page import="dominio.Aluno"%>
<%@page import="persistencia.FichaBD"%>
<%@page import="dominio.Ficha"%>

<%
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    Aluno aluno = AlunoBD.getByCodigo(codigo);
    int serieSupinoPlano = Integer.parseInt(request.getParameter("serieSupinoPlano"));
    int repSupinoPlano = Integer.parseInt(request.getParameter("repSupinoPlano"));
    int serieSupinoInclinado = Integer.parseInt(request.getParameter("serieSupinoInclinado"));
    int repSupinoInclinado = Integer.parseInt(request.getParameter("repSupinoInclinado"));
    int seriePulo = Integer.parseInt(request.getParameter("seriePulo"));
    int repPulo = Integer.parseInt(request.getParameter("repPulo"));
    int serieDesenvolvimento = Integer.parseInt(request.getParameter("serieDesenvolvimento"));
    int repDesenvolvimento = Integer.parseInt(request.getParameter("repDesenvolvimento"));
    int serieElevacaoFrontal = Integer.parseInt(request.getParameter("serieElevacaoFrontal"));
    int repElevacaoFrontal = Integer.parseInt(request.getParameter("repElevacaoFrontal"));
    int serieEncolhimento = Integer.parseInt(request.getParameter("serieEncolhimento"));
    int repEncolhimento = Integer.parseInt(request.getParameter("repEncolhimento"));
    int serieTricepsPulley = Integer.parseInt(request.getParameter("serieTricepsPulley"));
    int repTricepsPulley = Integer.parseInt(request.getParameter("repTricepsPulley"));
    int serieTricepsCorda = Integer.parseInt(request.getParameter("serieTricepsCorda"));
    int repTricepsCorda = Integer.parseInt(request.getParameter("repTricepsCorda"));
    int seriePrancha = Integer.parseInt(request.getParameter("seriePrancha"));
    int repPrancha = Integer.parseInt(request.getParameter("repPrancha"));
    int seriePuxador = Integer.parseInt(request.getParameter("seriePuxador"));
    int repPuxador = Integer.parseInt(request.getParameter("repPuxador"));
    int serieRemadaBaixa = Integer.parseInt(request.getParameter("serieRemadaBaixa"));
    int repRemadaBaixa = Integer.parseInt(request.getParameter("repRemadaBaixa"));
    int serieRemadaUnilateral = Integer.parseInt(request.getParameter("serieRemadaUnilateral"));
    int repRemadaUnilateral = Integer.parseInt(request.getParameter("repRemadaUnilateral"));
    int serieRoscaAlternada = Integer.parseInt(request.getParameter("serieRoscaAlternada"));
    int repRoscaAlternada = Integer.parseInt(request.getParameter("repRoscaAlternada"));
    int serieRoscaBarra = Integer.parseInt(request.getParameter("serieRoscaBarra"));
    int repRoscaBarra = Integer.parseInt(request.getParameter("repRoscaBarra"));
    int serieAbdominalInfra = Integer.parseInt(request.getParameter("serieAbdominalInfra"));
    int repAbdominalInfra = Integer.parseInt(request.getParameter("repAbdominalInfra"));
    int serieRolinha = Integer.parseInt(request.getParameter("serieRolinha"));
    int repRolinha = Integer.parseInt(request.getParameter("repRolinha"));
    int serieFortLombar = Integer.parseInt(request.getParameter("serieFortLombar"));
    int repFortLombar = Integer.parseInt(request.getParameter("repFortLombar"));
    int serieAgachamento = Integer.parseInt(request.getParameter("serieAgachamento"));
    int repAgachamento = Integer.parseInt(request.getParameter("repAgachamento"));
    int serieCadExtensora = Integer.parseInt(request.getParameter("serieCadExtensora"));
    int repCadExtensora = Integer.parseInt(request.getParameter("repCadExtensora"));
    int serieCadAdutora = Integer.parseInt(request.getParameter("serieCadAdutora"));
    int repCadAdutora = Integer.parseInt(request.getParameter("repCadAdutora"));
    int serieMesaFlex = Integer.parseInt(request.getParameter("serieMesaFlex"));
    int repMesaFlex = Integer.parseInt(request.getParameter("repMesaFlex"));
    int seriePanturrilha = Integer.parseInt(request.getParameter("seriePanturrilha"));
    int repPanturrilha = Integer.parseInt(request.getParameter("repPanturrilha"));
    int serieAbdominalObliquo = Integer.parseInt(request.getParameter("serieAbdominalObliquo"));
    int repAbdominalObliquo = Integer.parseInt(request.getParameter("repAbdominalObliquo"));
    String tempo = request.getParameter("tempo");
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
    
   
    
    try {
        Ficha ficha = new Ficha();
        ficha.setAluno(aluno);
        ficha.setSerieSupinoPlano(serieSupinoPlano);
        ficha.setRepSupinoPlano(repSupinoPlano);
        ficha.setSerieSupinoInclinado(serieSupinoInclinado);
        ficha.setRepSupinoInclinado(repSupinoInclinado);
        ficha.setSeriePulo(seriePulo);
        ficha.setRepPulo(repPulo);
        ficha.setSerieDesenvolvimento(serieDesenvolvimento);
        ficha.setRepDesenvolvimento(repDesenvolvimento);
        ficha.setSerieElevacaoFrontal(serieElevacaoFrontal);
        ficha.setRepElevacaoFrontal(repElevacaoFrontal);  
        ficha.setSerieEncolhimento(serieEncolhimento);  
        ficha.setRepEncolhimento(repEncolhimento);
        ficha.setSerieTricepsPulley(serieTricepsPulley);
        ficha.setRepTricepsPulley(repTricepsPulley);
        ficha.setSerieTricepsCorda(serieTricepsCorda);
        ficha.setRepTricepsCorda(repTricepsCorda);
        ficha.setSeriePrancha(seriePrancha);
        ficha.setRepPrancha(repPrancha);
        ficha.setSeriePuxador(seriePuxador);
        ficha.setRepPuxador(repPuxador);
        ficha.setSerieRemadaBaixa(serieRemadaBaixa);
        ficha.setRepRemadaBaixa(repRemadaBaixa);
        ficha.setSerieRemadaUnilateral(serieRemadaUnilateral);
        ficha.setRepRemadaUnilateral(repRemadaUnilateral);
        ficha.setSerieRoscaAlternada(serieRoscaAlternada);
        ficha.setRepRoscaAlternada(repRoscaAlternada);
        ficha.setSerieRoscaBarra(serieRoscaBarra);
        ficha.setRepRoscaBarra(repRoscaBarra);
        ficha.setSerieAbdominalInfra(serieAbdominalInfra);
        ficha.setRepAbdominalInfra(repAbdominalInfra);
        ficha.setSerieRolinha(serieRolinha);
        ficha.setRepRolinha(repRolinha);
        ficha.setSerieFortLombar(serieFortLombar); 
        ficha.setRepFortLombar(repFortLombar);
        ficha.setSerieAgachamento(serieAgachamento);   
        ficha.setRepAgachamento(repAgachamento);  
        ficha.setSerieCadExtensora(serieCadExtensora);
        ficha.setRepCadExtensora(repCadExtensora);
        ficha.setSerieCadAdutora(serieCadAdutora);
        ficha.setRepCadAdutora(repCadAdutora);
        ficha.setSerieMesaFlex(serieMesaFlex);
        ficha.setRepMesaFlex(repMesaFlex);
        ficha.setSeriePanturrilha(seriePanturrilha);
        ficha.setRepPanturrilha(repPanturrilha);
        ficha.setSerieAbdominalObliquo(serieAbdominalObliquo);
        ficha.setRepAbdominalObliquo(repAbdominalObliquo);
        ficha.setTempo(tempo);
        ficha.setExer1(exer1);
        ficha.setSerieExer1(serieExer1);
        ficha.setRepExer1(repExer1);
        ficha.setExer2(exer2);
        ficha.setSerieExer2(serieExer2);
        ficha.setRepExer2(repExer2);
        ficha.setExer3(exer3);
        ficha.setSerieExer3(serieExer3);
        ficha.setRepExer3(repExer3);
        ficha.setAerobico(aerobico);
        FichaBD.inserir(ficha);
        response.sendRedirect("listar.jsp?resposta=OK&codigo="+codigo);
    } catch (Exception excecao) {
        response.sendRedirect("fichaMasculina.jsp?resposta=" + excecao.getMessage());
    }
      

%>
