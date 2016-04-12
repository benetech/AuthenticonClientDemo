package org.benetech.authenticon;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@EnableAutoConfiguration
public class AuthenticonClientController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    String get(Model model) {

    	model.addAttribute("token", new Token());
    	System.out.println("Setting up token");
        return "form";
    }
    
    @RequestMapping(value = "/", method = RequestMethod.POST)
    String post(@ModelAttribute Token token, Model model) {

    	model.addAttribute("icons", "");
        return "result";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(AuthenticonClientController.class, args);
    }

}