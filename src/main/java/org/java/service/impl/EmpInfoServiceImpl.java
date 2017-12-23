package org.java.service.impl;

import java.util.List;
import java.util.Map;

import org.java.dao.EmpInfoMapper;
import org.java.service.EmpInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("empInfoService")
public class EmpInfoServiceImpl implements EmpInfoService{
	
	@Autowired
	private EmpInfoMapper empInfoMapper;

	@Override
	public List<Map<String, Object>> showEmp() {
		return empInfoMapper.showEmp();
	}

	@Override
	public List<Map<String, Object>> byEmpId(int id, int index, int size) {
		return empInfoMapper.byEmpId(id, index, size);
	}

	@Override
	public List<Map<String, Object>> byIdInfo(int eid) {
		return empInfoMapper.byIdInfo(eid);
	}

	@Override
	public int getCount(int id) {
		return empInfoMapper.getCount(id);
	}

	@Override
	public void delByEid(int eid) {
		empInfoMapper.delByEid(eid);
	}

	@Override
	public void addEmp(Map<String, Object> m) {
		empInfoMapper.addEmp(m);
	}

	@Override
	public String getUser(String eName) {
		// TODO Auto-generated method stub
		return empInfoMapper.getUser(eName);
	}

	@Override
	public void update(Map<String, Object> m) {
		empInfoMapper.update(m);
	}

}
