<%@ page import="kz.narxoz.techorda.db.Tasks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
</head>
<body>
<%@include file="navbar.jsp" %>
<!-- Button trigger modal -->
<div class="row mt-4">
    <div class="col-12">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                data-bs-whatever="@getbootstrap" style="background-color: #112340"> + Добавить Задание
        </button>

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form method="post" action="/AddTask" class="modal-content">
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
                                    <input type="text" class="form-control" name="name">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label>Описание : </label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <textarea class="form-control" id="message-text" name="description"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <label for="message-text" class="col-form-label">Крайний срок :</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <input type="date"  name="deadlineDate">
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Добавить</button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="contain">
    <div class="row mt-5">
        <div class="col-sm-12">
            <table class="table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Наименование</th>
                    <th>Крайний Срок</th>
                    <th>Выполнено</th>
                    <th>Детали</th>
                </tr>
                </thead>
                <%
                    ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("task");
                    if (tasks != null) {
                        for (Tasks it : tasks) {

                %>
                <tr>
                    <td>
                        <%
                            out.print(it.getId());
                        %>
                    </td>
                    <td>
                        <%
                            out.print(it.getName());
                        %>
                    </td>
                    <td>
                        <%
                            out.print(it.getDescription());
                        %>
                    </td>
                    <td>
                        <%
                            out.print(it.getDeadlineDate());
                        %>
                    </td>
                    <td>
                        <a href="/details?id=<%out.print(it.getId());%>" class="btn btn-primary btn-sm" style="background-color: #112340">Детали</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
    </div>
</div>

</body>
</html>
