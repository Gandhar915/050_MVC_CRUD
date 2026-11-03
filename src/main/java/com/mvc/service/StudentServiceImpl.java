package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.entity.Student;
import com.mvc.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	public void saveNewStduent(Student student) {
		this.studentRepository.saveNewStudent(student);

	}

	public List<Student> getAllStudentData() {
		 return this.studentRepository.getAllStudentData();
		
	}

	public Student getStudentById(int id) {
		
		return this.studentRepository.getById(id);
	}

	public void deleteData(Student stduent) {
		this.studentRepository.deleteData(stduent);
		
	}

	public void updateData(Student stduent) {
		this.studentRepository.updateData(stduent);
		
	}

}
