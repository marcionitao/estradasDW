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
import pt.estradasDW.model.Noticia;

import pt.estradasDW.service.MenuService;
import pt.estradasDW.service.NoticiaService;

@Controller
public class NoticiaController {

    @Autowired
    private NoticiaService noticiaService;
    
    //metodo para listar todas as noticias
    @RequestMapping(value = "/homedw/admin/listNoticia", method = RequestMethod.GET)
    public String listNoticia(Map<String, Object> map) {

        map.put("noticiaList", noticiaService.getAllNoticia());

        return "listNoticia";
    }
    
    //metodo que cria o fomulario para criar os itens de menu
    @RequestMapping(value= "/homedw/admin/novaNoticia", method = RequestMethod.GET)
    public String form(ModelMap map) {
        
        Noticia noticia = new Noticia();

        map.addAttribute("noticia", noticia);

        return "createNoticia";
    }
  
    //metodo que grava no DB o fomulario de criar itens
    @RequestMapping(value= "/homedw/admin/listNoticia", method = RequestMethod.POST)
    public String doActions(@ModelAttribute("noticia") Noticia noticia) {
               
        noticiaService.addNoticia(noticia);
     
        return "redirect:/homedw/admin/listNoticia.html";
    }
    
     //metodo que traz o conteudo do item que se pretende editar
    @RequestMapping(value = "/homedw/admin/editNoticia/{id}/edit", method = RequestMethod.GET)
    public String editForm(@PathVariable("id") int idNoticia, ModelMap map) {

        Noticia noticia = noticiaService.getNoticia(idNoticia);
        map.addAttribute("noticia", noticia);

        return "updateNoticia";
    }

    //acção de editar os itens de menu
    @RequestMapping(value="/**", method = RequestMethod.POST)
    public String updateNoticia(@ModelAttribute("noticia")  Noticia noticia) {

        noticiaService.editNoticia(noticia);

        return "redirect:/homedw/admin/listNoticia.html";
    }
    
}