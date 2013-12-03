/*
 * Esta classe é usada para armazenar as funções do projeto de negocios
 * as operações de base de dados reais (CRUD), não devem ser envolvidas nesta 
 * classe, ao vez disso, tem uma classe DAO(Menu) para fazé-lo.
 * 
 */

package pt.estradasDW.service;

import java.util.List;
import pt.estradasDW.model.Menu;

public interface MenuService {

    public void addMenu(Menu menu);

    public void editMenu(Menu menu);

    public void deleteMenu(int id_menu);

    public Menu getMenu(int id_menu);

    public List getAllMenu();
    
    public List listMenu();
        
}
