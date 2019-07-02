package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Aluno;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;


public class AlunoBD {
    
    private static String caminho = "C:\\Users\\maria\\Desktop\\Academia";
    
    private static ArrayList<Aluno> lista = new ArrayList<Aluno>();
    //adiciona um objeto da classe Aluno 
    //na lista que simula o banco de dados
    public static void inserir(Aluno aluno){
        lerXml();
        if (lista.size() == 0){
            aluno.setCodigo(1);
        }else{
            int ultimoCodigo = lista.get(lista.size()-1).getCodigo();
            aluno.setCodigo(ultimoCodigo + 1);
        }
        lista.add(aluno);
        salvarXml();
    }
    
    public static void alterar(Aluno aluno){
        lerXml();
        excluir(aluno.getCodigo());
        inserir(aluno);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe aluno
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Aluno cadaAluno = lista.get(i);
            
            //procura o adm que tem o "campo" igual 
            //Ã  variavel do "campo", que esta chegando entre
            //os paranteses
            if (cadaAluno.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    public static ArrayList<Aluno> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Aluno getByNome(String nome){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Aluno cadaAluno = lista.get(i);
            if (cadaAluno.getNome().equals(nome)){
                return cadaAluno;                
            }
        }
        return null;
    }
    
    public static Aluno getByCodigo(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Aluno cadaAluno = lista.get(i);
            if (cadaAluno.getCodigo() == codigo){
                return cadaAluno;                
            }
        }
        return null;
    }
    
    private static void lerXml(){
        File arquivo=new File(caminho + "alunos.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("aluno",Aluno.class);
            lista = (ArrayList<Aluno>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Aluno>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("aluno",Aluno.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "alunos.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    // buscar o login e a senha para verificação no seu login
     public static Aluno procurarPorLoginSenha(String login, String senha){
        lerXml();
        Aluno alunoEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Aluno aluno = lista.get(i);
            if (aluno.getLogin().equals(login) && aluno.getSenha().equals(senha)){
                alunoEncontrado = aluno;
                break;
            }
        }
        return alunoEncontrado;
    }
}