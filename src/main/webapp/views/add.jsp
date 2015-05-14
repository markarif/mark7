<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: markarif
  Date: 5/13/2015
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
    .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
    .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
    .tg .tg-4eph{background-color:#f9f9f9}

    input{
      display: inline;
    }
    form{
      display: inline-block;
    }
  </style>

</head>
<body>
<c:if test="${not empty msg}">
  <div class="msg">${msg}</div>
</c:if>
<h1>Add Patient Details</h1>
<p><a href="/newassignment/drug">View Drugs</a> allocate to patients</p>
<p>Required fields are marked with an asterisk*</p>
<form action="<c:url value='/create' />" method="post">
  <label for="fname">*First Name:</label>
  <input type="text" name="fname" id="fname" required>

  <label for="lname">*Last Name:</label>
  <input type="text" name="lname" id="lname" required>

  <label for="bdate">*Date of birth:</label>
  <input type="date" name="bdate" id="bdate" required>
  <button>Save</button>

</form>
<br/>
<p>List of Patients</p>
<c:if test="${!empty listPatient}">
  <table class="tg">
    <tr>
      <th width="80">Patient ID</th>
      <th width="150">Patient Name</th>
      <th width="150">Date of Birth</th>
      <th width="150">Allocate Drug</th>
    </tr>
    <c:forEach items="${listPatient}" var="patient">
      <tr>
        <td>${patient.id}</td>
        <td>${patient.fname} ${patient.lname}</td>
        <td>${patient.dob}</td>
        <td><a href="<c:url value='/allocate?id=${patient.id}' />" >Allocate Drug</a></td>
      </tr>
    </c:forEach>
  </table>
</c:if>
</body>
</html>
