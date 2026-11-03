package com.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.entity.Student;


public interface StudentService {
	public void saveNewStduent(Student student);
	public List<Student> getAllStudentData();
	public Student getStudentById(int id);
	public void deleteData(Student stduent);
	public void updateData(Student stduent);
}
