/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blunt.dao;

/**
 *
 * @author Spunk
 */
import com.blunt.model.Roles;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.blunt.model.User;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("userDao")

public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
    
    private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;Session session;

    public User findById(int id) {
	User user = getByKey(id);
	if(user!=null){
	Hibernate.initialize(user.getRoles());
		}
		return user;
	}


    public User findByEmail(String email) {
		logger.info("EMAIL : {}", email);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("email", email));
		User user = (User)crit.uniqueResult();
		if(user!=null){
			Hibernate.initialize(user.getRoles());
		}
		return user;
	}

    @SuppressWarnings("unchecked")
    @Override
    public List<User> listUser() {
        Session session = sessionFactory.openSession();
        String hql = "FROM User";
        Query query = session.createQuery(hql);
        List<User> empList = query.list();
        logger.info("Person List::" + empList);
        return empList;
        }

@Override
public void insertUser(User user) {
//		session = sessionFactory.openSession();
//		session.beginTransaction();
//		session.save(user);
//		session.getTransaction().commit();
                persist(user);
	}

@Override
public void deleteUser(Integer userId) {
		System.out.println("hql Using Delete");
		session = sessionFactory.openSession();
		String hql = "DELETE from User E WHERE E.id = :user_id";
		Query query = session.createQuery(hql);
		query.setParameter("user_id", userId);
		int result = query.executeUpdate();
		System.out.println("Row affected: " + result);
	}

    

}
