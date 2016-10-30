// Classe che mi serve per aprire la sessione di Hibernet

package hibernateUtil;

import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
 private static final SessionFactory sessionFactory;
 static {
 try {
	 Configuration cfg = new Configuration().configure();
	 sessionFactory = cfg.buildSessionFactory();
 } catch (Throwable ex) {
 System.err.println("Initial SessionFactory creation failed. " + ex);
 throw new ExceptionInInitializerError(ex);
 }
 }

public static SessionFactory getSessionFactory() {
 return sessionFactory;
 }

public static Session openSession() {
 Session s = null;
 try
 {
	s = sessionFactory.openSession();
 }
 catch (Exception ex)
 {
	 System.out.print(ex.getMessage());
 }
 return s;
}
}