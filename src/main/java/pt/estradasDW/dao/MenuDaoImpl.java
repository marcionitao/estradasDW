/*
 * A classe MenuDaoImpl implementa a interface de acesso a dados MenuDAO 
 * que define métodos como list() , Add() , Delete(), Edit(), etc, para acessar 
 * os dados do banco de dados.
 */
package pt.estradasDW.dao;

import java.util.List;
import javax.management.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pt.estradasDW.model.Menu;

@Repository
public class MenuDaoImpl implements MenuDao {

    // Isto é usado para que haja um fio automatico de dependência do MenuDaoImpl na SessionFactory.
    @Autowired 
    private SessionFactory session;
    
    @Override
    public void addMenu(Menu menu) {
           session.getCurrentSession().save(menu);         
    }
    
    @Override
    public void editMenu(Menu menu) {
          session.getCurrentSession().update(menu);
    }

    @Override
    public void deleteMenu(int id_menu) {
         session.getCurrentSession().delete(getMenu(id_menu));
    }
    
    @Override
    public Menu getMenu(int id_menu) {      
         return (Menu)session.getCurrentSession().get(Menu.class, id_menu);
    }   
    
    @Override 
    public List getAllMenu() {
        //faz uma query a tabela Menu e ordena por ordem de inclusão, e devolve uma lista
        return session.getCurrentSession().createQuery("from Menu").list();
    }
    
    //Metodo irá garantir o minimo e o máximo de itens do menu
    @Override 
    public List listMenu() {
        String hql = "FROM Menu";
        org.hibernate.Query query = session.getCurrentSession().createQuery(hql);
        query.setFirstResult(0);
        query.setMaxResults(5);
        List results = query.list();
        return results;
    }
    
}