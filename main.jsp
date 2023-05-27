<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/5/11
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${roleName=='学生'}"   >
        <input type="button" value="查看">
    </c:if>
    <c:if test="${roleName=='老师'}"   >
        <input type="button" value="查看">
        <input type="button" value="修改">
    </c:if>

</body>
</html>
