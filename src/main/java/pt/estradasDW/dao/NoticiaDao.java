package pt.estradasDW.dao;

import java.util.List;
import pt.estradasDW.model.Menu;
import pt.estradasDW.model.Noticia;

public interface NoticiaDao {

    public void addNoticia(Noticia noticia);

    public void editNoticia(Noticia noticia);

    public void deleteNoticia(int id_noticia);

    public Noticia getNoticia(int id_noticia);

    public List getAllNoticia();
    
    public List listNoticia();
}
