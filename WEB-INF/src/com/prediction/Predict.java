package com.prediction;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;



import com.DAOFactory.User;


public class Predict
{
	static String davalue="";
	static String pathval="";
	public static void prepareData(String val,String path)
	{
		 System.out.println("===inside=========");
		davalue=val;
		pathval=path;
		ArrayList list=new ArrayList();
		list=User.getCityID();
		
		StringBuffer sb=new StringBuffer();
		System.out.println("location "+list);
		for(int i=0;i<list.size();i++)
		 {
		
          int data= User.getCost(list.get(i).toString(),davalue);
          System.out.println("============"+data);
          
          sb.append(data);
          sb.append(System.lineSeparator());
                
		 }
		
		
		boolean flag=Predict.writeintofile(sb.toString(),davalue);  //writing to the file
		if(flag)
		{
		   System.out.println("====File write successfull=======");	
		}
		else
		{
			 System.out.println("====File write unsuccessfull=======");	
		}
		
	}
	
	
	
	
	
	
	public static boolean writeintofile(String content,String name)
	{
		boolean flag=false;
		
		
		
        BufferedWriter writer = null;
        try
        {
            writer = new BufferedWriter( new FileWriter( pathval+"/"+name+".csv"));
            writer.write(content);
         flag=true;
        }
        catch ( IOException e)
        {
        	flag=false;
        }
        finally
        {
            try
            {
                if ( writer != null)
                writer.close( );
            }
            catch ( IOException e)
            {
            	flag=false;
            }
        }
		
		 
		return flag;
		
	
	}

	
	public static void main(String[] args)
	{
		//prepareData("v1");
	}
}
