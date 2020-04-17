package spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.SubjectDto;

@Service
public class SubjectService {
	
	@Autowired
	SubjectDao dao;

	public void setDao(SubjectDao dao) {
		this.dao = dao;
	}
	
	public List<SubjectDto> allselect(){
		return dao.allselect();
	}
	
	public SubjectDto oneselect(String a) {
		return dao.oneselect(a);
	}
	
	public int insertUpload(UploadDto dto) {
		return dao.insert(dto);
	}	 
}
