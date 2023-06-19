package com.example.interpol.beans

import com.example.interpol.entities.Organization
import com.example.interpol.repositories.OrganizationRepository
import org.springframework.stereotype.Service

@Service
class OrganizationService(private val repository: OrganizationRepository) {
    fun getCriminalOrganizations(): List<Organization> {
        return repository.findAll()
    }

    fun delete(id: Int) {
        repository.deleteById(id)
    }

    fun addOrganization(name: String, country: String): Organization? {
        return try {
            val organization = Organization(name, country)
            repository.save(organization)
        } catch (exception: Exception) {
            null
        }
    }

    fun search(id: Int?, name: String?, country: String?): List<Organization> {
        return repository.findBy(id, name, country)
    }
}