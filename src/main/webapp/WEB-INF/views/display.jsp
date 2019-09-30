<%--
  Created by IntelliJ IDEA.
  User: nhok9xyeuem
  Date: 9/30/19
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>Current Local Times Around the World</h2>
<span>Current time in ${city}: <strong>${date}</strong></span>


<form id="locale" action="display" method="get">
    <label>
        <select name="city" onchange="document.getElementById('locale').submit()">
            <option value="Asia/Ho_Chi_Minh">Select a city</option>
            <option value="Asia/Ho_Chi_Minh" selected>Ho Chi Minh</option>
            <option value="Singapore">Singapore</option>
            <option value="Asia/Hong_Kong">Hong Kong</option>
            <option value="Asia/Tokyo">Tokyo</option>
            <option value="Asia/Seoul">Seoul</option>
            <option value="Europe/London">London</option>
            <option value="Europe/Madrid">Madrid</option>
            <option value="America/New_York">New York</option>
            <option value="Australia/Sydney">Sydney</option>
            <option value="Argentina/Buenos_Aires">Buenos Aires</option></select>
    </label>
</form>
</body>
</html>
