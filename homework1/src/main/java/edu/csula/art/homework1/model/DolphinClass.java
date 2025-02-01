package edu.csula.art.homework1.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
public class DolphinClass {
//    private static int idCounter = 0;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int session;
    private String level;
    private String time;
//    private List<Integer> studentIds;

    @OneToMany(mappedBy = "dolphinClass", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Student> students;

    public DolphinClass() {
        this.students = new ArrayList<>();
    }

    public DolphinClass( int session, String level, String time) {
//        this.id = ++idCounter;
        this();
        this.session = session;
        this.level = level;
        this.time = time;
//        studentIds = new ArrayList<>();

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
//    public void setStudentIds(Integer studentIds) {
//        this.studentIds.add(studentIds);
//    }
//
//    public List<Integer> getStudentIds() {
//        return studentIds;
//    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }


}
