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
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="edit">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                    Launch demo modal
                </button>

                <!-- Modal -->
                <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="DEL">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%}%>
</body>
</html>