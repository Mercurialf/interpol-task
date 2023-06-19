package com.example.interpol.controllers;

import com.example.interpol.beans.OrganizationService;
import com.example.interpol.entities.Organization;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@AllArgsConstructor
public class OrganizationController {

    private OrganizationService organizationService;

    @GetMapping("/organizations")
    public String organizations(Model model) {
        List<Organization> organizationList = organizationService.getCriminalOrganizations();
        model.addAttribute("organizationList", organizationList);
        return "organizations";
    }

    @GetMapping("/delete_organization")
    public String deleteOrganization(@RequestParam Integer id) {
        organizationService.delete(id);
        return "redirect:/organizations";
    }

    @PostMapping("/add_organization")
    public String addOrganization(@RequestParam String name, @RequestParam String country, Model model) {
        Organization o = organizationService.addOrganization(name, country);
        if (o != null) {
            return "redirect:/organizations";
        } else {
            model.addAttribute("message", "Error adding organization");
            return "error";
        }
    }

    @GetMapping("/search_organization")
    public String searchOrganization(@RequestParam(value = "id", required = false) Integer id,
                                     @RequestParam(value = "name", required = false) String name,
                                     @RequestParam(value = "country", required = false) String country,
                                     Model model) {
        List<Organization> organizationList = organizationService.search(id, name, country);
        model.addAttribute("organizationList", organizationList);
        return "organizations";
    }
}