<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div align="center">
       <h1>图书列表</h1>
</div>
 <div align="center">
         当前用户:${name}<br>
         登录次数:${time}
    </div>
<div style="width:500px;margin:20px auto;text-align: center">
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
	    <c:forEach items="${page.content}" var="c" varStatus="st">
	        <tr>
	            <td>${c.name}</td>
	            <td>${c.category_1}</td>		
				<td>${c.category_2}</td>
	            <td>${c.book_number}</td>
				<td>${c.writer}</td>
				<td>${c.publish_date}</td>
				<td>${c.price}</td>
				
	        </tr>
	    </c:forEach>       	    
	</table>
	<br>
	<div>
	            <a href="?start=0">[首  页]</a>
            <a href="?start=${page.number-1}">[上一页]</a>
            <a href="?start=${page.number+1}">[下一页]</a>
            <a href="?start=${page.totalPages-1}">[末  页]</a>
	</div>
	<br>
	<form action="addCategory" method="post">
		<button type="submit" class="btn btn-primary btn-block btn-large">添加图书</button>
	</form>
	<form action="login">
          <button type="submit" class="btn btn-primary btn-block btn-large">退出登录</button>
       </form>
	</div>