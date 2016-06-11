package com.best2pay.khomutov;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;


@Controller
public class HomeController {

    @RequestMapping(value = {"/page1", "/"}, method = RequestMethod.GET)
    public String firstPage(Model model) {
        model.addAttribute("firstPageMessage", "This is the first page");
        model.addAttribute("loginForm", new LoginForm());
        return "firstpage";
    }

    @RequestMapping(value = {"/page1", "/"}, method = RequestMethod.POST)
    public String checkPersonInfo(@Valid LoginForm loginForm, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "firstpage";
        }
        return "redirect:/page2";
    }

    @RequestMapping(value = "/page2", method = RequestMethod.GET)
    public String secondPage(Model model) {
        model.addAttribute("secondPageMessage", "This is the second page");
        return "secondpage";
    }


}
