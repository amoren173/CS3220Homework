package edu.csula.art.homework1;

import edu.csula.art.homework1.model.Student;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepo extends CrudRepository <Student, Integer> {
}
