package com.blunt.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.blunt.model.Roles;



@Repository("userRoleDao")
public class UserRoleDaoImpl extends AbstractDao<Integer, Roles>implements UserRoleDao{

	public Roles findById(int id) {
		return getByKey(id);
	}

	public Roles findByType(String type) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("type", type));
		return (Roles) crit.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<Roles> findAll(){
		Criteria crit = createEntityCriteria();
		crit.addOrder(Order.asc("type"));
		return (List<Roles>)crit.list();
	}
	
}
