package spring.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
	
	
	@RequestMapping(value = "upload.do", method = RequestMethod.GET)
	public String form() {
		return "enroll";
	}
	
	
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public String insert(@ModelAttribute("insert") UploadDto dto) {
			sendData();
			dto.setSubjectImage(filename);
			service.insertUpload(dto);
			service.insertUpload2(dto);
	
		return "enroll";
	}
	
	
	@RequestMapping(value="image.do",method=RequestMethod.POST)  
	public ModelAndView upload(@RequestParam CommonsMultipartFile file,HttpSession session){  
		//String path=session.getServletContext().getRealPath("/");  
	        filename=file.getOriginalFilename();  
	        path1 = "C:\\Users\\Administrator\\Documents\\workspace-spring-tool-suite-4-4.5.1.RELEASE\\projectUploader\\WebContent\\img";
	        barr=file.getBytes();  
	       
	    return new ModelAndView("upload-success","filename",path1+"/"+filename);  //view name / model name / model data
	}
	
	public void sendData() {
        
		try{ 
        	
        BufferedOutputStream bout=new BufferedOutputStream(  
                 new FileOutputStream(path1+"/"+filename));  
        bout.write(barr);  
        bout.flush();  
        bout.close();  
          
        } catch(Exception e){System.out.println(e);}  	
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, 
				new CustomDateEditor(dateFormat, true));
	}
}
