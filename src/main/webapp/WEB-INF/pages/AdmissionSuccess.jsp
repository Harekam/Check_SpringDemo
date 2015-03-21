<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li><a href="/admissionForm.html">Home</a></li>
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


<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Student Name</h3>
                </div>
                <div class="panel-body">
                    ${student.studentName}
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Student Hobby</h3>
                </div>
                <div class="panel-body">
                    ${student.studentHobby}
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Student Mobile</h3>
                </div>
                <div class="panel-body">
                    ${student.studentMobile}
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Student DOB</h3>
                </div>
                <div class="panel-body">
                    ${student.studentDOB}
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Student Skills</h3>
                </div>
                <div class="panel-body">
                    ${student.studentSkills}
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Student Address</h3>
                </div>
                <div class="panel-body">
                    ${student.studentAddress.street},&nbsp;
                    ${student.studentAddress.city},&nbsp;
                    ${student.studentAddress.pincode},&nbsp;
                    ${student.studentAddress.country}


                </div>
            </div>
        </div>
    </div>

</div>
</div>
</body>
</html>