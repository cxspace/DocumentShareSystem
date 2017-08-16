<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>修改密码</title>

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


            <br/>


                <form class="form-horizontal" action="${pageContext.request.contextPath}/main/do_change_password.do" method="post">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" name="password" id="inputEmail3" placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" name="ConfirmPassword" id="inputPassword3" placeholder="请确认输入的密码">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">确认</button>
                        </div>
                    </div>


                    ${sessionScope.Msg}

                </form>



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
