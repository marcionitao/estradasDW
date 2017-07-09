package pt.estradasDW.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pt.estradasDW.model.Noticia;
import pt.estradasDW.service.NoticiaService;
import javax.servlet.http.HttpServletRequest;

@Controller
public class NoticiaController {

    @Autowired
    private NoticiaService noticiaService;
    
    //metodo para listar todas as noticias
    @RequestMapping(value = "/admin/listNoticia", method = RequestMethod.GET)
    public String listNoticia(Map<String, Object> map) {

        map.put("noticiaList", noticiaService.getAllNoticia());

        return "listNoticia";
    }
    
    //metodo que cria o fomulario para criar a noticia
    @RequestMapping(value= "/admin/novaNoticia", method = RequestMethod.GET)
    public String form(ModelMap map) {
        
        Noticia noticia = new Noticia();

        map.addAttribute("noticia", noticia);

        return "createNoticia";
    }
  
    //metodo que grava no DB o fomulario de criar noticia
    @RequestMapping(value= "/admin/listNoticia", method = RequestMethod.POST)
    public String doActions(@ModelAttribute("noticia") Noticia noticia) {
               
        noticiaService.addNoticia(noticia);
     
        //return "redirect:/homedw/admin/listNoticia.html";
        return "redirect:/admin/listNoticia";
    }
    
     //metodo que traz o conteudo da noticia que se pretende editar
    @RequestMapping(value = "/admin/editNoticia/{id}/edit", method = RequestMethod.GET)
    public String editForm(@PathVariable("id") int idNoticia, ModelMap map) {

        Noticia noticia = noticiaService.getNoticia(idNoticia);
        map.addAttribute("noticia", noticia);

        return "updateNoticia";
    }

    //acção de editar a noticia
    @RequestMapping(value = "/admin/editNoticia")
    public String updateNoticia(@ModelAttribute("noticia")  Noticia noticia, BindingResult errors) {

        noticiaService.editNoticia(noticia);
        if (errors.hasErrors()) {
            System.out.println(errors);
        }
        return "redirect:/admin/listNoticia";
    }
    
     //metodo para eliminar a noticia
    @RequestMapping(value = "/admin/deleteNoticia/{id}/delete")
    public String deleteNoticia(@PathVariable("id") int idNoticia) {
        //chama o metodo e passa o valor do id do registo a ser eliminado
        noticiaService.deleteNoticia(idNoticia);

        return "redirect:/admin/listNoticia";
    }
    
}