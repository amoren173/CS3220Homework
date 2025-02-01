package edu.csula.art.homework1;

import edu.csula.art.homework1.model.DolphinClass;
import edu.csula.art.homework1.model.Student;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class DataStore {
    private List<Student> students;
    private List<DolphinClass> classes;

    public DataStore() {
        students = new ArrayList<>();
        classes = new ArrayList<>();
        students.add(new Student("John", 1, 2012, "Minnows","10am", "9am"));
        students.add(new Student("Eva", 1, 2018, "Minnows","10am", "1pm"));
        students.add(new Student("Lucy", 1, 2017, "Minnows","1pm", "2pm"));
        students.add(new Student("Matt", 1, 2007, "Minnows","9am", "2pm"));

    }

    public List<Student> getStudents() {
        return students;
    }

    public List<DolphinClass> getClasses() {
        return classes;
    }

    public void setStudents(Student student) {
        students.add(student);
    }

    public void setClasses(DolphinClass dolphinClass) {
        classes.add(dolphinClass);
    }

    public List<Student> getStudentsSorted(int id) {
        List<Student> studentsSorted = new ArrayList<>();
        for (Student student : students) {
            if (student.getId() == id) {
                studentsSorted.add(student);
            }
        }

        return studentsSorted;
    }

    public Student getStudent(int id) {
        for (Student student : students) {
            if (student.getId() == id) {
                return student;
            }
        }
        return null;
    }

    public DolphinClass getClassById(int id) {

        for (DolphinClass dolphinClass : classes) {
            if (dolphinClass.getId() == id) {
                return dolphinClass;
            }
        }
        return null;
    }

}
