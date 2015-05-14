package com.newassignment.dao;

import com.newassignment.models.Patient;

import java.util.List;

/**
 * Created by markarif on 5/13/2015.
 */
public interface PatientDao {
    public int addPatient(Patient patient);
    public void updatePatient(Patient patient);
    public List<Patient> listPatient();
    public Patient getPatientById(int id);
    public void removePerson(int id);
    public List<Patient> findAllWithDrugs();
}
