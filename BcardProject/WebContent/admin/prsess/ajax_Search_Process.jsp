<%@page import="java.util.ArrayList"%>
<%@page import="vo.MemberVO"%>
<%@page import="service.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 


String kind = request.getParameter("kind");//검색 종류
String search = request.getParameter("search");//검색어


if(kind.equals("grade"))
	kind = "grade_name";
ArrayList<MemberVO> list = MemberService.getInstance().searchMember(kind,search);

String result = "";

for ( int i=0;i<list.size();i++){
	result += list.get(i).getId() + " " + list.get(i).getName()+ " "+ list.get(i).getGrade()+ "";
	
}
out.write(result);



%>