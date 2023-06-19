package com.example.interpol.controllers;

import com.example.interpol.beans.ArchiveService;
import com.example.interpol.entities.Archive;
import com.example.interpol.entities.SimpleArchive;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@AllArgsConstructor
public class ArchiveController {

    private ArchiveService archiveService;

    @GetMapping("/archive")
    public String archive(Model model) {
        List<SimpleArchive> simpleArchiveList = archiveService.getSimpleArchive();
        model.addAttribute("archiveList", simpleArchiveList);
        return "archive";
    }

    @GetMapping("/archive_dossier")
    public String archiveDossier(@RequestParam Integer id, Model model) {
        model.addAttribute("criminal", archiveService.getArchiveById(id));
        return "dossier";
    }

    @GetMapping("/search_archive")
    public String searchArchive(@RequestParam(value = "id", required = false) Integer id,
                                @RequestParam(value = "surname", required = false) String surname,
                                @RequestParam(value = "name", required = false) String name,
                                @RequestParam(value = "nickname", required = false) String nickname,
                                @RequestParam(value = "profession", required = false) String profession,
                                Model model) {
        List<Archive> archiveList = archiveService.search(id, surname, name, nickname, profession);
        model.addAttribute("archiveList", archiveList);
        return "archive";
    }
}
