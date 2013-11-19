package pt.estradasDW.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pt.estradasDW.model.Menu;

import pt.estradasDW.service.MenuService;

@Controller
public class AdminController {

    @Autowired
    private MenuService menuService;

      //metodo que cria o fomulario para criar as receitas
    @RequestMapping("/homedw/admin/listMenu")
    public String form(ModelMap map) {

        Menu menu = new Menu();

        map.addAttribute("menu", menu);
       
        map.addAttribute("menuList", menuService.getAllMenu());

        return "listMenu";
    }

    /*@RequestMapping(value = "/homedw/admin/menu.do", method = RequestMethod.POST)
    public String doActions(@ModelAttribute Menu menu, BindingResult result, @RequestParam String action, Map<String, Object> map) {
        Menu menuResult = new Menu();

            menuService.addMenu(menu);
            menuResult = menu;      

        map.put("menu", menuResult);
        map.put("menuList", menuService.getAllMenu());
        return "listMenu";
    }
    
     @RequestMapping(value = "/menu/{id}", method = RequestMethod.GET)
    public String editForm(@PathVariable("id") int idMenu, ModelMap map) {

        Menu menu = menuService.getMenu(idMenu);
        map.addAttribute("menu", menu);
       
        return "updateMenu";
    }

    //acção de editar as receitas
    @RequestMapping("/menu/*")
    public String update(@ModelAttribute("receita") Menu menu) {

        menuService.editMenu(menu);

        return "redirect:/listMenu";

    }*/
    
      //metodo para eliminar a receita
    @RequestMapping("/listMenu/{id}")
    public String deleteReceita(@PathVariable("id") int idMenu) {
        //chama o metodo e passa o valor do id do registo a ser eliminado
        menuService.deleteMenu(idMenu);

        //após eliminar ele redireciona para o listarReceita
        return "redirect:/listMenu";
    }
}