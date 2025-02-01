package edu.csula.art.homework1.model;

import java.util.ArrayList;
import java.util.List;

public class DolphinClass {
    private static int idCounter = 0;

    private int id;
    private int session;
    private String level;
    private String time;
    private List<Integer> studentIds;
    private List<Student> students;

    public DolphinClass( int session, String level, String time) {
        this.id = ++idCounter;
        this.session = session;
        this.level = level;
        this.time = time;
        studentIds = new ArrayList<>();

    }

    public int getId() {
        return id;
    }

    public int getSession() {
        return session;
    }

    public String getLevel() {
        return level;
    }

    public String getTime() {
        return time;
    }
    public void setStudentIds(Integer studentIds) {
        this.studentIds.add(studentIds);
    }

    public List<Integer> getStudentIds() {
        return studentIds;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }


}
