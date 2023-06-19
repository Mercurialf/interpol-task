package com.example.interpol.beans

import com.example.interpol.entities.Criminal
import com.example.interpol.entities.Organization
import com.example.interpol.entities.SimpleCriminal
import com.example.interpol.repositories.CriminalRepository
import org.springframework.stereotype.Service
import java.time.LocalDate

@Service
class CriminalService(private val repository: CriminalRepository) {
    fun getSimpleCriminals(): List<SimpleCriminal> {
        return repository.findByIdNotNull()
    }

    fun getCriminalById(id: Int): Criminal? {
        return repository.findCriminalById(id)
    }

    fun findCriminalByOrganization(organization: Organization): List<SimpleCriminal> {
        return repository.findCriminalsByOrganization(organization)
    }

    fun delete(id: Int) {
        repository.deleteById(id)
    }

    fun search(id: Int?, surname: String?, name: String?, nickname: String?, profession: String?): List<Criminal> {
        return repository.findBy(id, surname, name, nickname, profession)
    }

    fun advancedSearch(
        id: Int?,
        surname: String?,
        name: String?,
        nickname: String?,
        height: Double?,
        hairColor: String?,
        eyeColor: String?,
        specialSigns: String?,
        citizenship: String?,
        languages: String?,
        criminalProfession: String?,
        lastThing: String?,
        location: String?,
        birthplace: String?,
        dateOfBirth: LocalDate?
    ): List<Criminal> {
        return repository.findBy(
            id,
            surname,
            name,
            nickname,
            height,
            hairColor,
            eyeColor,
            specialSigns,
            citizenship,
            languages,
            criminalProfession,
            lastThing,
            location,
            birthplace,
            dateOfBirth
        )
    }
}