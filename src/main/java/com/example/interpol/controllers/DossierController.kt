package com.example.interpol.controllers

import com.example.interpol.beans.ArchiveService
import com.example.interpol.beans.CriminalService
import com.example.interpol.beans.ObjectService
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam

@Controller
class DossierController(
    private val criminalService: CriminalService,
    private val objectService: ObjectService,
    private val archiveService: ArchiveService
) {
    @GetMapping("/delete_criminal")
    fun deleteCriminal(@RequestParam id: Int): String {
        criminalService.delete(id)
        return "redirect:/criminals"
    }

    @GetMapping("/delete_archive")
    fun deleteArchive(@RequestParam id: Int): String {
        archiveService.delete(id)
        return "redirect:/archive"
    }

    @GetMapping("/send_to_archive")
    fun sendToArchive(@RequestParam id: Int): String {
        objectService.moveCriminalToArchive(id)
        return "redirect:/criminals"
    }
}