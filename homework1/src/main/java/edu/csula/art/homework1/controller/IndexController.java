package edu.csula.art.homework1.controller;
import edu.csula.art.homework1.DataStore;
import edu.csula.art.homework1.DolphinClassRepo;
import edu.csula.art.homework1.StudentRepo;
import edu.csula.art.homework1.model.DolphinClass;
import edu.csula.art.homework1.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Controller
public class IndexController {
    private final StudentRepo studentRepo;
    private final DolphinClassRepo dolphinClassRepo;

    public IndexController(StudentRepo studentRepo, DolphinClassRepo dolphinClassRepo) {
        this.studentRepo = studentRepo;
        this.dolphinClassRepo = dolphinClassRepo;
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
        List<Student> filteredStudents = StreamSupport.stream(studentRepo.findAll().spliterator(), false)
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
        Iterable<DolphinClass> classesIterable = dolphinClassRepo.findAll();

        List<DolphinClass> filteredClasses = StreamSupport.stream(classesIterable.spliterator(), false)
                .filter(dolphinClass -> dolphinClass.getSession() == Integer.parseInt(session))
                .collect(Collectors.toList());


        model.addAttribute("classes", filteredClasses);
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

        studentRepo.save(newStudent);

        return "redirect:/students";
    }

    @PostMapping("/registerclass")
    public String registerClass(@RequestParam("session") String session, @RequestParam("level") String level, @RequestParam("time1") String time1 ){
        DolphinClass dolphinClass = new DolphinClass(Integer.parseInt(session), level, time1);

        dolphinClassRepo.save(dolphinClass);

        return "redirect:/displayclasses";
    }

//    this just provides a form where students are displayed and can be registered to a class
    @GetMapping("/registerstudentclass")
    public String registerStudentToClass(Model model){

        model.addAttribute("students", studentRepo.findAll());
        model.addAttribute("classes", dolphinClassRepo.findAll());


        return "registertoclass";
    }

//    actual logical that registers students into a class
    @PostMapping("/registerstudentclass")
    public String registerStudentToClass(@RequestParam("classid") Integer classId, @RequestParam("studentId") Integer studentId){
        Student student = studentRepo.findById(studentId).orElse(null);
        DolphinClass dolphinClass = dolphinClassRepo.findById(classId).orElse(null);


        if (student.isRegistered()) {
            return "redirect:/students";
        } else {
            // Register the student to the class
            student.setRegistered(true);
            dolphinClass.getStudents().add(student); // Add the student to the DolphinClass
            student.setDolphinClass(dolphinClass);  // Set the class for the student

            // Save the changes to both the student and the class
            studentRepo.save(student);
            dolphinClassRepo.save(dolphinClass);

            return "redirect:/registerstudentclass"; // Redirect to the register student class page or another page
        }
    }

    @GetMapping("/registerform/{id}")
    public String registerForm(@PathVariable String id, Model model) {
        Student student = studentRepo.findById(Integer.valueOf(id)).orElse(null);

        if (student == null) {
            return "redirect:/students"; // Or return an error page or message
        }


        model.addAttribute("student", student);
        return "registerform";
    }
}




//    @GetMapping("/students")
//    public String students(Model model) {
//        model.addAttribute("students", dataStore.getStudents());
//        return "students";

