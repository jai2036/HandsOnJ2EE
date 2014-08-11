package cebs;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Myaction extends ActionSupport implements ModelDriven
{
	
	private static bean b=new bean();
	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return b;
	}  
   
	public String execute(){  
		
		   
	    if(database.validate(b.getUname(),b.getPwd(),b.getType()))
	    	return "good";  
	    
	    else
	    	return"error";
	}

	}
