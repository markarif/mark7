<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: markarif
  Date: 5/13/2015
  Time: 9:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drug Details</title>
  <style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
    .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
    .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
    .tg .tg-4eph{background-color:#f9f9f9}
  </style>
</head>
<body>
<p>Allocate drug to patient</p>
<p>go back to <a href="/newassignment/">Home</a> </p>
<c:if test="${empty msg}">
  <div>
    <p>Name: ${patient.fname} ${patient.lname} </p>
    <p>Date Of Birth: ${patient.dob} </p>
    <p>Allocate Drug</p>
    <form action="<c:url value='/save' />" method="post">
      <input type="hidden" name="patient_id" value="${patient.id}">
      <label for="dname">*Drug Name:</label>
      <input type="text" name="dname" id="dname" required>
      <button>Allocate</button>
    </form>
  </div>
</c:if>
<br/>
<c:if test="${!empty listDrug}">
  <p>List of Drugs</p>
  <table class="tg">
    <tr>
      <th width="80">Drug ID</th>
      <th width="150">Drug Name</th>
      <th width="80">Patient ID</th>
      <th width="250">View Patients Taking this Drug</th>
    </tr>
    <c:forEach items="${listDrug}" var="drug">
      <tr>
        <td>${drug.id}</td>
        <td>${drug.dname} </td>
        <td>${drug.pid}</td>
        <td><a href="<c:url value='/drug' />" >View Patients</a></td>
      </tr>
    </c:forEach>
  </table>
</c:if>
</body>
</html>
