/*
 * As boas praticas recomendam que esta classe tenha a finalidade de executar e 
 * implementar os metodos definidos na classe abstrata NoticiaService, de forma 
 * a separar as aguas.
 */
package pt.estradasDW.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pt.estradasDW.dao.NoticiaDao;
import pt.estradasDW.model.Noticia;

@Service
public class NoticiaServiceImpl implements NoticiaService {

    @Autowired
    private NoticiaDao noticiaDao;

    @Transactional 
    public void addNoticia(Noticia noticia) {
        noticiaDao.addNoticia(noticia);
    }

    @Transactional
    public void editNoticia(Noticia noticia) {
        noticiaDao.editNoticia(noticia);
    }

    @Transactional
    public void deleteNoticia(int id_noticia) {
        noticiaDao.deleteNoticia(id_noticia);
    }

    @Transactional
    public Noticia getNoticia(int id_noticia) {
        return noticiaDao.getNoticia(id_noticia);
    }

    @Transactional
    public List getAllNoticia() {
        return noticiaDao.getAllNoticia();
    }
    
    @Transactional
    public List listNoticia() {
        return noticiaDao.listNoticia();
    }
}
