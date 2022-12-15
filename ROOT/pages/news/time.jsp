<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
    <%
// Create a SimpleDateFormat object to format the date and time
SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

// Get the current date and time
Date now = new Date();

// Format the date and time
String formattedDate = dateFormat.format(now);
%>
