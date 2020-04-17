package spring.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;


import spring.service.SubjectService;
import spring.service.UploadDto;

@Controller
public class UploadController {
	
	String filename;
	String path1;
    byte barr[] = new byte[100];
	 
	@Autowired
	SubjectService service;
	
	// 업로드 양식 불러오기(index)
	@RequestMapping(value = "upload.do", method = RequestMethod.GET)
	public String form() {
		return "enroll";
	}
	
	// DB에 값 보내기
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public String insert(@ModelAttribute("insert") UploadDto dto) {
			sendData();

			String str = dto.getStartTime();
			String[] array = str.split(" ");
			
			String[] y_m = array[0].split("/");
			String yyyymmdd = y_m[2]+"-"+y_m[0]+"-"+y_m[1];
		
			String[] time = array[1].split(":");
			
		if(array[2].equals("PM")) {
				time[0] =Integer.toString((Integer.parseInt(time[0]) + 12));
				
			}
			String tttt = time[0]+":"+time[1];
			
			
			dto.setStartTime(yyyymmdd+" "+tttt+":00");
			
			/////////////////////////////////////////
			

			
			String str1 = dto.getEndTime();
			String[] array1 = str1.split(" ");
			
			String[] y_m1 = array1[0].split("/");
			String yyyymmdd1 = y_m1[2]+"-"+y_m1[0]+"-"+y_m1[1];

	
			String[] time1 = array1[1].split(":");
			
		
			//if(Integer.parseInt(time1[0])<12)
				if(array1[2].equals("PM")){
				time1[0] =Integer.toString((Integer.parseInt(time1[0]) + 12));
				
			}
			String tttt1 = time1[0]+":"+time1[1];
			
			
			dto.setEndTime(yyyymmdd1+" "+tttt1+":00");
				
		
			
			dto.setSubjectImage(filename);
			service.insertUpload(dto);
			//service.insertUpload2(dto);
	
		return "enroll"; 
	}
	
	// 이미지 첨부
	@RequestMapping(value="image.do",method=RequestMethod.POST)  
	public ModelAndView upload(@RequestParam CommonsMultipartFile file,HttpSession session){  
		//String path=session.getServletContext().getRealPath("/");  
	        filename=file.getOriginalFilename();  
	        path1 = "C:\\Users\\Administrator\\git\\Matching\\projectUploader\\WebContent\\img";
	        barr=file.getBytes();  
	    return new ModelAndView("upload-success","filename",path1+"/"+filename);  //view name / model name / model data
	}
	
	// 이미지 첨부 (확인을 눌렀을 경우 DB로 전송)
	public void sendData() {
        
		try{ 
        	
        BufferedOutputStream bout=new BufferedOutputStream(  
                 new FileOutputStream(path1+"/"+filename));  
        bout.write(barr);  
        bout.flush();  
        bout.close();  
          
        } catch(Exception e){System.out.println(e);}  	
	}
}
