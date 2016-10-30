import ServizioAzienda.ServizioAzienda;
import bean.DipendenteBean;
import bean.UtenteBean;
import dao.UtenteDao;



public class Test {

	public static void main(String[] args) {
		UtenteDao uDao=new UtenteDao();
		UtenteBean uBean=new UtenteBean("aaa","aaa","aaa","aaa",'C');
		boolean bool=uDao.creaUtente(uBean);
		
		
		UtenteBean u1=uDao.trovaUtente("sss");
		if(u1==null){
			System.out.println("errore");
		}
		
		
		ServizioAzienda sa=new ServizioAzienda();
		boolean bool1=sa.trovaUser("sss");
		if(bool1==false){
			System.out.println("errore");
		}
		
		DipendenteBean d=new DipendenteBean("v","v","v","v",'D',"v",9.0);
		sa.registraDipendente(d);
		
	}

}
