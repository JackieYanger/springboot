<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <div align="center">
<h1 align="center" >书籍添加页面</h1>
<form action="listCategory">
<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>图书名称</td>
        <td>分类一</td>
        <td>分类二</td>
        <td>图书书号</td>
        <td>图书作者</td>
        <td>出版时间</td>
        <td>图书价格</td>
    </tr>
 
    <c:forEach items="${page2}" var="oi" varStatus="st">
        <tr>
             <td>${oi.name}</td>
             <td>${oi.category_1}</td>
             <td>${oi.category_2}</td>
             <td>${oi.book_number}</td>
             <td>${oi.writer}</td>
             <td>${oi.publish_date}</td>
             <td>${oi.price}</td>
        </tr>
    </c:forEach>
    
   
</table> 
          <button type="submit" class="btn btn-primary btn-block btn-large">确认添加</button>
   </form>
   <form action="addCategory">
<button type="submit" class="btn btn-primary btn-block btn-large">继续添加</button>
    </form>
<form action="listCategory">
   <button type="submit" class="btn btn-primary btn-block btn-large">查看已有图书</button>
</form>

</div>