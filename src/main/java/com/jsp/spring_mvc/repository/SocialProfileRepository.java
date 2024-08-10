package com.jsp.spring_mvc.repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.jsp.spring_mvc.entity.SocialProfile;
import com.jsp.spring_mvc.entity.Student;

@Repository
public class SocialProfileRepository {

	private static EntityManager getEntityManager() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Student");
		return emf.createEntityManager();
	}

	public void addStudentProfile(SocialProfile socialProfile, Student student, int studentId) {
		EntityManager em = getEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();

		em.merge(student);
		em.persist(socialProfile);

		et.commit();
		em.close();
	}

	public SocialProfile findSocialProfileId(int socialProfileId) {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();

		SocialProfile socialProfile = em.find(SocialProfile.class, socialProfileId);

		em.getTransaction().commit();
		em.close();
		return socialProfile;
	}

	public void updateSocialProfileSave(SocialProfile socialProfile) {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();

		em.merge(socialProfile);

		em.getTransaction().commit();
		em.close();
	}

	public void deleteSocialProfile(SocialProfile socialProfile) {
		EntityManager em = getEntityManager();
		em.getTransaction().begin();

		em.remove(em.contains(socialProfile)?socialProfile:em.merge(socialProfile));

		em.getTransaction().commit();
		em.close();
	}
}
