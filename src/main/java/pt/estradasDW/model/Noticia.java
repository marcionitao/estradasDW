
package pt.estradasDW.model;

import org.hibernate.validator.constraints.NotBlank;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity //informa ao Hibernate que esta classe representa um objeto que pode persistir.
@Table(name="noticias")
public class Noticia implements Serializable{
    
    @Id
    @Column//anotação é usada para mapear essa propriedade para a coluna nome na tabela de Studants.
    @GeneratedValue(strategy = GenerationType.AUTO) //for autonumber
    private int id_noticia;

    @NotNull
    @NotBlank
    @Column(name = "titulo_noticia", nullable = true, length = 400)
    private String titulo_noticia;

    @NotNull
    @NotBlank
    @Column(name = "descricao_noticia", nullable = true, length = 900)
    private String descricao_noticia;

    @NotNull
    @NotBlank
    @Column(name = "data_noticia", nullable = true, columnDefinition = "TIMESTAMP default 0")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date data_noticia;

    public Noticia() {
    }

    public Noticia(int id_noticia, String titulo_noticia, String descricao_noticia, Date data_noticia) {
        this.id_noticia = id_noticia;
        this.titulo_noticia = titulo_noticia;
        this.descricao_noticia = descricao_noticia;
        this.data_noticia = data_noticia;
    }

    public Date getData_noticia() {
        return data_noticia;
    }

    public void setData_noticia(Date data_noticia) {
        this.data_noticia = data_noticia;
    }

    public String getDescricao_noticia() {
        return descricao_noticia;
    }

    public void setDescricao_noticia(String descricao_noticia) {
        this.descricao_noticia = descricao_noticia;
    }

    public int getId_noticia() {
        return id_noticia;
    }

    public void setId_noticia(int id_noticia) {
        this.id_noticia = id_noticia;
    }

    public String getTitulo_noticia() {
        return titulo_noticia;
    }

    public void setTitulo_noticia(String titulo_noticia) {
        this.titulo_noticia = titulo_noticia;
    }

}
