package org.java.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface EmpInfoMapper {
	
	public List<Map<String,Object>> showEmp();
	
	public List<Map<String,Object>> byEmpId(@Param("id") int id,@Param("index") int index,@Param("size") int size);
	
	public List<Map<String,Object>> byIdInfo(@Param("eid") int eid);
	
	public int getCount(@Param("id") int id);
	
	public void delByEid(@Param("eid") int eid);
	
	public void addEmp(Map<String,Object> m);
	
	public String getUser(@Param("eName") String eName);
	
	public void update(Map<String,Object> m);
	
	//qqqqqqqqqqqqqqqqqqqqqqqqqqqq
	//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
}
