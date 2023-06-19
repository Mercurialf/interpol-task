package com.example.interpol.controllers;

import com.example.interpol.beans.ArchiveService;
import com.example.interpol.beans.CriminalService;
import com.example.interpol.entities.Archive;
import com.example.interpol.entities.Criminal;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.List;

@Controller
@AllArgsConstructor
public class SearchController {

    private CriminalService criminalService;
    private ArchiveService archiveService;

    @GetMapping("/search")
    public String search(@RequestParam(value = "id", required = false) Integer id,
                         @RequestParam(value = "surname", required = false) String surname,
                         @RequestParam(value = "name", required = false) String name,
                         @RequestParam(value = "nickname", required = false) String nickname,
                         @RequestParam(value = "height", required = false) Double height,
                         @RequestParam(value = "hair_color", required = false) String hair_color,
                         @RequestParam(value = "eye_color", required = false) String eye_color,
                         @RequestParam(value = "special_signs", required = false) String special_signs,
                         @RequestParam(value = "citizenship", required = false) String citizenship,
                         @RequestParam(value = "languages", required = false) String languages,
                         @RequestParam(value = "criminal_profession", required = false) String criminal_profession,
                         @RequestParam(value = "last_thing", required = false) String last_thing,
                         @RequestParam(value = "location", required = false) String location,
                         @RequestParam(value = "birthplace", required = false) String birthplace,
                         @RequestParam(value = "date_of_birth", required = false) LocalDate date_of_birth,
                         Model model) {
        List<Criminal> criminalList = criminalService.advancedSearch(id, surname, name, nickname,
                height, hair_color, eye_color, special_signs, citizenship, languages,
                criminal_profession, last_thing, location, birthplace, date_of_birth);
        List<Archive> archiveList = archiveService.advancedSearch(id, surname, name, nickname,
                height, hair_color, eye_color, special_signs, citizenship, languages,
                criminal_profession, last_thing, location, birthplace, date_of_birth);
        model.addAttribute("criminalList", criminalList);
        model.addAttribute("archiveList", archiveList);
        return "search";
    }
}