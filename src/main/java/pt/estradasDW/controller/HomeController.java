package pt.estradasDW.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pt.estradasDW.service.MenuService;
import pt.estradasDW.service.NoticiaService;

@Controller
public class HomeController {

    @Autowired
    private MenuService menuService;
    @Autowired
    private NoticiaService noticiaService;

    //metodo que irá listar os itens de menu. Os mesmos serão personalizados na pagina homeDW
    @RequestMapping(method = RequestMethod.GET, value = "/homedw")
    public String showHome(Map<String, Object> map) {

        map.put("menuList", menuService.listMenu());//lista os itens de menu
        map.put("noticiaList", noticiaService.listNoticia());//lista as noticias
        return "homeDW";
    }
    
    //metodo que irá abrir a pagina de Administração
    @RequestMapping(method = RequestMethod.GET, value = "/homedw/admin")
    public String showAdmin(Map<String, Object> map) {

        return "admin";
    }
    
}