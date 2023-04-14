<%@ page import="kz.narxoz.techorda.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>

</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-5">
        <%
        Tasks task = (Tasks) request.getAttribute("task");
        if (task != null) {
    %>
    <div class="row">
        <div class="col-6 mx-auto">
            <div class="mt-3">
                <label>Name</label>
                <input type="text" class="form-control"  value="<%=task.getName()%>">
            </div>
            <div class="mt-3">
                <label>Description</label>
                <textarea class="form-control" ><%=task.getDescription()%></textarea>
            </div>
            <div class="mt-3">
                <label>DeadLine Date</label>
                <input type="date" class="form-control"  value="<%=task.getDeadlineDate()%>">
            </div>
            <div class="mt-3">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#edit">
                    EDIT
                </button>

                <!-- Modal -->
                <div class="modal fade" id="edit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <form action="/save" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Новое задание</h5>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-12">
                                        <label>Наименование: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" class="form-control" name="name" value="<%=task.getName()%>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <label>Описание : </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <textarea class="form-control" id="message-text" name="description" value="<%=task.getDescription()%>"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <label for="message-text" class="col-form-label">Крайний срок :</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="date"  name="deadlineDate" value="<%=task.getDeadlineDate()%>">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%}%>
</body>
</html>