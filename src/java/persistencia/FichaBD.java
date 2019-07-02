package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Ficha;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class FichaBD {
    
    private static String caminho = "D:\\PI2019";
    
    private static ArrayList<Ficha> lista = new ArrayList<Ficha>();
    //adiciona um objeto da classe Detento 
    //na lista que simula o banco de dados
    public static void inserir(Ficha ficha){
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
    
    public static void alterar(Ficha ficha){
        lerXml();
        excluir(ficha.getCodigo());
        inserir(ficha);
        salvarXml();
    }
    
    
    //recebe o atributo que identifica cada objeto
    //da classe Detento
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Ficha cadaDetento = lista.get(i);
            
            //procura o ficha que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaDetento.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    public static ArrayList<Ficha> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "fichas.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("ficha",Ficha.class);
            lista = (ArrayList<Ficha>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Ficha>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("ficha",Ficha.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "fichas.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
}