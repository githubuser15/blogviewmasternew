package com.acc.datasources;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import com.acc.data.CrowdData;

public class CrowdDataSource {	
	public List<CrowdData> getCrowdTasks() throws JSONException 
	{
		List<CrowdData> taskList=new ArrayList<CrowdData>() ;
		try {
			/*CrowdData data1=new CrowdData();
			data1.setTaskTitle("Screen UI For Login Screen");
			data1.setTaskStatus("Posted To external Crowd");
			data1.setTaskActions("none");
			data1.setSugustedAction("None");
			data1.setInteractions("1");
			CrowdData data2=new CrowdData();
			data2.setTaskTitle("Database Normalization");
			data2.setTaskStatus("Under Review");
			data2.setTaskActions("none");
			data2.setSugustedAction("None");
			data2.setInteractions("1");
			taskList.add(data1);
			taskList.add(data2);	*/
				System.out.println("Testing the Json file");
			    JSONParser parser = new JSONParser();	         
	            Object obj = parser.parse(new FileReader("C://Users/aparna_lakshmi_meda/Desktop/inputNew.json"));
	            JSONObject jsonObject =  (JSONObject) obj;
	            JSONArray array =  (JSONArray)jsonObject.get("tasks");	        
	                    
				      System.out.println("Array size"+array.size());	            
					  for(Object Jobj : array)
					  {
						  JSONObject taskObject = (JSONObject)Jobj;
						  CrowdData data=new CrowdData();
						  data.setTaskTitle(taskObject.get("title").toString());
					      data.setTaskStatus( taskObject.get("status").toString());
					      data.setInteractions(taskObject.get("interactioncount").toString());
					      data.setSugustedAction("None");
					      data.setTaskActions("None");
						  System.out.println("Title"+ taskObject.get("title"));	
						  System.out.println("Status"+ taskObject.get("status"));		
						  System.out.println("Interactioncount"+ taskObject.get("interactioncount"));
						  taskList.add(data);
					  }
								
				
					    
			           //trying to print the single element
			           /* JSONObject taskObject =  (JSONObject)  array.get(0);
			           System.out.println(" taskObject.size()"+taskObject.size());;
			            System.out.println("prtinting the desc"+ taskObject.get("description"));*/
			            
					  /*for(int i = 0 ; i < array.size();i++){
	                 // System.out.println("Descr"+array.get(i));
	                JSONObject taskObject =  (JSONObject) array.get(i);	               
	               System.out.println("prtinting the desc"+ taskObject.get("description"));
	            }*/
	      	}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return taskList;
	

}
}
 