package com.example.interpol.beans;

import com.example.interpol.entities.Archive;
import com.example.interpol.entities.Criminal;
import com.example.interpol.repositories.ArchiveRepository;
import com.example.interpol.repositories.CriminalRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class ObjectService {

    private final CriminalRepository criminalRepository;
    private final ArchiveRepository archiveRepository;

    public void moveCriminalToArchive(Integer id) {
        Criminal criminal = criminalRepository.findCriminalById(id);
        if (criminal != null) {
            Archive archive = criminal.toArchive();
            archiveRepository.save(archive);
            criminalRepository.deleteById(id);
        }
    }
}
