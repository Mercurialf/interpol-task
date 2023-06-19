package com.example.interpol.controllers;

import com.example.interpol.beans.CriminalService;
import com.example.interpol.entities.Criminal;
import com.example.interpol.entities.Organization;
import com.example.interpol.entities.SimpleCriminal;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@AllArgsConstructor
public class CriminalController {

    private CriminalService criminalService;

    @GetMapping("/criminals")
    public String criminals(Model model, HttpServletRequest request) {
        List<SimpleCriminal> criminalList = criminalService.getSimpleCriminals();
        String previousPage = request.getHeader("Referer");
        model.addAttribute("previousPage", previousPage);
        model.addAttribute("criminalList", criminalList);
        return "criminals";
    }

    @GetMapping("/dossier")
    public String dossier(@RequestParam Integer id, Model model, HttpServletRequest request) {
        String previousPage = request.getHeader("Referer");
        model.addAttribute("previousPage", previousPage);
        model.addAttribute("criminal", criminalService.getCriminalById(id));
        return "dossier";
    }

    @GetMapping("/members")
    public String members(@RequestParam Organization organization, Model model) {
        List<SimpleCriminal> criminalList = criminalService.findCriminalByOrganization(organization);
        model.addAttribute("criminalList", criminalList);
        model.addAttribute("organization", organization);
        return "/members";
    }

    @GetMapping("/search_criminal")
    public String searchCriminals(@RequestParam(value = "id", required = false) Integer id,
                                  @RequestParam(value = "surname", required = false) String surname,
                                  @RequestParam(value = "name", required = false) String name,
                                  @RequestParam(value = "nickname", required = false) String nickname,
                                  @RequestParam(value = "profession", required = false) String profession,
                                  Model model) {
        List<Criminal> criminalList = criminalService.search(id, surname, name, nickname, profession);
        model.addAttribute("criminalList", criminalList);
        return "criminals";
    }
}