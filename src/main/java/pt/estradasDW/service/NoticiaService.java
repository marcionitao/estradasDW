/*
 * Esta classe é usada para armazenar as funções do projeto de negocios
 * as operações de base de dados reais (CRUD), não devem ser envolvidas nesta 
 * classe, ao vez disso, tem uma classe DAO(Noticia) para fazé-lo.
 * 
 */

package pt.estradasDW.service;

import java.util.List;
import pt.estradasDW.model.Noticia;

public interface NoticiaService {

    public void addNoticia(Noticia noticia);

    public void editNoticia(Noticia noticia);

    public void deleteNoticia(int id_noticia);

    public Noticia getNoticia(int id_noticia);

    public List getAllNoticia();
    
    public List listNoticia();
        
}
