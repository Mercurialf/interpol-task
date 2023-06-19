package com.example.interpol.beans;

import com.example.interpol.entities.Archive;
import com.example.interpol.entities.SimpleArchive;
import com.example.interpol.repositories.ArchiveRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@AllArgsConstructor
public class ArchiveService {

    private final ArchiveRepository repository;


    public List<SimpleArchive> getSimpleArchive() {
        return repository.findByIdNotNull();
    }

    public Archive getArchiveById(Integer id) {
        return repository.findArchiveById(id);
    }

    public void delete(Integer id) {
        repository.deleteById(id);
    }

    public List<Archive> search(Integer id, String surname, String name, String nickname, String profession) {
        return repository.findBy(id, surname, name, nickname, profession);
    }

    public List<Archive> advancedSearch(Integer id, String surname, String name, String nickname, Double
            height, String hairColor, String eyeColor, String specialSigns, String
                                                citizenship, String languages, String criminalProfession, String
                                                lastThing, String location, String birthplace, LocalDate dateOfBirth) {
        return repository.findBy(id, surname, name, nickname, height, hairColor, eyeColor, specialSigns, citizenship,
                languages, criminalProfession, lastThing, location, birthplace, dateOfBirth);
    }
}
