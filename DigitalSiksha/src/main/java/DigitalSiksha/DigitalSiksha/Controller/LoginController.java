package DigitalSiksha.DigitalSiksha.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import DigitalSiksha.DigitalSiksha.Interface.iRegister;
import DigitalSiksha.DigitalSiksha.Main.Register;

@Controller
public class LoginController {
	
	@Autowired
	iRegister ir;
	
	@RequestMapping("login")
	public String login()
	{
		return "login.jsp";
	}
	
	// For register
	
	@RequestMapping("register")
	public String register()
	{
		return "register.jsp";
	}
	
	@RequestMapping("registeration")
	public String register(String name, String email, String password, 
			@RequestParam("image") MultipartFile image)
	{
		
		Register r1 = new Register();
		r1.setName(name);
		r1.setEmail(email);
		r1.setPassword(password);
		r1.setImage(image);
		ir.save(r1);
		return "redirect:/login";
		
			
	}
	
	

}
