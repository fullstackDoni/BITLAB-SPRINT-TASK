<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row">
    <div class="col-12">
        <form action="/AddTask" method="post">
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
                    <input type="date" value="yyyy-mm-dd" value="2022-02-09" name="deadlineDate">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Добавить</button>
        </form>
    </div>
</div>
</body>
</html>
