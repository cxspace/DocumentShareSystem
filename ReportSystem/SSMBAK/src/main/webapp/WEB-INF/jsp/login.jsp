<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>教师登录</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/css/bootstrap.min.css">

  </head>

  <body>

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

      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  <div class="container">


    <div class="row">

      <form class="form-horizontal" action="${pageContext.request.contextPath}/teacher/login.do" method="post">
        <div class="form-group">
          <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
          <div class="col-sm-8">
            <input type="text" class="form-control" name="name" id="inputEmail3" placeholder="请输入用户名">
          </div>
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
          <div class="col-sm-8">
            <input type="password" class="form-control" name="password" id="inputPassword3" placeholder="请输入密码">
          </div>
        </div>

        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">登录</button>
          </div>
        </div>


        ${sessionScope.ErrorMsg}

      </form>



    </div>
  </div>



  <!--jquery.js必须在前面-->

  <script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/jquery/dist/jquery.js">
  </script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/js/bootstrap.min.js">
  </script>

  </body>
</html>
