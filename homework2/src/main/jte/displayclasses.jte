@import edu.csula.art.homework1.model.DolphinClass
@import edu.csula.art.homework1.model.Student
@import java.util.List
@param List<DolphinClass> classes
@param String selectedSession
@param List<Student> students


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Classes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><img src="dolphin128x128.png" height="25px">Dolphins Swim Academy</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/displayclasses" role="button">Classes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/students" role="button">Students</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Coaches</a>
                    </li>
                    <li>
                        <a class="nav-link" href="/registerclass">Create New Class</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<!-- fix the structure of the top -->
<h1 class="fs-6 text-light-emphasis mb-3">Classes</h1>

<div class="row">
    <div class="col-sm-6">
        <form action="/displayclasses" method="GET">
            <div class="mb-3 d-flex">
                <select class="form-select me-2" name="session">
                    <option value="1" selected="${selectedSession != null && selectedSession.equals("1")}">Session 1: June 17 - June 27</option>
                    <option value="2" selected="${selectedSession != null && selectedSession.equals("2")}">Session 2: July 8 - July 18</option>
                    <option value="3" selected="${selectedSession != null && selectedSession.equals("3")}">Session 3: July 22 - August 1</option>
                    <option value="4" selected="${selectedSession != null && selectedSession.equals("4")}">Session 4: August 5 - June 15</option>
                </select>

                <button type="submit" class="btn btn-primary float-end">Select</button>

            </div>
        </form>
    </div>


<%--    <div class="border">--%>
<%--        <table class="table table-striped table-hover table-bordered mb-3">--%>
<%--            <tr>--%>
<%--                <th>ID</th>--%>
<%--                <th>Level</th>--%>
<%--                <th>Time</th>--%>
<%--            </tr>--%>
<%--            @if (classes != null && !classes.isEmpty())--%>
<%--                @for(DolphinClass dolphinClass : classes)--%>
<%--                    <tr>--%>
<%--                        <td>${dolphinClass.getId()}</td>--%>
<%--                        <td>${dolphinClass.getLevel()}</td>--%>
<%--                        <td>${dolphinClass.getTime()}</td>--%>
<%--                    </tr>--%>
<%--                @endfor--%>
<%--            @else--%>
<%--                <tr>--%>
<%--                    <td colspan="5">No classes in this section.</td>--%>
<%--                </tr>--%>
<%--            @endif--%>
<%--        </table>--%>


<%--    </div>--%>
<%--    @for(DolphinClass dolphinClass : classes)--%>
<%--        <div>--%>

<%--            <div>--%>
<%--                Session: ${dolphinClass.getSession()} - Time: ${dolphinClass.getTime()}--%>
<%--            </div>--%>

<%--            <table class="table table-striped table-hover table-bordered mb-3">--%>
<%--                <tr>--%>
<%--                    <th>Student ID</th>--%>
<%--                    <th>Name</th>--%>
<%--                    <th>Age</th>--%>
<%--                </tr>--%>
<%--                    @for(Integer studentIds : dolphinClass.getStudentIds())--%>
<%--                        @for(Student student : students)--%>
<%--                            @if(student.getId() == studentIds)--%>
<%--                                <tr>--%>
<%--                                    <td>${student.getId()}</td>--%>
<%--                                    <td>${student.getLevel()}</td>--%>
<%--                                    <td>${student.getBirthYear()}</td>--%>

<%--                                </tr>--%>
<%--                            @endif--%>
<%--                        @endfor--%>
<%--                    @endfor--%>

<%--            </table>--%>
<%--        </div>--%>
<%--    @endfor--%>

<%--    <div class="container-fluid my-4">--%>
<%--        @for(DolphinClass dolphinClass : classes)--%>

<%--            <div class="d-flex justify-content-center">--%>
<%--                <div class="card border-secondary mb-3 w-100" style="max-width: 95%; padding: 2rem;">--%>
<%--                    <div class="card-header">Session: ${dolphinClass.getSession()} - Level: ${dolphinClass.getLevel()} -Time: ${dolphinClass.getTime()}</div>--%>
<%--                    <div class="card-body">--%>
<%--                        <table class="table table-striped table-hover table-bordered mb-3">--%>
<%--                            <tr>--%>
<%--                                <th>Student ID</th>--%>
<%--                                <th>Name</th>--%>
<%--                                <th>Age</th>--%>
<%--                            </tr>--%>
<%--                            @for(Integer studentIds : dolphinClass.getStudentIds())--%>
<%--                                @for(Student student : students)--%>
<%--                                    @if(student.getId() == studentIds)--%>
<%--                                        <tr>--%>
<%--                                            <td>${student.getId()}</td>--%>
<%--                                            <td>${student.getLevel()}</td>--%>
<%--                                            <td>${student.getAge()}</td>--%>

<%--                                        </tr>--%>
<%--                                    @endif--%>
<%--                                @endfor--%>
<%--                            @endfor--%>

<%--                        </table>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        @endfor--%>

<%--    </div>--%>

    <div class="container-fluid my-4">
        @for(DolphinClass dolphinClass : classes)
            <div class="d-flex justify-content-center">
                <div class="card border-secondary mb-3 w-100" style="max-width: 95%; padding: 2rem;">
                    <div class="card-header">Session: ${dolphinClass.getSession()} - Level: ${dolphinClass.getLevel()} - Time: ${dolphinClass.getTime()}</div>
                    <div class="card-body">
                        <table class="table table-striped table-hover table-bordered mb-3">
                            <tr>
                                <th>Student ID</th>
                                <th>Name</th>
                                <th>Age</th>
                            </tr>
                            @for(Student student : dolphinClass.getStudents())
                                <tr>
                                    <td>${student.getId()}</td>
                                    <td>${student.getLevel()}</td>
                                    <td>${student.getAge()}</td>
                                </tr>
                            @endfor
                        </table>
                    </div>
                </div>
            </div>
        @endfor
    </div>



    <p  class="p-3 mb-2 bg-light text-light-emphasis text-center">Copyright &copy; Dolphins Swim Academy 2024
        <br>Dolphin icon is created by <a href="https://www.flaticon.com/authors/freepik">Freepik
        </a> from <a href="https://www.flaticon.com/,">Flaticon</a>
    </p>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</div>

</body>
</html>