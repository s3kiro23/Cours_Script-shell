import java.io.*;

public class Suite{

    public static void main (String args []){

        String s= args[0];
        int x= Integer.parseInt(s);
        int count=0;
        int max=0;
        int valDepart=x;
        int dureeAlt=1;
        int arret=0;

        try {

			FileWriter fw=new FileWriter(args[1]);
			BufferedWriter bw= new BufferedWriter(fw);
            bw.write("n Un");
            bw.newLine();

            while (x != 1) {

                x= (x%2==0)?x/2:x*3+1;
    
                if (max < x){
    
                    max = x;
    
                }
    
                if (x > valDepart && arret == 0){
    
                    dureeAlt++;
    
                } else {
    
                    arret = 1;
    
                }
    
                count++;
                bw.write(count+" "+x);
                bw.newLine();
    
            }

            bw.write("altiMax : "+max);
            bw.newLine();
            bw.write("Durée Vol : "+count);
            bw.newLine();
            if (dureeAlt > 1){

                bw.write("Durée altitude : "+(dureeAlt-1));

            } else {

                bw.write("Durée altitude : "+dureeAlt);
                
            }
            bw.newLine();    
			bw.close();
		}
	    catch (Exception e) {
	    	System.out.println("Erreur "+e);
	    }

    }
}