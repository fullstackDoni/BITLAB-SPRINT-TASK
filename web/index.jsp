<%@ page import="kz.narxoz.techorda.db.Tasks" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="navbar.jsp"%>
<!-- Button trigger modal -->
<div class="row mt-4">
    <div class="col-12">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap"style="background-color: #112340"> + Добавить Задание</button>

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Новое задание</h5>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Наименование :</label>
                                <input type="text" class="form-control" id="recipient-name">
                            </div>
                            <div class="mb-3">
                                <label for="message-text" class="col-form-label">Описание :</label>
                                <textarea class="form-control" id="message-text"></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="message-text" class="col-form-label">Крайний срок :</label>
                            </div>
                            <div>
                                <input type="date" value="yyyy-mm-dd" value="2022-02-09">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button type="submit" class="btn btn-primary">Добавить</button>
                    </div>
                </div>
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
                        <a href="#"class="btn btn-info btn-sm">DETAILS</a>
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
