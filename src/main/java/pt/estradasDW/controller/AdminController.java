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

    //metodo para listar os itens de menu
    @RequestMapping(value = "/homedw/admin/listMenu", method = RequestMethod.GET)
    public String listMenu(Map<String, Object> map) {

        map.put("menuList", menuService.getAllMenu());

        return "listMenu";
    }

    //metodo que cria o fomulario para criar os itens de menu
    @RequestMapping(value= "/homedw/admin/novoItem", method = RequestMethod.GET)
    public String form(ModelMap map) {

        Menu menu = new Menu();

        map.addAttribute("menu", menu);

        return "createMenu";
    }
  
    //metodo que grava no DB o fomulario de criar itens
    @RequestMapping(value= "/homedw/admin/listMenu", method = RequestMethod.POST)
    public String doActions(@ModelAttribute("menu") Menu menu) {
               
        menuService.addMenu(menu);
     
        return "redirect:/homedw/admin/listMenu.html";
    }
    
    //metodo que traz o conteudo do item que se pretende editar
    @RequestMapping(value = "/homedw/admin/editItem/{id}/edit", method = RequestMethod.GET)
    public String editForm(@PathVariable("id") int idMenu, ModelMap map) {

        Menu menu = menuService.getMenu(idMenu);
        map.addAttribute("menu", menu);

        return "updateMenu";
    }

    //acção de editar os itens de menu
    @RequestMapping("/**")
    public String update(@ModelAttribute("menu") Menu menu) {

        menuService.editMenu(menu);

        return "redirect:/homedw/admin/listMenu.html";
    }

    //metodo para eliminar a receita
    @RequestMapping(value = "/homedw/admin/deleteItem/{id}/delete")
    public String deleteReceita(@PathVariable("id") int idMenu) {
        //chama o metodo e passa o valor do id do registo a ser eliminado
        menuService.deleteMenu(idMenu);

        //após eliminar ele redireciona para o listar itensdo menu
        return "redirect:/homedw/admin/listMenu.html";
    }
}