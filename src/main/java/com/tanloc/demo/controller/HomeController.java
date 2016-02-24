package com.tanloc.demo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tanloc.demo.model.Student;
import com.tanloc.demo.service.StudentService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private StudentService studentService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/getStudent/{id}", method = RequestMethod.GET)
	public @ResponseBody Student getStudent(@PathVariable("id") int id) {
		return studentService.getStudent(id);
	}

	@RequestMapping(value = "/getAllStudent", method = RequestMethod.GET)
	public @ResponseBody List<Student> getAllStudent() {
		return studentService.getAllStudent();
	}

	@RequestMapping(value = "/updateStudent", method = RequestMethod.PUT)
	public @ResponseBody boolean updateStudent(@RequestBody Student student) {
		try {
			studentService.updateStudent(student);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public @ResponseBody int addStudent(@RequestBody Student student) {
		studentService.insertStudent(student);
		return student.getId();
	}

	@RequestMapping(value = "/deleteStudent/{id}", method = RequestMethod.DELETE)
	public @ResponseBody boolean deleteStudent(@PathVariable("id") int id) {
		try {
			studentService.deleteStudent(id);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
}
