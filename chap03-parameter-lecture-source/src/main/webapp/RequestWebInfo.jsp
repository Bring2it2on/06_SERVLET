<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<h2>1. 서버의 Request 정보 읽기</h2>
<ul>
  <li>데이터 전송 방식 : <%= request.getMethod() %></li>
  <li>URL : <%= request.getRequestURL() %></li>
  <li>서버명: <%= request.getServerName() %></li>
  <li>이름 : <%= request.getParameter("name") %></li>
  <li>나이 : <%= request.getParameter("age") %></li>
  <li>생일 : <%= request.getParameter("birthday") %></li>
  <li>성별 : <%= request.getParameter("gender") %></li>
  <li>국적 : <%= request.getParameter("national") %></li>
  <li>취미 : <%= Arrays.toString(request.getParameterValues("hobbies")) %></li>

<%--    // 모든 데이터의 key를 이용해서 전송된 값을 일괄 처리할 수 있다.--%>
<%--    System.out.println("전달받은 모든 데이터 조회");--%>

<%--    // Value값이 문자열 배열일 수도 있기 때문에 String[]으로 설정--%>
<%--    Map<String, String[]> requestmap = request.getParameterMap();--%>
<%--    Set<String> keySet = requestmap.keySet(); // 모든 키 받기--%>
<%--    Iterator<String> keyIter = keySet.iterator();--%>

<%--    // 참고용으로만--%>
<%--    while (keyIter.hasNext()) {--%>
<%--      String key = keyIter.next();--%>
<%--      String[] values = requestmap.get(key);--%>

<%--      System.out.println("key : " + key);--%>
<%--      for (int i = 0; i < values.length; i++) {--%>
<%--        System.out.println("value[" + i + "] : " + values[i]);--%>
<%--      }--%>
<%--    }--%>
<%--  %>--%>
</ul>
</body>
<head>
    <title>Request</title>
</head>
</html>
