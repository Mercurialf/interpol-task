package com.example.interpol.controllers

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping

@Controller
class HomeController {
    @GetMapping("/index")
    fun backToMain(): String {
        return "redirect:/"
    }
}