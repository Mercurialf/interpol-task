package com.example.interpol.repositories;

import com.example.interpol.entities.Archive;
import com.example.interpol.entities.SimpleArchive;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface ArchiveRepository extends JpaRepository<Archive, Integer> {

    List<SimpleArchive> findByIdNotNull();

    Archive findArchiveById(Integer id);

    default List<Archive> findBy(Integer id, String surname, String name, String nickname, String profession) {
        Archive archive = new Archive();
        archive.setId(id);
        archive.setSurname(surname);
        archive.setName(name);
        archive.setNickname(nickname);
        archive.setCriminalProfession(profession);

        ExampleMatcher exampleMatcher = ExampleMatcher.matching()
                .withIgnoreCase()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
        Example<Archive> archiveExample = Example.of(archive, exampleMatcher);
        return findAll(archiveExample);
    }

    default List<Archive> findBy(Integer id, String surname, String name, String nickname, Double height,
                                 String hairColor, String eyeColor, String specialSigns, String citizenship,
                                 String language, String criminalProfession, String lastThing, String location,
                                 String birthplace, LocalDate dateOfBirth) {
        Archive archive = new Archive();
        archive.setId(id);
        archive.setSurname(surname);
        archive.setName(name);
        archive.setNickname(nickname);
        archive.setHeight(height);
        archive.setHairColor(hairColor);
        archive.setEyeColor(eyeColor);
        archive.setSpecialSigns(specialSigns);
        archive.setCitizenship(citizenship);
        archive.setLanguages(language);
        archive.setCriminalProfession(criminalProfession);
        archive.setLastThing(lastThing);
        archive.setLocation(location);
        archive.setBirthplace(birthplace);
        archive.setDateOfBirth(dateOfBirth);

        ExampleMatcher exampleMatcher = ExampleMatcher.matching()
                .withIgnoreCase()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
        Example<Archive> archiveExample = Example.of(archive, exampleMatcher);
        return findAll(archiveExample);
    }
}