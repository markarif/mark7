package com.newassignment.dao;

import com.newassignment.models.Drug;

import java.util.List;

/**
 * Created by markarif on 5/13/2015.
 */
public interface DrugDao {
    public int addDrug(Drug drug);
    public void updateDrug(Drug drug);
    public List<Drug> listDrug();
    public Drug getDrugById(int id);
    public void removeDrug(int id);
}
