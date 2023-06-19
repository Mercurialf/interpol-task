package com.example.interpol.repositories;

import com.example.interpol.entities.Criminal;
import com.example.interpol.entities.Organization;
import com.example.interpol.entities.SimpleCriminal;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface CriminalRepository extends JpaRepository<Criminal, Integer> {
    List<SimpleCriminal> findByIdNotNull();

    Criminal findCriminalById(int id);

    List<SimpleCriminal> findCriminalsByOrganization(Organization organization);

    default List<Criminal> findBy(Integer id, String surname, String name, String nickname, String profession) {
        Criminal criminal = new Criminal();
        criminal.setId(id);
        criminal.setSurname(surname);
        criminal.setName(name);
        criminal.setNickname(nickname);
        criminal.setCriminalProfession(profession);

        ExampleMatcher exampleMatcher = ExampleMatcher.matching()
                .withIgnoreCase()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
        Example<Criminal> criminalExample = Example.of(criminal, exampleMatcher);
        return findAll(criminalExample);
    }

    default List<Criminal> findBy(Integer id, String surname, String name, String nickname, Double height,
                                  String hairColor, String eyeColor,
                                  String specialSigns, String citizenship, String languages,
                                  String criminalProfession, String lastThing, String location,
                                  String birthplace, LocalDate dateOfBirth) {
        Criminal criminal = new Criminal();
        criminal.setId(id);
        criminal.setSurname(surname);
        criminal.setName(name);
        criminal.setNickname(nickname);
        criminal.setHeight(height);
        criminal.setHairColor(hairColor);
        criminal.setEyeColor(eyeColor);
        criminal.setSpecialSigns(specialSigns);
        criminal.setCitizenship(citizenship);
        criminal.setLanguages(languages);
        criminal.setCriminalProfession(criminalProfession);
        criminal.setLastThing(lastThing);
        criminal.setLocation(location);
        criminal.setBirthplace(birthplace);
        criminal.setDateOfBirth(dateOfBirth);

        ExampleMatcher exampleMatcher = ExampleMatcher.matching()
                .withIgnoreCase()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
        Example<Criminal> criminalExample = Example.of(criminal, exampleMatcher);
        return findAll(criminalExample);
    }
}