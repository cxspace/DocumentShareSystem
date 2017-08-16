<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>论文综述提交评价系统</title>

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
        <a class="navbar-brand" href="${pageContext.request.contextPath}/main/doc_list.do">论文综述提交评价系统</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
       
        <form class="navbar-form navbar-left" action="" method="post">
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

          <c:if test="${sessionScope.USER.name != null}">

            <li><a href="${pageContext.request.contextPath}/main/change_password.do">修改密码</a></li>

            <li><a href="${pageContext.request.contextPath}/main/loginOut.do">注销</a></li>
          </c:if>

        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  <div class="container">

    <div class="row">

      <a type="button"  href="${pageContext.request.contextPath}/main/add_document.do" class="btn btn-default btn-lg btn-block">发布新文档</a>

      <br/>

    </div>

    <div class="row">



      <c:forEach items="${pageResult.list}" var="items">

        <div class="media">
          <div class="media-left">
            <a>
              <img class="media-object" src="${pageContext.request.contextPath}/asset/img/head.png" alt="头像">
            </a>
          </div>
          <div class="media-body">
            <h4 class="media-heading">

              ${items.title}

            </h4>

            <br/>

              <span class="label label-default">学号：${items.stu_id}</span>

              <span class="label label-default">姓名：${items.stu_name}</span>



            <br/>
            <br/>

            <div class="btn-group btn-group-justified" role="group" aria-label="...">
              <div class="btn-group" role="group">
                <a type="button" href="${pageContext.request.contextPath}/main/doc_detail.do?doc_id=${items.id}" class="btn btn-default">查看详细</a>
              </div>
              <div class="btn-group" role="group">
                <a type="button" disabled="disabled" class="btn btn-default">${items.create_time}</a>
              </div>
              <div class="btn-group" role="group">
              <c:if test="${sessionScope.USER.name != null}">

              <a type="button" href="${pageContext.request.contextPath}/document/delete.do?doc_id=${items.id}" class="btn btn-danger">删除</a>
              </c:if>
              </div>

            </div>


          </div>
        </div>

      <br/>
      <br/>

      </c:forEach>


      <div class="row">

        <%--<a type="button"  href="${pageContext.request.contextPath}/main/doc_list.do" class="btn btn-default btn-lg btn-block">加载更多...</a>--%>

        <br/>



        <nav aria-label="...">
          <ul class="pager">
            <li class="previous"><a href="javascript:doGoPage('${pageResult.page - 1}')"><span aria-hidden="true">&larr;</span> Prev</a></li>

            <li class="next"><a href="javascript:doGoPage('${pageResult.page + 1}')"> Next <span aria-hidden="true">&rarr;</span></a></li>
          </ul>
        </nav>

      </div>

      <br/>
      <br/>

    </div>
  </div>

  <!--jquery.js必须在前面-->

  <script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/jquery/dist/jquery.js">
  </script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/js/bootstrap.min.js">
  </script>

  <script language="javascript">
      function doGoPage(pageNo) {
          if (pageNo > ${pageResult.totalPage}){
              pageNo = ${pageResult.totalPage};
          }
          document.forms[0].action = "${pageContext.request.contextPath}/main/doc_list.do?pageNo="+pageNo;
          document.forms[0].submit();
      }
  </script>

  </body>
</html>
