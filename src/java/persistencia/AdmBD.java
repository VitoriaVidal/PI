package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Adm;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;


public class AdmBD {
    
    private static String caminho = "C:\\Users\\maria\\Desktop\\Academia";
    
    private static ArrayList<Adm> lista = new ArrayList<Adm>();
    //adiciona um objeto da classe Adm 
    //na lista que simula o banco de dados
    public static void inserir(Adm adm){
        lerXml();
        if (lista.size() == 0){
            adm.setCodigo(1);
        }else{
            int ultimoCodigo = lista.get(lista.size()-1).getCodigo();
            adm.setCodigo(ultimoCodigo + 1);
        }
        lista.add(adm);
        salvarXml();
    }
    
    public static void alterar(Adm adm){
        lerXml();
        excluir(adm.getCodigo());
        inserir(adm);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe adm
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Adm cadaAdm = lista.get(i);
            
            //procura o adm que tem o "campo" igual 
            //Ã  variavel do "campo", que esta chegando entre
            //os paranteses
            if (cadaAdm.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    public static ArrayList<Adm> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Adm getByNome(String nome){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Adm cadaAdm = lista.get(i);
            if (cadaAdm.getNome().equals(nome)){
                return cadaAdm;                
            }
        }
        return null;
    }
    
    public static Adm getByCodigo(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Adm cadaAdm = lista.get(i);
            if (cadaAdm.getCodigo() == codigo){
                return cadaAdm;                
            }
        }
        return null;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "adms.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("adm",Adm.class);
            lista = (ArrayList<Adm>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Adm>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("adm",Adm.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "adms.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    // buscar o login e a senha para verificação no seu login
     public static Adm procurarPorLoginSenha(String login, String senha){
        lerXml();
        Adm admEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Adm adm = lista.get(i);
            if (adm.getLogin().equals(login) && adm.getSenha().equals(senha)){
                admEncontrado = adm;
                break;
            }
        }
        return admEncontrado;
    }
}