package javapkg;



class firstclass{

void child()
{
	 System.out.println("i'm parent class");
}
}

 class secondclass extends firstclass
 {
	
	 void child()
	 {
		 System.out.println("i'm child class");
	 }
}
public class firstpage {
	
	 public static void main(String arg[])
	 {
		 
		 
		firstclass f=new  secondclass();
		f.child();
	 }
	}