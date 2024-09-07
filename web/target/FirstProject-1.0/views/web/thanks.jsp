<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>

<html>
<head>
    <title>Thank You</title>
</head>
<body>
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>

    <label>First Name:</label>
    <span>${user.firstName}</span><br>

    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    <label>Date of birth:</label>
    <span>${user.dob}</span><br>
    <label>How did you hear about us?</label>
    <span>${source}</span><br>
    <label>Would you like to receive announcements about new CDs and special offers?</label>
    <c:if test="${receiveAnnouncements}">
        <span>YES, I'd like that.</span><br>
    </c:if>
    <c:if test="${emailAnnouncements}">
        <span>YES, please send me email announcements</span><br>
    </c:if>

    <label>Please contact me by:</label>
    <span>${contactMethod}</span><br>
    <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
</body>
</html>
