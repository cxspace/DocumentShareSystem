<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>500</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/css/bootstrap.min.css">


    <link href="${pageContext.request.contextPath}/asset/bower_components/summernote/dist/summernote.css" rel="stylesheet">

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

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">



    <div class="row">

        <div class="panel panel-danger">
            <!-- Default panel contents -->
            <div class="panel-heading">系统异常...</div>
            <div class="panel-body">
               异常信息${message}
            </div>

            <a type="button"  href="${pageContext.request.contextPath}/main/doc_list.do" class="btn btn-default btn-lg btn-block">重新加载...</a>

        </div>

    </div>

</div>



<!--jquery.js必须在前面-->

<script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/jquery/dist/jquery.js">
</script>


<script type="text/javascript" src="${pageContext.request.contextPath}/asset/bower_components/bootstrap/dist/js/bootstrap.min.js">
</script>

<script src="${pageContext.request.contextPath}/asset/bower_components/summernote/dist/summernote.js"></script>



</body>
</html>
