<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<head>
    <meta charset="utf8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">

    <title>Task Manager Home</title>

    <link href="../../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../static/css/style.css" rel="stylesheet">
    <!-- [if lt IE 9]>
        <script src="../../static/js/html5shiv.min.js"></script>
        <script src="../../static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/" class="navbar-brand">AA</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li> <a href="new-task">New Task</a></li>
                <li> <a href="all-tasks">Show Tasks</a></li>
            </ul>
        </div>
    </div>
</div>
<c:choose>

    <c:when test="${mode == 'MODE_HOME'}">

        <div class="container" id="homeDiv">
            <div class="jumbotron text-center">
                <h1> Welcome to Task Manager</h1>
            </div>
        </div>

    </c:when>

    <c:when test="${mode == 'MODE_TASKS'}">

        <div class ="container text-center" id="tasksDiv">
            <h3>My Tasks</h3>
            <hr>

            <div class="input-group .add-on">
                <input class="form-control" onkeyup='filterTable()' placeholder="Search tasks" id="search" type="text">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
            <br>

            <div class="table-responsive">
                <table id="tasksTable" class="table table-striped table-bordered text-left">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Date Created</th>
                            <th>Finished</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="task" items="${tasks}">
                            <tr>
                                <td>${task.id}</td>
                                <td>${task.name}</td>
                                <td>${task.description}</td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
                                <td>${task.finished}</td>
                                <th><a target="_blank" href="update-task?id=${task.id}"/><span class="glyphicon glyphicon-edit"></span></th>
                                <th><a href="delete-task?id=${task.id}"/><span class="glyphicon glyphicon-trash"></span></th>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </c:when>
    <c:when test="${mode == 'MODE_NEW' || mode== 'MODE_UPDATE'}">

        <div class="container text-center">
            <h3>Manage Task</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-task">
                <input  type="hidden" name="id" value="${task.id}"/>
                <div class="form-group">
                    <label class="control-label col-md-3">Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="name" value="${task.name}"/>
                    </div>
                </div>
                <div class="form-group">
                     <label class="control-label col-md-3">Description</label>
                     <div class="col-md-7">
                        <input type="text" class="form-control" name="description" value="${task.description}"/>
                     </div>
                </div>
                <div class="form-group">
                      <label class="control-label col-md-3">Finished</label>
                      <div class="col-md-7">
                          <input type="radio" class="col-sm-1" name="finished" value="true"/>
                          <div class="col-sm-1">Yes</div>
                          <input type="radio" class="col-sm-1" name="finished" value="false" checked/>
                          <div class="col-sm-1">No</div>
                      </div>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Save"/>
                </div>
            </form>
        </div>

    </c:when>
</c:choose>

<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/scripts.js"></script>
</body>
</html>
