package com.newassignment.dao;

import com.newassignment.models.Drug;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * Created by markarif on 5/13/2015.
 */
@Repository
public class DrugDaoImpl implements DrugDao {
    @Autowired
    SessionFactory sessionFactory;
    @Transactional
    @Override
    public int addDrug(Drug drug) {
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(drug);
        tx.commit();
        Serializable id = session.getIdentifier(drug);
        session.close();
        return (Integer) id;
    }

    @Override
    public void updateDrug(Drug drug) {

    }

    @Override
    public List<Drug> listDrug() {
        Session session = sessionFactory.openSession();
        @SuppressWarnings("unchecked")
        List<Drug> drugList = session.createQuery("from Drug").list();
        session.close();
        return drugList;
    }

    @Override
    public Drug getDrugById(int id) {
        Session session = sessionFactory.openSession();
        Criteria criteria = session.createCriteria(Drug.class);
        criteria.add(Restrictions.eq("id", id));
        Drug drug = (Drug) criteria.uniqueResult();
        session.close();
        return drug;
    }

    @Override
    public void removeDrug(int id) {

    }

}
