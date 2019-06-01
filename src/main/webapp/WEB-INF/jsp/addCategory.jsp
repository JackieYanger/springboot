<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
cityArray = new Array();
cityArray[0] = new Array("计算机","软件工程|计算机网络|编程语言|其它");
cityArray[1] = new Array("文学","小说|散文|诗词|其它");
cityArray[2] = new Array("管理","行政管理|工商管理|金融管理|其它");
cityArray[3] = new Array("其他","其他");
cityArray[4] = new Array("请选择","-请选择-");
 
function getCity(currProvince)
{
	//当前所选择的分类
	var currProvince = currProvince;
	var i,j,k;
	//清空 大类下拉选单
	document.all.selCity.length = 0 ;
	for (i = 0 ;i <cityArray.length;i++)
	{
		//得到当前大类在所有大类数组中的位置
		if(cityArray[i][0]==currProvince)
		{
			//得到当前大类所包括的小类
			var tmpcityArray = cityArray[i][1].split("|")
			for(j=0;j<tmpcityArray.length;j++)
			{
				//填充大类下拉选单
				document.all.selCity.options[document.all.selCity.length] = new Option(tmpcityArray[j],tmpcityArray[j]);
			}
		}
	}
}
</script>  
<script type="text/javascript">
<!--

//-->
function check(){
	 var x=document.getElementById("nn").value;
	 var fn = 0 ;
	 var num= x.replace(/[^0-9]/ig,"");
	 var tmp = parseInt(num);
	 var sum = 0;
	 for(var i=0;i<12;i=i+2){
	  var num_s=parseInt(num.substring(i,i+1));
	  sum = sum + num_s;
	 }
	  var sum2 = 0;
	  for(var i=1;i<12;i=i+2){
	  var num_s=parseInt(num.substring(i,i+1));
	  sum2 = sum2 + num_s*3;
	 }
	 
	  var sum_s = sum + sum2;
	  fn = sum_s%10;
	  
	  var m1=document.getElementById("m1");
	  var m2=document.getElementById("m2");
	  if(fn>0&&fn<9) m1.style.display='block';
	  else{
	    m1.style.display='none';
	    alert("输入非法");
	   }
	  
	  
	}
function check2(){
	  var x=document.getElementById("mm").value; 
	  var num= x.replace(/[^0-9]/ig,"");
	  var tmp = parseInt(num);
	  if(typeof(tmp)==typeof(2)&&num.length==x.length){}
	  else
	    alert("输入非法");
	}
</script>
 <div align="center">
      <h1>图书添加页面</h1>
     <form action="listaddbook" method="post">
		<div >图书名称<input type="text" name="name" placeholder="图书名称" required="required"/>
		<select name="category_1" id="selProvince" onChange = "getCity(this.options[this.selectedIndex].value)">
		 <option value="请选择">-请选择-</option>
         <option value="计算机">计算机 </option>
		 <option value="文学">文学</option>
		 <option value="管理">管理</option>
		 <option value="其他">其他</option>
		</select>
		<select name="category_2"  id="selCity">
            <option>-请选择-</option>
        </select>
        
		</div>
		
		<div style="margin-left:-110px">图书书号<input type="text" name="book_number"  id="nn" placeholder="图书书号" required="required"/>
		<input id="b" type="button" name="button" value="验证" onclick="check()" />
		<div id="m1" style="display:none; white-space:nowarp"><font color="green">输入合法</font></div>
		</div>
		<div style="margin-left:-157px">图书作者<input type="text" name="writer" placeholder="图书作者" required="required" />
		</div>
		<div style="margin-left:-157px">出版时间<input type="text" name="publish_date"   placeholder="出版时间" required="required" /></div>
		<div style="margin-left:-110px">图书价格<input type="text" name="price" id="mm" placeholder="价格" required="required"/>
		<input id="d" type="button" name="button" value="验证" onclick="check2()" />
		</div>
		<button style="margin-left:-157px" type="submit" >添加</button>
		
	</form>
       <form action="listCategory">
          <button type="submit" class="btn btn-primary btn-block btn-large">查看已有图书</button>
       </form>
  
       <form action="login">
          <button type="submit" class="btn btn-primary btn-block btn-large">退出登录</button>
       </form>
</div>

