/*
 * A classe NoticiaDaoImpl implementa a interface de acesso a dados MenuDAO 
 * que define métodos como list() , Add() , Delete(), Edit(), etc, para acessar 
 * os dados do banco de dados.
 */
package pt.estradasDW.dao;

import java.util.List;
import javax.management.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pt.estradasDW.model.Noticia;

@Repository
public class NoticiaDaoImpl implements NoticiaDao {

    // Isto é usado para que haja um fio automatico de dependência do MenuDaoImpl na SessionFactory.
    @Autowired 
    private SessionFactory session;
    
    @Override
    public void addNoticia(Noticia noticia) {
           session.getCurrentSession().save(noticia);         
    }
    
    @Override
    public void editNoticia(Noticia noticia) {
          session.getCurrentSession().update(noticia);
    }

    @Override
    public void deleteNoticia(int id_noticia) {
         session.getCurrentSession().delete(getNoticia(id_noticia));
    }
    
    @Override
    public Noticia getNoticia(int id_noticia) {      
         return (Noticia)session.getCurrentSession().get(Noticia.class, id_noticia);
    }   
    
    @Override 
    public List getAllNoticia() {
        //faz uma query a tabela Menu e ordena por ordem de inclusão, e devolve uma lista
        return session.getCurrentSession().createQuery("from Noticia").list();
    }
    
    //Metodo irá garantir o minimo e o máximo de noticias
    @Override 
    public List listNoticia() {
        String hql = "from Noticia order by data_noticia desc";
        org.hibernate.Query query = session.getCurrentSession().createQuery(hql);
        query.setFirstResult(0);
        query.setMaxResults(5);
        List results = query.list();
        return results;
    }
    
}