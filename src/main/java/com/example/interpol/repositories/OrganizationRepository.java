package com.example.interpol.repositories;

import com.example.interpol.entities.Organization;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrganizationRepository extends JpaRepository<Organization, Integer> {

    default List<Organization> findBy(Integer id, String name, String country) {
        Organization organization = new Organization();
        organization.setId(id);
        organization.setName(name);
        organization.setCountry(country);

        ExampleMatcher exampleMatcher = ExampleMatcher.matching()
                .withIgnoreCase()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
        Example<Organization> organizationExample = Example.of(organization, exampleMatcher);
        return findAll(organizationExample);
    }
}