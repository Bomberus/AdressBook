<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="adressList" class="de.dhbw.webengineering.addressbook.AddressList" type="de.dhbw.webengineering.addressbook.AddressList" scope="page"/>
<jsp:setProperty name="adressList" property="search" param="search"/>

<html>
  <head>
    <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="css/style.css" rel="stylesheet"></script>
    <title>Addressbuch</title>
  </head>
  <body>
  <nav>
    <div class="nav-wrapper">
      <form action="${pageContext.request.requestURL}" method="get">
        <div class="input-field">
          <input id="search" name="search" type="search" required>
          <label for="search"><i class="mdi-action-search"></i></label>
          <i class="mdi-navigation-close"></i>
        </div>
      </form>
    </div>
  </nav>
  <button class="btn green"><i class="mdi-content-add"></i> Neuer Eintrag </button>
  <table>
    <thead>
    <tr>
      <th data-field="name">Name</th>
      <th data-field="christianname">Vorname</th>
      <th data-field="email">Email</th>
      <th data-field="phone">Telefon</th>
      <th data-field="mobile">Mobil</th>
      <th data-field="street">Straße</th>
      <th data-field="number">Nummer</th>
      <th data-field="city">Stadt</th>
      <th data-field="postcode">Postleitzahl</th>
      <th data-field="country">Land</th>
      <th data-field="birthday">Geburtstag</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${adressList.getList()}" var="detail">
      <tr>
        <td>${detail.name}</td>
        <td>${detail.christianname}</td>
        <td>${detail.city}</td>
        <td>${detail.phone}</td>
        <td>${detail.mobile}</td>
        <td>${detail.street}</td>
        <td>${detail.number}</td>
        <td>${detail.city}</td>
        <td>${detail.postcode}</td>
        <td>${detail.country}</td>
        <td>${detail.birthday}</td>
        <td><button onclick="showDetail(${detail.id})" class="btn blue"><i class="mdi-notification-more"></i></button></td>
        <td><button onclick="delEntry(${detail.id})" class="btn red"><i class="mdi-action-delete"></i> </button> </td>
      </tr>
    </c:forEach>
    </tbody>
    </table>
  </body>
  <script src="jquery-2.1.4.min.js" type="text/javascript"></script>
  <script src="materialize/js/materialize.min.js" type="text/javascript"></script>
  <script src="js/script.js" type="text/javascript"></script>
</html>
