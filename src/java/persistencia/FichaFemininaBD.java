package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Aluno;
import dominio.FichaFeminina;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class FichaFemininaBD {
    
    private static String caminho = "C:\\Users\\maria\\Desktop\\Academia";
    
    private static ArrayList<FichaFeminina> lista = new ArrayList<FichaFeminina>();
    //adiciona um objeto da classe Detento 
    //na lista que simula o banco de dados
    public static void inserir(FichaFeminina ficha){
        lerXml();
        if (lista.size() == 0){
            ficha.setCodigo(1);
        }else{
            int ultimoCodigo = lista.get(lista.size()-1).getCodigo();
            ficha.setCodigo(ultimoCodigo + 1);
        }
        lista.add(ficha);
        salvarXml();
    }
    
    public static void alterar(FichaFeminina ficha){
        lerXml();
        excluir(ficha.getCodigo());
        inserir(ficha);
        salvarXml();
    }
    
     public static FichaFeminina getByCodigo(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            FichaFeminina cadaFicha = lista.get(i);
            if (cadaFicha.getCodigo() == (codigo)){
                return cadaFicha;                
            }
        }
        return null;
    }
     
   public static ArrayList<FichaFeminina> listarPorAluno(Aluno aluno){
        lerXml();
        ArrayList<FichaFeminina> filtro = new ArrayList<FichaFeminina>();
        for(int i=0; i < lista.size(); i++){
            FichaFeminina cadaFicha = lista.get(i);
            if (cadaFicha.getAluno().getCodigo() == aluno.getCodigo()){
                filtro.add(cadaFicha);
            }
        }
        return filtro;
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Detento
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            FichaFeminina cadaDetento = lista.get(i);
            
            //procura o adm que tem o "campo" igual 
            //Ã  variavel do "campo", que esta chegando entre
            //os paranteses
            if (cadaDetento.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    public static ArrayList<FichaFeminina> listar(Aluno aluno){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "fichas_femininas.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("ficha",FichaFeminina.class);
            lista = (ArrayList<FichaFeminina>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<FichaFeminina>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("ficha",FichaFeminina.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "fichas_femininas.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
}