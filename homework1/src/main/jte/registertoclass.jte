@import edu.csula.art.homework1.model.DolphinClass
@import edu.csula.art.homework1.model.Student
@import java.util.List
@param List<DolphinClass> classes
@param List<Student> students

@template.layout.template(content = @`
    <div>
        <table class="table table-striped table-hover table-bordered mb-3">
            <tr>
                <th>Name</th>
                <th>Level</th>
                <th>Time(1st Choice)</th>
                <th>Time(2nd Choice)</th>
                <th>Register Student</th>
            </tr>
            @if (students != null && !students.isEmpty())
                @for(Student student : students)
                    <tr>
                        <td>${student.getName()}</td>
                        <td>${student.getLevel()}</td>
                        <td>${student.getTime1()}</td>
                        <td>${student.getTime2()}</td>
                        <form action="/registerstudentclass" method="POST">
                            <td>
                                <select name="classid">
                                    @if(classes != null && !classes.isEmpty())
                                        @for(DolphinClass dolphinClass : classes)
                                            @if((student.getTime1().equals(dolphinClass.getTime()) || student.getTime2().equals(dolphinClass.getTime())) && student.getSession() == dolphinClass.getSession() && student.getLevel().equals(dolphinClass.getLevel()))
                                                <option value="${dolphinClass.getId()}">
                                                    Level: ${dolphinClass.getLevel()} - Session: ${dolphinClass.getSession()} - ${dolphinClass.getTime()}
                                                </option>
                                            @endif
                                        @endfor
                                    @else
                                        <option>
                                            No Classes Exist Yet
                                        </option>
                                    @endif
                                </select>
                            </td>
                            <td>
                                <input type="hidden" name="studentId" value="${student.getId()}">
                                @if(student.isRegistered())
                                    <button type="submit" class="btn btn-secondary" disabled>Already Registered</button>
                                @else
                                    <button type="submit" class="btn btn-primary">Register</button>
                                @endif
                            </td>

                        </form>
                     </tr>
                @endfor
            @else
                <tr>
                    <td colspan="5">No students in this section.</td>
                </tr>
            @endif
        </table>

    </div>


`, title = "Register Student")
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Register Student</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<div>--%>
<%--    <table class="table table-striped table-hover table-bordered mb-3">--%>
<%--        <tr>--%>
<%--            <th>Name</th>--%>
<%--            <th>Level</th>--%>
<%--            <th>Time(1st Choice)</th>--%>
<%--            <th>Time(2nd Choice)</th>--%>
<%--            <th>Register Student</th>--%>
<%--        </tr>--%>
<%--        @if (students != null && !students.isEmpty())--%>
<%--            @for(Student student : students)--%>
<%--                <tr>--%>
<%--                    <td>${student.getName()}</td>--%>
<%--                    <td>${student.getLevel()}</td>--%>
<%--                    <td>${student.getTime1()}</td>--%>
<%--                    <td>${student.getTime2()}</td>--%>
<%--                    <form action="/registerstudentclass" method="POST">--%>
<%--                        <td>--%>
<%--                            <select name="classid">--%>
<%--                                @if(classes != null && !classes.isEmpty())--%>
<%--                                    @for(DolphinClass dolphinClass : classes)--%>
<%--                                        @if((student.getTime1().equals(dolphinClass.getTime()) || student.getTime2().equals(dolphinClass.getTime())) && student.getSession() == dolphinClass.getSession() && student.getLevel().equals(dolphinClass.getLevel()))--%>
<%--                                            <option value="${dolphinClass.getId()}">--%>
<%--                                                Level: ${dolphinClass.getLevel()} - Session: ${dolphinClass.getSession()} - ${dolphinClass.getTime()}--%>
<%--                                            </option>--%>
<%--                                        @else--%>
<%--                                            <option>--%>
<%--                                                No Classes Exist Yet--%>
<%--                                            </option>--%>
<%--                                        @elseif(student.getTime2().equals(dolphinClass.getTime()) && student.getSession() == dolphinClass.getId())--%>
<%--                                            <option value="${dolphinClass.getId()}">--%>
<%--                                                Level: ${dolphinClass.getLevel()} - ${dolphinClass.getSession()} - ${dolphinClass.getTime()}--%>
<%--                                            </option>--%>

<%--                                        @endif--%>
<%--                                    @endfor--%>
<%--                                @else--%>
<%--                                    <option>--%>
<%--                                        No Classes Exist Yet--%>
<%--                                    </option>--%>
<%--                                @endif--%>
<%--                            </select>--%>
<%--                        </td>--%>
<%--                        <td>--%>
<%--                            <input type="hidden" name="studentId" value="${student.getId()}">--%>
<%--                            @if(student.isRegistered())--%>
<%--                                <button type="submit" class="btn btn-secondary" disabled>Already Registered</button>--%>
<%--                            @else--%>
<%--                                <button type="submit" class="btn btn-primary">Register</button>--%>
<%--                            @endif--%>
<%--                        </td>--%>

<%--                    </form>--%>
<%--                </tr>--%>
<%--            @endfor--%>
<%--        @else--%>
<%--            <tr>--%>
<%--                <td colspan="5">No students in this section.</td>--%>
<%--            </tr>--%>
<%--        @endif--%>
<%--    </table>--%>

<%--</div>--%>

<%--<p  class="p-3 mb-2 bg-light text-light-emphasis text-center">Copyright &copy; Dolphins Swim Academy 2024--%>
<%--    <br>Dolphin icon is created by <a href="https://www.flaticon.com/authors/freepik">Freepik--%>
<%--    </a> from <a href="https://www.flaticon.com/,">Flaticon</a>--%>
<%--</p>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>--%>

<%--</body>--%>
<%--</html>--%>
