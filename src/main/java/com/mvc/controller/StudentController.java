package com.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.entity.Student;
import com.mvc.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(path = "/")
	public String getIndexPage() {
		return "index";
	}

	@RequestMapping(path = "/addStudent")
	public String getAddStudentForm() {
		return "addStudent";
	}

	@RequestMapping(path = "addSuccess", method = RequestMethod.POST)
	public String addStudentSuccess(@ModelAttribute Student student, Model model) {
		this.studentService.saveNewStduent(student);
		
		List<Student> listOfStudent = this.studentService.getAllStudentData();
		model.addAttribute("listOfStudent", listOfStudent);

		return "display";

	}
	
	@RequestMapping(path="/display")
	public String getAllData(Model model){
		List<Student> listOfStudent = this.studentService.getAllStudentData();
		model.addAttribute("listOfStudent", listOfStudent);
		return  "display";
	}
	
	@RequestMapping(path="/delete/{id}")
	public String DeleteDataById(@PathVariable("id") int id, Model model){
		//get the stduent data of that id
		Student student=this.studentService.getStudentById(id);
		//delete the data...
		this.studentService.deleteData(student);
		
		//get remaining data
		List<Student> listOfStudent =this.studentService.getAllStudentData();
		model.addAttribute("listOfStudent", listOfStudent);
		return "display";
	}
	
	@RequestMapping("/update/{id}")
	public String Update(@PathVariable("id") int id, Model model){
		//get the data of that id;
		Student s=this.studentService.getStudentById(id);
		model.addAttribute("s", s);
		
		
		return "updateForm";
		
	}
	
	@RequestMapping(path="update/updateSuccess", method=RequestMethod.POST)
	public String updateSuccess(@ModelAttribute Student student, Model model){
		this.studentService.updateData(student);
		
		//get updated data
		List<Student> listOfStudent=this.studentService.getAllStudentData();
		model.addAttribute("listOfStudent", listOfStudent);
		
		return "display";
		
	}
}
