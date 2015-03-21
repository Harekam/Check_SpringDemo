<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge; text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<c:url value="/resources/css/bootstrap_themed.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
    <style id="jsbin-css">
        body {
            font-weight: 300;
        }

        p {
            margin-top: 2em;
            margin-bottom: 2em;
            line-height: 1.6em;
            font-size: 20px;
        }

        .splash {
            height: 35em;
            padding-top: 9em;
            margin-bottom: 2em;
            background-image: url("http://i.imgur.com/Sbh58eU.jpg");
            background-size: cover;
            color: #fff;
            text-align: center;
        }

        .navbar-default {
            position: absolute;
            background-color: transparent;
        }

        .navbar-default .navbar-brand {
            font-size: 20px;
        }

        .navbar-default .navbar-brand,
        .navbar-default .navbar-nav > li > a {
            font-weight: 400;
        }

        .navbar-default .navbar-nav > li > a:hover {
            background-color: transparent;
        }

        .btn {
            font-size: 20px;
        }

        .center-block {
            float: none !important
        }
    </style>
</head>
<body>
<nav id="myNavbar" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Spring MVC Demo</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#" target="_blank">About</a></li>
                <li><a href="#" target="_blank">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="splash">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <h1>${headerMessage}</h1>

                <p>STUDENT ADMISSION FORM FOR ENGINEERING COURSE</p>

                <p><a class="btn btn-primary btn-lg">Learn more</a></p>
            </div>
        </div>
    </div>
</div>
<form:errors path="student.*"/>
<div class="container">
    <div class="row">
        <div class="col-lg-6 center-block">
            <div class="well bs-component">

                <form class="form-horizontal" action="/submitAdmissionForm.html" method="post">
                    <fieldset>
                        <legend>Student Information</legend>
                        <div class="form-group">
                            <label for="inputName" class="col-lg-2 control-label">Name</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputName" placeholder="Name"
                                       name="studentName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputHobby" class="col-lg-2 control-label">Hobby</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputHobby" placeholder="Hobby"
                                       name="studentHobby">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputMobile" class="col-lg-2 control-label">Mobile</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputMobile" placeholder="Mobile"
                                       name="studentMobile">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputDOB" class="col-lg-2 control-label">Date of Birth</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputDOB" placeholder="DOB"
                                       name="studentDOB">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="select" class="col-lg-2 control-label">Skills</label>

                            <div class="col-lg-10">
                                <select multiple="" class="form-control" id="select" name="studentSkills">
                                    <option value="Java Core">Java Core</option>
                                    <option value="Spring Core">Spring Core</option>
                                    <option value="Spring MVC">Spring MVC</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <p>Student Address: </p>
                            <label for="inputCountry" class="col-lg-2 control-label">Country</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputCountry" placeholder="Country"
                                       name="studentAddress.country">
                            </div>
                            <label for="inputCity" class="col-lg-2 control-label">City</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputCity" placeholder="City"
                                       name="studentAddress.city"></div>

                            <label for="inputStreet" class="col-lg-2 control-label">Steet</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputStreet" placeholder="Street"
                                       name="studentAddress.street"></div>
                            <label for="inputPincode" class="col-lg-2 control-label">Pincode</label>

                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputPincode" placeholder="Pincode"
                                       name="studentAddress.pincode"></div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button type="reset" class="btn btn-default">Reset</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

