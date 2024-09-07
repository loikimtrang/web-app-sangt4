<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<title>Survey</title>
<link href="<c:url value='/template/web/style.css'/>" rel="stylesheet">

<body>
  <div class="logo">
    <img src="<c:url value='/template/web/img/logo.jpg'/>" alt="Logo">
  </div>
  <h4>Survey</h4>
  <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
  <h4>Your Information</h4>
  <form action="home" method="post">
    <input type="hidden" name="action" value="add">

    <div class="form-group">
      <label>First Name:</label>
      <input type="text" name="firstName" required><br>
    </div>

    <div class="form-group">
      <label>Last Name:</label>
      <input type="text" name="lastName" required><br>
    </div>

    <div class="form-group">
      <label>Email:</label>
      <input type="email" name="email" required><br>
    </div>

    <div class="form-group">
      <label>Date of Birth:</label>
      <input type="date" name="dob"><br>
    </div>

    <h4>How did you hear about us?</h4>
    <div class="form-group">
      <input type="radio" name="source" value="Search engine" checked> <span>Search engine</span>
      <input type="radio" name="source" value="Word of mouth"> <span>Word of mouth</span>
      <input type="radio" name="source" value="Social Media"> <span>Social Media</span>
      <input type="radio" name="source" value="Other"> <span>Other</span>
    </div>

    <h4>Would you like to receive announcements about new CDs and special offers?</h4>
    <div class="form-group">
      <input type="checkbox" name="receive_announcements"> YES, I'd like that.<br>
      <input type="checkbox" name="email_announcements"> YES, please send me email announcements.<br>
    </div>

    <div class="form-group">
      <label>Please contact me by:</label>
      <select name="contact_method">
        <option value="email_or_postal_mail">Email or postal mail</option>
        <option value="Email">Email</option>
        <option value="Postal mail">Postal mail</option>
      </select>
    </div>

    <button type="submit">Submit</button>
  </form>
    <button type="submit" value="Submit" id="submit">submit</button>
  </form>
  </body>
</html>
