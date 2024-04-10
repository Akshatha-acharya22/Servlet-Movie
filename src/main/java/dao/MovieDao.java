package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.transaction.Transaction;

import dto.Movie;


public class MovieDao {
EntityManagerFactory fact= Persistence.createEntityManagerFactory("movie");
EntityManager manager=fact.createEntityManager();
EntityTransaction trans=manager.getTransaction();

public void saveMovie(Movie movie) {
	trans.begin();
	manager.persist(movie);
	trans.commit();
}
}
