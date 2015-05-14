package com.newassignment.services;

import com.newassignment.dao.DrugDao;
import com.newassignment.models.Drug;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by markarif on 5/13/2015.
 */
public class DrugServiceImpl implements DrugService {
    @Autowired
    DrugDao drugDao;

    @Override
    public int addDrug(Drug drug) {
        return drugDao.addDrug(drug);
    }

    @Override
    public void updateDrug(Drug drug) {

    }

    @Override
    public List<Drug> listDrug() {
        return drugDao.listDrug();
    }

    @Override
    public Drug getDrugById(int id) {
        return drugDao.getDrugById(id);
    }

    @Override
    public void removeDrug(int id) {

    }
}