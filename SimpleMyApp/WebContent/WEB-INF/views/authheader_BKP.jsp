<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	margin: 0;
}

ul.topnav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

ul.topnav li {
	float: left;
}

ul.topnav li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

ul


.topnav

 

li

 

a


:hover


:not

 

(
.active

 

)
{
background-color


:

 

#111


;
}
ul.topnav li a.active {
	background-color: #4CAF50;
}

ul.topnav li.right {
	float: right;
}

@media screen and (max-width: 600px) {
	ul.topnav li.right, ul.topnav li {
		float: none;
	}
}
</style>
</head>
<div>
	<ul class="topnav">
		<li><a class="active" href="#home">Home</a></li>
		<li><a href="#news">News</a></li>
		<li><a href="#contact">Contact</a></li>

		<sec:authorize access="hasAnyRole('ADMIN', 'DBA','USER')">
			<li class="right"><a href="./logout">LogOut</a></li>
		</sec:authorize>

		<sec:authorize access="!hasAnyRole('ADMIN', 'DBA','USER')">
			<li class="right"><a href="./login">Signup or Login</a></li>
		</sec:authorize>
	</ul>
</div>



