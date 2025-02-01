@template.layout.template(content = @`

    <div class="container mt-5" >
        <form action="/register" method="POST">
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label class="form-label">Session</label>
                    <select class="form-select" name="session">
                        <option value="1">Session 1: June 17 - June 27</option>
                        <option value="2">Session 2: July 8 - July 18</option>
                        <option value="3">Session 3: July 22 - August 1</option>
                        <option value="4">Session 4: August 5 - August 15</option>
                    </select>
                </div>

                <div class="col-sm-6 mb-3">
                    <label class="form-label">Level</label>
                    <select class="form-select" name="level">
                        <option value="Starfish">Starfish</option>
                        <option value="Minnows">Minnows</option>
                        <option value="Guppies">Guppies</option>
                        <option value="Dolphins">Dolphins</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label for="name" class="form-label" >Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>

                <div class="col-sm-6 mb-3">
                    <label for="birthyear" class="form-label">Birth Year</label>
                    <input type="text" class="form-control" id="birthyear" name="birthYear" required>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label class="form-label">Time (1st Choice)</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time1" id="firstTime1" value="9am" required>
                        <label class="form-check-label" for="firstTime1">9am</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time1" id="firstTime2" value="10am" required>
                        <label class="form-check-label" for="firstTime1">10am</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time1" id="firstTime3" value="1pm" required>
                        <label class="form-check-label" for="firstTime2">1pm</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time1" id="firstTime4" value="2pm" required>
                        <label class="form-check-label" for="firstTime3">2pm</label>
                    </div>
                </div>

                <div class="col-sm-6 mb-3">
                    <label class="form-label">Time (2nd Choice)</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time2" id="secondTime1" value="9am" required>
                        <label class="form-check-label" for="secondTime1">9am</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time2" id="secondTime2" value="10am" required>
                        <label class="form-check-label" for="secondTime1">10am</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time2" id="secondTime3" value="1pm" required>
                        <label class="form-check-label" for="secondTime2">1pm</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="time2" id="secondTime4" value="2pm" required>
                        <label class="form-check-label" for="secondTime3">2pm</label>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </form>
    </div>



`, title = "Dolphins Swim Academy Registration")



<%--un do this part--%>
<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport"--%>
<%--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
<%--    <title>Dolphins Swim Academy Registration</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div>--%>
<%--    <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">--%>
<%--        <div class="container-fluid">--%>
<%--            <a class="navbar-brand" href="/"><img src="dolphin128x128.png" height="25px">Dolphins Swim Academy</a>--%>
<%--            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                <span class="navbar-toggler-icon"></span>--%>
<%--            </button>--%>
<%--            <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--                <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/displayclasses">Classes</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/students">Students</a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="#">Coaches</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a class="nav-link" href="/registerclass">Create New Class</a>--%>
<%--                    </li>--%>

<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </nav>--%>
<%--</div>--%>


<%--<div class="container mt-5" >--%>
<%--    <form action="/register" method="POST">--%>
<%--        <div class="row">--%>
<%--            <div class="col-sm-6 mb-3">--%>
<%--                <label class="form-label">Session</label>--%>
<%--                <select class="form-select" name="session">--%>
<%--                    <option value="1">Session 1: June 17 - June 27</option>--%>
<%--                    <option value="2">Session 2: July 8 - July 18</option>--%>
<%--                    <option value="3">Session 3: July 22 - August 1</option>--%>
<%--                    <option value="4">Session 4: August 5 - August 15</option>--%>
<%--                </select>--%>
<%--            </div>--%>

<%--            <div class="col-sm-6 mb-3">--%>
<%--                <label class="form-label">Level</label>--%>
<%--                <select class="form-select" name="level">--%>
<%--                    <option value="Starfish">Starfish</option>--%>
<%--                    <option value="Minnows">Minnows</option>--%>
<%--                    <option value="Guppies">Guppies</option>--%>
<%--                    <option value="Dolphins">Dolphins</option>--%>
<%--                </select>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row">--%>
<%--            <div class="col-sm-6 mb-3">--%>
<%--                <label for="name" class="form-label" >Name</label>--%>
<%--                <input type="text" class="form-control" id="name" name="name" required>--%>
<%--            </div>--%>

<%--            <div class="col-sm-6 mb-3">--%>
<%--                <label for="birthyear" class="form-label">Birth Year</label>--%>
<%--                <input type="text" class="form-control" id="birthyear" name="birthYear" required>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row">--%>
<%--            <div class="col-sm-6 mb-3">--%>
<%--                <label class="form-label">Time (1st Choice)</label>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time1" id="firstTime1" value="9am" required>--%>
<%--                    <label class="form-check-label" for="firstTime1">9am</label>--%>
<%--                </div>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time1" id="firstTime2" value="10am" required>--%>
<%--                    <label class="form-check-label" for="firstTime1">10am</label>--%>
<%--                </div>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time1" id="firstTime3" value="1pm" required>--%>
<%--                    <label class="form-check-label" for="firstTime2">1pm</label>--%>
<%--                </div>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time1" id="firstTime4" value="2pm" required>--%>
<%--                    <label class="form-check-label" for="firstTime3">2pm</label>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-sm-6 mb-3">--%>
<%--                <label class="form-label">Time (2nd Choice)</label>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time2" id="secondTime1" value="9am" required>--%>
<%--                    <label class="form-check-label" for="secondTime1">9am</label>--%>
<%--                </div>--%>

<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time2" id="secondTime2" value="10am" required>--%>
<%--                    <label class="form-check-label" for="secondTime1">10am</label>--%>
<%--                </div>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time2" id="secondTime3" value="1pm" required>--%>
<%--                    <label class="form-check-label" for="secondTime2">1pm</label>--%>
<%--                </div>--%>
<%--                <div class="form-check form-check-inline">--%>
<%--                    <input class="form-check-input" type="radio" name="time2" id="secondTime4" value="2pm" required>--%>
<%--                    <label class="form-check-label" for="secondTime3">2pm</label>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="mb-3">--%>
<%--            <button type="submit" class="btn btn-primary">Register</button>--%>
<%--        </div>--%>
<%--    </form>--%>

<%--    <p class="p-3 mb-2 bg-light text-light-emphasis text-center">--%>
<%--        Copyright &copy; Dolphins Swim Academy 2024<br>--%>
<%--        Dolphin icon is created by <a href="https://www.flaticon.com/authors/freepik">Freepik</a> from <a href="https://www.flaticon.com/">Flaticon</a>--%>
<%--    </p>--%>
<%--</div>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>

