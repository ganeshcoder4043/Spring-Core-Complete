package springmvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.Dao.UserDao;
import springmvc.model.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	/* Yha pe waise hi method banenga jaise userDao me banya hai nhi toh error aayega  */
	public int createUser(User user) {
		return this.userDao.saveUser(user);
	}

}
