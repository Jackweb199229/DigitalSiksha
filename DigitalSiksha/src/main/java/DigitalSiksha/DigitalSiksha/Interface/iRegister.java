package DigitalSiksha.DigitalSiksha.Interface;

import org.springframework.data.repository.CrudRepository;


import DigitalSiksha.DigitalSiksha.Main.Register;

public interface iRegister extends CrudRepository<Register, Integer>{
	
	Register findByEmail(String email);
	
//	void save();
}
