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
	
	// 업로드 양식 불러오기(index)
	@RequestMapping(value = "upload.do", method = RequestMethod.GET)
	public String form() {
		return "enroll";
	}
	
	// DB에 값 보내기
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public String insert(@ModelAttribute("insert") UploadDto dto) {
			sendData();
			System.out.println(dto.getStartTime());
			dto.setSubjectImage(filename);
			service.insertUpload(dto);
			service.insertUpload2(dto);
	
		return "enroll";
	}
	
	// 이미지 첨부
	@RequestMapping(value="image.do",method=RequestMethod.POST)  
	public ModelAndView upload(@RequestParam CommonsMultipartFile file,HttpSession session){  
		//String path=session.getServletContext().getRealPath("/");  
	        filename=file.getOriginalFilename();  
	        path1 = "C:\\Users\\Administrator\\git\\Matching\\projectUploader\\WebContent\\img";
	        barr=file.getBytes();  
	       System.out.println("2");
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
        System.out.println("1");
          
        } catch(Exception e){System.out.println(e);}  	
	}

	// 날짜 입력 (시작일/종료일)
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); //시간 분단위까지 넣는 거
		binder.registerCustomEditor(Date.class, 
				new CustomDateEditor(dateFormat, true));
	}
}
