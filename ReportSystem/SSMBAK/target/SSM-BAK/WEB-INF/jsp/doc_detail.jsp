<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>文档详细内容</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/css/bootstrap.min.css">

    <link href="${pageContext.request.contextPath}/asset/bower_components/summernote/dist/summernote.css" rel="stylesheet">


  </head>

  <body style="font-family:'Roboto';background:#333;margin:0">

  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${pageContext.request.contextPath}/main/doc_list.do">返回主页</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
       
        <form class="navbar-form navbar-left">
          <%--<div class="form-group">--%>
            <%--<input type="text" class="form-control" placeholder="搜索关键字">--%>
          <%--</div>--%>

          <%--<select class="form-control">--%>
            <%--<option>学生姓名</option>--%>
            <%--<option>学生学号</option>--%>
            <%--<option>文档标题</option>--%>
          <%--</select>--%>

          <%--<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>--%>
          <%--</button>--%>
        </form>
        <ul class="nav navbar-nav navbar-right">

          <c:if test="${sessionScope.USER.name == null}">
            <li><a href="${pageContext.request.contextPath}/main/login.do">教师登录</a></li>
          </c:if>

        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  <div class="container">


    <div class="row">

      <div  id="doc_content"  style="width: 100%;height: 100%;background-color: white;padding-top: 10px;padding-bottom: 20px;padding-left: 5%;padding-right: 5%">

        <h2 style="text-align: center">文章标题: ${document.title}</h2>

        <p style="text-align: center">学号: ${document.stu_id}&nbsp;&nbsp;&nbsp;&nbsp;姓名：${document.stu_name}</p>


        ${document.content}



        <hr>
        <h5 style="text-align: center">教师评论</h5>

        <c:forEach items="${document.commentList}" var="comment">

          <h3>${comment.username}</h3>
          <p>${comment.create_time}</p>
          ${comment.content}

        </c:forEach>

      </div>




    </div>

    <br/>

    <br/>

    <%--<a type="button" id="btn-html2canvas" class="btn btn-default btn-lg btn-block">将上述内容生成PDF文档</a>--%>

    <%--<br/>--%>

    <c:if test="${sessionScope.USER.name != null}">


<form action="${pageContext.request.contextPath}/comment/save.do?doc_id=${document.id}" method="post">

    <div class="row">



      <textarea class="form-control" id="summernote" name="content" rows="3" placeholder="教师填写评论"></textarea>

      <br/>

      <button type="submit" class="btn btn-default btn-lg btn-block">提交评论</button>

      <br/>

    </div>
    </form>


    </c:if>

  </div>

  <!--jquery.js必须在前面-->

  <script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/jquery/dist/jquery.js">
  </script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/js/bootstrap.min.js">
  </script>


  <script src="${pageContext.request.contextPath}/asset/bower_components/summernote/dist/summernote.js"></script>


  <script>
      $(document).ready(function() {
          $('#summernote').summernote();
      });
  </script>

  <script src="${pageContext.request.contextPath}/asset/js/jspdf.debug.js"></script>
  <script src="${pageContext.request.contextPath}/asset/js/html2canvas.js"></script>
  <script src="${pageContext.request.contextPath}/asset/js/main.js"></script>

  </body>
</html>
