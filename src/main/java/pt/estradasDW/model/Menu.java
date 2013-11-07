/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pt.estradasDW.model;

import java.io.Serializable;
import javax.persistence.*;

@Entity //informa ao Hibernate que esta classe representa um objeto que pode persistir.
@Table(name="MENU")
public class Menu implements Serializable{
    
    @Id
    @Column//anotação é usada para mapear essa propriedade para a coluna nome na tabela de Studants.
    @GeneratedValue(strategy = GenerationType.AUTO) //for autonumber
    private int id_menu;
    @Column
    private String item_menu;
    @Column
    private String descricao_menu;
   // @Column(name = "url", columnDefinition = "String default #")
    @Column
    private String url;
    
    public Menu(){}

    public Menu(int id_menu, String item_menu, String descricao_menu, String url) {
        this.id_menu = id_menu;
        this.item_menu = item_menu;
        this.descricao_menu = descricao_menu;
        this.url = url;
    }

    public String getDescricao_menu() {
        return descricao_menu;
    }

    public void setDescricao_menu(String descricao_menu) {
        this.descricao_menu = descricao_menu;
    }

    public int getId_menu() {
        return id_menu;
    }

    public void setId_menu(int id_menu) {
        this.id_menu = id_menu;
    }

    public String getItem_menu() {
        return item_menu;
    }

    public void setItem_menu(String item_menu) {
        this.item_menu = item_menu;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    } 
    
}
