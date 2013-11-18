package pt.estradasDW.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pt.estradasDW.model.Menu;

import pt.estradasDW.service.MenuService;

@Controller
public class AdminController {

    @Autowired
    private MenuService menuService;

      //metodo que cria o fomulario para criar as receitas
    @RequestMapping("/homedw/admin/menu")
    public String form(ModelMap map) {

        Menu menu = new Menu();

        map.addAttribute("menu", menu);
       
        map.addAttribute("menuList", menuService.getAllMenu());

        return "menu";
    }

    @RequestMapping(value = "/homedw/admin/menu.do", method = RequestMethod.POST)
    public String doActions(@ModelAttribute Menu menu, BindingResult result, @RequestParam String action, Map<String, Object> map) {
        Menu menuResult = new Menu();


        if (action.equals("add")) {

            menuService.addMenu(menu);
            menuResult = menu;
        } else if (action.equals("edit")) {

            menuService.editMenu(menu);
            menuResult = menu;

        } else if (action.equals("delete")) {

            menuService.deleteMenu(menu.getId_menu());
            menuResult = new Menu();

        } 

        map.put("menu", menuResult);
        map.put("menuList", menuService.getAllMenu());
        return "menu";
    }
}