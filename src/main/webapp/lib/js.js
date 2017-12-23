$(function(){
	alert("-----");
	var userName=$("[name=name]").val();
	alert(userName);
	$.ajax({
		url:"user.do?userName="+userName,
		type:"post",
		success:function(){
			
		}
		
	
	});
});
