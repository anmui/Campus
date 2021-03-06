<%@ page language="java" contentType="text/html; charset=gb18030"
    pageEncoding="gb18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bean.classmate.connector"%>
<html>
<head>
<meta charset="gb18030">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/reality-icon.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/cubeportfolio.min.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/range-Slider.min.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" href="images/icon.png">
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>修改</title>
</head>
<body>

<%
    //接收URL传递来的参数
    request.setCharacterEncoding("gbk");
    String id1 = request.getParameter("s");
	String name = request.getParameter("v_name");
	String address=request.getParameter("v_address");
	String qq=request.getParameter("v_qq");
	String wechat=request.getParameter("v_wechat");
	String class1=request.getParameter("i_class");
	String log=request.getParameter("v_log");
	String phone=request.getParameter("v_phone");
	if(name=="")
	{
	name=request.getParameter("name");
	}
	if(address=="")
	{
	address=request.getParameter("address");
	}
	if(qq=="")
	{
	address=request.getParameter("qq");
	}
	if(wechat=="")
	{
	address=request.getParameter("wechat");
	}
	if(class1=="")
	{
	class1=request.getParameter("class");
	}
	if(log=="")
	{
	log=request.getParameter("log");
	}
	if(phone=="")
	{
	phone=request.getParameter("phone");
	}
	int id=Integer.valueOf(id1);
	int class2=Integer.valueOf(class1);
	System.out.print(name);
	
%>
<%request.setCharacterEncoding("gbk");%>
	<jsp:useBean id="bean2" class="com.bean.classmate.bean" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="bean2"/>
	<!--Loader-->
<div class="loader">
  <div class="span">
    <div class="location_indicator"></div>
  </div>
</div>
 <!--Loader-->  
 <div class="rev_slider_wrapper">
  <div id="rev_overlaped" class="rev_slider"  data-version="5.0">
    <ul>
 <li data-transition="fade">
        <img src="images/1.jpg" alt="" data-bgposition="center center" data-bgfit="cover" class="rev-slidebg">							
      </li>
      <li data-transition="fade">
        <img src="images/2.jpg" alt="" data-bgposition="center center" data-bgfit="cover" class="rev-slidebg">							
      </li>
      <div class="tp-static-layers">
        <div class="tp-caption tp-static-layer" 
          id="slide-37-layer-2" 
          data-x="['left','left','left','left']" data-hoffset="['50','50','50','50']" 
          data-y="['bottom','bottom','bottom','bottom']" data-voffset="['230','180','150','100']"  
          data-whitespace="nowrap"
          data-visibility="['on','on','on','on']"
          data-fontsize="['48','48','28','28']"
          data-start="500" 
          data-responsive_offset="on"
          data-basealign="slide" 
          data-startslide="0" 
          data-endslide="5" 
          style="z-index: 5;">
          
        
	
<% 
	try
	{
			Connection conn =connector.getconn();
			String sql = "update bean set v_name=?,v_qq=?,v_wechat=?,v_address=?,v_phone=?,i_class=?,v_log=? where i_id=?";
			
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			System.out.println(name);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1,name);
			// 对SQL语句中的第2个参数赋值
			ps.setString(2, qq);
			// 对SQL语句中的第3个参数赋值
			ps.setString(3,wechat);
			// 对SQL语句中的第4个参数赋值
			ps.setString(4,address);
			ps.setString(5,phone);
			ps.setInt(6,class2);
			ps.setString(7,log);
			ps.setInt(8,id);
			//ps.setString(8, bean2.getV_name());
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("<h1>"+"<span class=\"t_white\">"+"<br>"+"修改成功"+"</span>"+"</h1>");
				
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("<h1>"+"<span class=\"t_white\">"+"<br>"+"修改失败"+"</span>"+"</h1>");
			e.printStackTrace();
		}	
	%>
	</div>
	<form action="index.jsp">
	<div class="row">
		 <div class="col-md-4 col-sm-4 col-xs-4 text-right form-group top30">
	     
         <button type="submit" class="border_radius btn-blue text-uppercase">返回</button>
        
    	</div>
        </div>
     </form>
     </div>
    </ul>
  </div>
</div>
        
        
       

<script src="js/jquery-2.1.4.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.appear.js"></script>
<script src="js/jquery-countTo.js"></script>
<script src="js/bootsnav.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="js/jquery.cubeportfolio.min.js"></script>
<script src="js/range-Slider.min.js"></script>
<script src="js/owl.carousel.min.js"></script> 
<script src="js/selectbox-0.2.min.js"></script>
<script src="js/zelect.js"></script>
<script src="js/jquery.fancybox.js"></script>
<script src="js/jquery.themepunch.tools.min.js"></script>
<script src="js/jquery.themepunch.revolution.min.js"></script>
<script src="js/revolution.extension.actions.min.js"></script>
<script src="js/revolution.extension.layeranimation.min.js"></script>
<script src="js/revolution.extension.navigation.min.js"></script>
<script src="js/revolution.extension.parallax.min.js"></script>
<script src="js/revolution.extension.slideanims.min.js"></script>
<script src="js/revolution.extension.video.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/functions.js"></script>
	
</body>
</html>