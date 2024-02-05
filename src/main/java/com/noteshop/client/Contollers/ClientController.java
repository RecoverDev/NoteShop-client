package com.noteshop.client.Contollers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.client.RestTemplate;

import com.noteshop.client.Models.*;
import org.springframework.web.bind.annotation.PostMapping;




@Controller
@SessionAttributes("User")
public class ClientController {
    private RestTemplate rest = new RestTemplate();

    @ModelAttribute(name = "User")
    public User getUser(){
        return null;
    }

    @ModelAttribute(name = "goods")
    public List<Notebook> getGoods(){
        return null;
    } 

    @ModelAttribute(name = "good")
    public Notebook getGood(){
        return null;
    }

    @GetMapping
    public String home(Model model) {

        return "main";
    }

    @GetMapping("/Login")
    public String loginUser() {
        return "login";
    }

    @PostMapping("Login")
    public String setUser(Model model,String log, String pass) {
        User user =  rest.getForObject("http://localhost:8090/base/getusetbylogin/{login}/{pass}", User.class ,log, pass);
        model.addAttribute("User", user);

        return "redirect:/";

    }

    @GetMapping("notebooks")
    public String mainDiv(Model model) {
        var goods = rest.getForObject("http://localhost:8090/base/getnotebooks", List.class);
        model.addAttribute("goods", goods);
        return "goods";
    }

    @GetMapping("card/{id}")
    public String getCard(Model model, @PathVariable(name="id") String id) {
        Notebook good = rest.getForObject("http://localhost:8090/base/getnotebook/{id}", Notebook.class,id);
        model.addAttribute("good", good);
        return "good";
    }
    
    

    @GetMapping("about")
    public String getAbout() {
        return "about";
    }
    

    
}
