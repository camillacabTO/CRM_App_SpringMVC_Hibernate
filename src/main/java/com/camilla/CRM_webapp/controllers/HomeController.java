package com.camilla.CRM_webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String showMainPage() {
        return "redirect:/spring/customer/list";
    }

}
