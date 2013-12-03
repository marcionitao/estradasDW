/*
 * As boas praticas recomendam que esta classe tenha a finalidade de executar e 
 * implementar os metodos definidos na classe abstrata MenuService, de forma 
 * a separar as aguas.
 */
package pt.estradasDW.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pt.estradasDW.dao.MenuDao;
import pt.estradasDW.model.Menu;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuDao menuDao;

    @Transactional 
    public void addMenu(Menu menu) {
        menuDao.addMenu(menu);
    }

    @Transactional
    public void editMenu(Menu menu) {
        menuDao.editMenu(menu);
    }

    @Transactional
    public void deleteMenu(int id_menu) {
        menuDao.deleteMenu(id_menu);
    }

    @Transactional
    public Menu getMenu(int id_menu) {
        return menuDao.getMenu(id_menu);
    }

    @Transactional
    public List getAllMenu() {
        return menuDao.getAllMenu();
    }
    
    @Transactional
    public List listMenu() {
        return menuDao.listMenu();
    }
}
