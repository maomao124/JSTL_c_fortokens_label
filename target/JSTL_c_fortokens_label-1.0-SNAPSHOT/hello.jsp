<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_c_fortokens_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/1
  Time(创建时间)： 13:21
  Description(描述)：
  JSTL <c:forTokens> 标签类似于 Java 中的 split 方法，用于分隔字符串。
JSP <c:fortokens> 标签的语法格式如下：
<c:forTokens items="字符串" delims="分隔符" [begin="开始"] [end="结束"] [step="步长"] [var="别名"] [varStatus="varstatusname"]>
其中：
items：需要进行处理的字符串；
delims：分隔符，可以是数字、字符串或特殊字符；
begin：可选项，迭代开始的元素，起始下标为 0；
end：可选项，迭代结束的元素；
step：可选项，迭代的步长；
var：可选项，指定迭代之的别名；
varStatus：可选项，当前迭代的状态信息。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forTokens items="1223.3665.544.698.54.5.98.4" delims="." var="i" varStatus="varstatusname">
    <c:out value="${varstatusname.index}:" escapeXml="true" default=""/>
    <c:out value="${i}" escapeXml="true" default=""/>
    <br/>
</c:forTokens>
<%
    String str = "123.56.343.5657.3453.45363.45.34";
    request.setAttribute("str", str);
%>
<br/>
<c:forTokens items="${str}" delims="." var="i" varStatus="varstatusname">
    <c:out value="${varstatusname.index}:" escapeXml="true" default=""/>
    <c:out value="${i}" escapeXml="true" default=""/>
    <br/>
</c:forTokens>
</body>
</html>
