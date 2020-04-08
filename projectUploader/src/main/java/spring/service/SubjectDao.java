package spring.service;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spring.model.SubjectDto;

public class SubjectDao extends SqlSessionDaoSupport {
	
	public List<SubjectDto> allselect(){
		return getSqlSession().selectList("subject.all");
	}
	
	public SubjectDto oneselect(String a) {
		return getSqlSession().selectOne("subject.one", a);
	}
	
	public int insert(UploadDto dto) {
		return getSqlSession().insert("upload.insert", dto);
	}
	
	public int insert2(UploadDto dto) {
		return getSqlSession().insert("upload.insert2", dto);
	}
}
