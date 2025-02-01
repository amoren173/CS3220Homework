package edu.csula.art.homework1.controller;
import edu.csula.art.homework1.DataStore;
import edu.csula.art.homework1.model.DolphinClass;
import edu.csula.art.homework1.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Controller
public class IndexController {
    private DataStore dataStore;

    public IndexController(DataStore dataStore) {
        this.dataStore = dataStore;
    }

    @RequestMapping("/")
    public String index(Model model) {
        return "index";
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @GetMapping("/registerclass")
    public String registerclass() {
        return "registerclass";
    }

//    @RequestMapping
//    public String student(Model model) {
//        return "student";
//    }

    @GetMapping("/students")
    public String students(@RequestParam(required = false, defaultValue = "1") String session, Model model) {
        List<Student> filteredStudents = dataStore.getStudents().stream()
                .filter(student -> String.valueOf(student.getSession()).equals(session))
                .collect(Collectors.toList());

        model.addAttribute("students", filteredStudents);
        model.addAttribute("selectedSession", session); // Keep track of selected session
        return "students";
    }

//    @GetMapping("/displayclasses")
//    public String displayclasses(@RequestParam(required = false, defaultValue = "1") String session, Model model) {
//        List<DolphinClass> filteredClasses = dataStore.getClasses().stream()
//                .filter(student -> String.valueOf(student.getSession()).equals(session))
//                .collect(Collectors.toList());
//
//        model.addAttribute("classes", filteredClasses);
//        model.addAttribute("selectedSession", session);
//        model.addAttribute("students", dataStore.getStudents());
//        model.addAttribute("studentidinclass");
//
//        return "displayclasses";
//    }

    @GetMapping("/displayclasses")
    public String displayclasses(@RequestParam(required = false, defaultValue = "1") String session, Model model) {
        List<Student> allStudents = dataStore.getStudents();

        List<DolphinClass> classesWithStudents = dataStore.getClasses().stream()
                .filter(dolphinClass -> String.valueOf(dolphinClass.getSession()).equals(session))
                .map(dolphinClass -> {
                    // Map student IDs to Student objects
                    List<Student> associatedStudents = dolphinClass.getStudentIds().stream()
                            .map(studentId -> allStudents.stream()
                                    .filter(student -> student.getId() == studentId)
                                    .findFirst()
                                    .orElse(null)) // Handle cases where a student ID might not exist
                            .filter(Objects::nonNull) // Remove nulls
                            .collect(Collectors.toList());

                    // Add the associated students to the DolphinClass object
                    dolphinClass.setStudents(associatedStudents);
                    return dolphinClass;
                })
                .collect(Collectors.toList());

        model.addAttribute("classes", classesWithStudents);
        model.addAttribute("selectedSession", session);

        return "displayclasses";
    }

    @PostMapping("/register")
    public String registerStudent(@RequestParam String session, @RequestParam String level, @RequestParam String name,
                @RequestParam int birthYear,
                @RequestParam String time1,
                @RequestParam String time2) {

        if (time1.equals(time2)) {
            return "redirect:/register"; // Return to the registration page with an error message
        }

        Student newStudent = new Student(name,Integer.parseInt(session), birthYear, level, time1, time2);

        dataStore.setStudents(newStudent);

        return "redirect:/students";
    }

    @PostMapping("/registerclass")
    public String registerClass(@RequestParam("session") String session, @RequestParam("level") String level, @RequestParam("time1") String time1 ){
        DolphinClass dolphinClass = new DolphinClass(Integer.parseInt(session), level, time1);

        dataStore.setClasses(dolphinClass);

        return "redirect:/displayclasses";
    }

//    this just provides a form where students are displayed and can be registered to a class
    @GetMapping("/registerstudentclass")
    public String registerStudentToClass(Model model){

        model.addAttribute("students", dataStore.getStudents());
        model.addAttribute("classes", dataStore.getClasses());


        return "registertoclass";
    }

//    actual logical that registers students into a class
    @PostMapping("/registerstudentclass")
    public String registerStudentToClass(@RequestParam("classid") Integer classId, @RequestParam("studentId") Integer studentId){
        Student student = dataStore.getStudent(studentId);
        DolphinClass dolphinClass = dataStore.getClassById(classId);


        if(student.isRegistered()){
            return "redirect:/students";
        }
        else{
            student.setRegistered(true);
            dolphinClass.setStudentIds(studentId);
            return "redirect:/registerstudentclass";
        }
    }

    @GetMapping("/registerform/{id}")
    public String registerForm(@PathVariable String id, Model model) {
        Student student = dataStore.getStudent(Integer.parseInt(id));
        model.addAttribute("student", student);
        return "registerform";
    }
}




//    @GetMapping("/students")
//    public String students(Model model) {
//        model.addAttribute("students", dataStore.getStudents());
//        return "students";

