package com.tanloc.demo.service;

import java.util.List;

import com.tanloc.demo.model.Student;

public interface StudentService {
	public int insertStudent(Student student);

	public void updateStudent(Student student);

	public void deleteStudent(int id);

	public Student getStudent(int id);

	public List<Student> getAllStudent();
}
