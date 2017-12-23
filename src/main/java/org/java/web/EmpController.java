package org.java.web;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.java.service.EmpInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {
	
	@Autowired
	private EmpInfoService empInfoService;
	
	@RequestMapping("/load")
	public String load(HttpSession ses){
		List<Map<String,Object>> empList=empInfoService.showEmp();
		ses.setAttribute("empList", empList);
		return "/load";
	}
	
	@RequestMapping("/showInfo")
	public String showInfo(HttpServletRequest request,HttpSession ses){
		String emp=request.getParameter("emp");
		String id =request.getParameter("id");
		System.out.println(id);
		String page=request.getParameter("index");
		int index=1;
		int size=1;
		int counts=empInfoService.getCount(Integer.parseInt(id));
	    int count=counts%1==0?counts/1:counts/1+1;
	    
		if(page!=null){
			index=Integer.parseInt(page);
		}
		int indexs=(index-1)*size;
		List<Map<String,Object>> infoList=empInfoService.byEmpId(Integer.parseInt(id), indexs, size);
		System.out.println(infoList);
		ses.setAttribute("emp",emp);
		ses.setAttribute("infoList", infoList);
		ses.setAttribute("page",index);
		ses.setAttribute("count",count);
		ses.setAttribute("ids",id);
		return "/emp";
	}
	
	@RequestMapping("/change")
	public String change(HttpServletRequest request,HttpSession ses){
		String id=request.getParameter("ids");
		System.out.println(id);
		
		String emp=request.getParameter("emp");
		System.out.println(id);
		String page=request.getParameter("index");
		int index=1;
		int size=1;
		int counts=empInfoService.getCount(Integer.parseInt(id));
	    int count=counts%1==0?counts/1:counts/1+1;
	    
		if(page!=null){
			index=Integer.parseInt(page);
		}
		int indexs=(index-1)*size;
		List<Map<String,Object>> infoList=empInfoService.byEmpId(Integer.parseInt(id), indexs, size);
		System.out.println(infoList);
		ses.setAttribute("emp",emp);
		ses.setAttribute("infoList", infoList);
		ses.setAttribute("page",index);
		ses.setAttribute("count",count);
		return "/emp";
	}
	
	@RequestMapping("/empInfo")
	public String empInfo(HttpServletRequest requset,HttpSession ses){
		int eid=Integer.parseInt(requset.getParameter("eid"));
		String user=requset.getParameter("user");
		List<Map<String,Object>> empInfoList=empInfoService.byIdInfo(eid);
		ses.setAttribute("user",user);
		ses.setAttribute("empInfoList", empInfoList);
		return "/empInfo";
	}

	@RequestMapping("/empInfos")
	public String empInfos(HttpServletRequest requset,HttpSession ses){
		int eid=Integer.parseInt(requset.getParameter("eid"));
		String user=requset.getParameter("user");
		List<Map<String,Object>> empInfoLists=empInfoService.byIdInfo(eid);
		System.out.println(empInfoLists);
		ses.setAttribute("user",user);
		ses.setAttribute("empInfoLists", empInfoLists);
		return "/update";
	}

	@RequestMapping("/delEmpInfo")
	public String delEmpInfo(HttpServletRequest request,HttpSession ses){
		int eid=Integer.parseInt(request.getParameter("eid"));
		empInfoService.delByEid(eid);
		return "emp";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request){
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String postion=request.getParameter("postion");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");
		String emp=request.getParameter("emp");
		Map<String,Object> m=new HashMap<String, Object>();
		m.put("bid",Integer.parseInt(emp));
		m.put("gender",gender);
		m.put("name",name);
		m.put("age",Integer.parseInt(age));
		m.put("postion",postion);
		m.put("tel",tel);
		m.put("address",address);
		empInfoService.addEmp(m);
		System.out.println(m);
		return "add";
	}
	
	@RequestMapping("/addLoad")
	public String addLoad(HttpServletRequest request,HttpSession ses){
		List<Map<String,Object>> addList=empInfoService.showEmp();
		ses.setAttribute("addList", addList);
		return "/add";
	}
	
	@RequestMapping("/user")
	public void user(HttpServletRequest requset){
		String userName=requset.getParameter("userName");
		System.out.println(userName);
		empInfoService.getUser(userName);
		
		
	}
	
	@RequestMapping("/update")
	public String update(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		System.out.println("----ÐÞ¸Ä");
		String eid=request.getParameter("eids");
		System.out.println(eid);
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String postion=request.getParameter("postion");
		String tel=request.getParameter("tel");
		String address=request.getParameter("address");
		String emp=request.getParameter("emp");
		Map<String,Object> m=new HashMap<String, Object>();
		m.put("bid",emp);
		m.put("gender",gender);
		m.put("name",name);
		m.put("age",Integer.parseInt(age));
		m.put("postion",postion);
		m.put("tel",tel);
		m.put("address",address);
		m.put("eid",7);
		empInfoService.update(m);
		return "empInfo";
	}
	
}
