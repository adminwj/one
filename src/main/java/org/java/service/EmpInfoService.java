package org.java.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface EmpInfoService {

	public List<Map<String,Object>> showEmp();
	
	public List<Map<String,Object>> byEmpId(int id,int index,int size);
	
	public List<Map<String,Object>> byIdInfo(int eid);
	
	public int getCount(int id);
	
	public void delByEid(int eid);
	
	public void addEmp(Map<String,Object> m);
	
	public String getUser(String eName);
	
	public void update(Map<String,Object> m);
	
}
