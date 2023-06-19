package com.example.interpol.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.Hibernate;

import java.time.LocalDate;
import java.util.Objects;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "archive")
public class Archive {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "surname", nullable = false, length = 50)
    private String surname;

    @Column(name = "name", nullable = false, length = 50)
    private String name;

    @Column(name = "nickname", nullable = false, length = 50)
    private String nickname;

    @Column(name = "height")
    private Double height;

    @Column(name = "hair_color", length = 20)
    private String hairColor;

    @Column(name = "eye_color", length = 20)
    private String eyeColor;

    @Column(name = "special_signs", length = 200)
    private String specialSigns;

    @Column(name = "citizenship")
    private String citizenship;

    @Column(name = "languages")
    private String languages;

    @Column(name = "criminal_profession", nullable = false)
    private String criminalProfession;

    @Column(name = "last_thing")
    private String lastThing;

    @Column(name = "location")
    private String location;

    @Column(name = "birthplace")
    private String birthplace;

    @Column(name = "date_of_birth")
    private LocalDate dateOfBirth;

    @ManyToOne
    @JoinColumn(name = "organization_id")
    private Organization organization;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        Archive archive = (Archive) o;
        return getId() != null && Objects.equals(getId(), archive.getId());
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}