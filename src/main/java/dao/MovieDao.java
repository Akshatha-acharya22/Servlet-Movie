package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.transaction.Transaction;

import dto.Movie;


public class MovieDao {
EntityManagerFactory fact= Persistence.createEntityManagerFactory("akshu");
EntityManager manager=fact.createEntityManager();
EntityTransaction trans=manager.getTransaction();

public void saveMovie(Movie movie) {
		trans.begin();
		manager.persist(movie);
		trans.commit();
	}

	public List<Movie> fetchMovies() {
//		return manager.createNativeQuery("select * from Movie", Movie.class).getResultList();   //this method is used to write sql query
		return manager.createQuery("select x from Movie x").getResultList();
	}
}
