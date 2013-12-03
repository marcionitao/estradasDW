package pt.estradasDW.dao;

import java.util.List;
import pt.estradasDW.model.Menu;

public interface MenuDao {

    public void addMenu(Menu menu);

    public void editMenu(Menu menu);

    public void deleteMenu(int id_menu);

    public Menu getMenu(int id_menu);

    public List getAllMenu();
    
    public List listMenu();
}
