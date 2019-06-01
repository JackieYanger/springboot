package com.how2java.springboot.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.data.jpa.repository.JpaRepository;

import com.how2java.springboot.pojo.Category;
import com.how2java.springboot.pojo.User;

public interface UserDAO extends JpaRepository<User,Integer>{

	 
}
