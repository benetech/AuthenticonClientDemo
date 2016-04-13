package org.benetech.authenticon;


import io.swagger.client.ApiException;

import java.util.List;

import org.benetech.authenticon.api.client.DefaultApi;
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
        return "form";
    }
    
    @RequestMapping(value = "/", method = RequestMethod.POST)
    String post(@ModelAttribute Token token, Model model) {
    	
    	String inToken = token.getToken();

    	DefaultApi authenticonClientApi = new DefaultApi();
    	List<String> icons = null;
		try {
			icons = authenticonClientApi.iconifyInput(inToken);
		} catch (ApiException e) {
			model.addAttribute("message", e.getMessage());
		}
		catch (Exception e) {
			model.addAttribute("message", e.getMessage());
		}
    	model.addAttribute("icons", icons);
        return "result";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(AuthenticonClientController.class, args);
    }

}