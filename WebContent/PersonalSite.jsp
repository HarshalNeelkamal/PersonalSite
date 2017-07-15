<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	var  degree = 0, timer, i = 0;
	var arr = ["View", "my", "Skills !"];
	
	function rotationFunction(){
		$("#skill").text(arr[i]);
		i = (i+1)%3;
		timer = setInterval(rotate,3);
		function rotate(){
			degree += 5;
			$("#skill").css({"transform" : "rotate("+degree+"deg)"});
			if(degree >= 360){
				degree = 0; 
				clearInterval(timer);
			}
		}
	}
	
</script>
<style type="text/css">
.mainBody{
margin: 0px;
padding: 0px;
height:97vh;
width: 100%;
}
.mainBody div{
opacity: 0.8;
}
.topPart{
float: left;
width: 100%;
height: 33%;
padding: 0px;
margin: 0px;
}
.topPart #left{
margin:0px;
width: 25%;
float: left;
background-color: #eef442;
height: 100%;
}
.topPart #right{
margin:0px;
width: 75%;
float: left;
background-color: #e27c7e;
height: 100%;
}
.leftPart{
float: left;
width: 67%;
height: 67%;
padding: 0px;
margin: 0px;
}
.leftPart #top{
margin:0px;
width: 100%;
height: 50%;
float: left;
background-color: #bbf441;
}
.leftPart #bottom{
margin:0px;
width: 100%;
height: 50%;
float: left;
}
.leftPart #bottomLeft{
margin:0px;
width: 50%;
height: 100%;
float: left;
background-color: #41a9f4;
}
.leftPart #bottomRight{
margin:0px;
width: 50%;
height: 100%;
float: left;
background-color: #e4c0e5;
}
.rightPart{
float: right;
width: 33%;
height: 67%;
margin: 0px;
background-color: #c6bec6;
}
p{
padding: 10px;
}
.name_p{
padding-left: 10%;
padding-top: 6vh;
margin: 0px;
font-size: 1vh;
font-family: 'Indie Flower', cursive;
font-stretch: extra-condensed;
font-weight: bold;
animation-name: stretchName;
animation-duration:6.0s;
animation-iteration-count: infinite;
}
.skills_p{
padding-top: 6vh;
text-align: center;
margin: 0px;
font-size: 10vh;
font-family: 'Indie Flower', cursive;
font-stretch: extra-condensed;
font-weight: bold;
/*animation-name: spinAndChange;
animation-duration: 2.0s;
animation-iteration-count: infinite;*/
}
@keyframes spinAndChange{
0%{transform: rotate(0deg);}
10%{transform: rotate(180deg);}
11%{transform: rotate(198deg); content:'My';}
20%{transform: rotate(360deg); content:'My';}
/*30%{transform: rotate(200deg);}
80%{transform: rotate(200deg);}*/
}
@keyframes stretchName{
10%{font-size: 1vh;}
28%{font-size: 15vh;}//same
33%{font-size: 5vh;}
35%{font-size: 5vh;}//same
40%{font-size: 12vh;}
42%{font-size: 12vh;}//same
45%{font-size: 8vh;}
47%{font-size: 8vh;}
50%{font-size: 10vh;}
85%{font-size: 10vh;}
100%{font-size: 1vh;}
}
</style>
</head>
<body>
<div class= "mainBody">
	<div class="topPart">
		<div id= "left">
		<p class="skills_p" id="skill">View</p>
		</div>
		<div id="right">
		<p class="name_p">Hey! It's HARSHAL</p>
		</div>
	</div>
	<div class = "leftPart">
		<div id= "top">
		<p>Top</p>
		</div>
		<div id="bottom">
			<div id="bottomLeft">
			<p>bottom left</p>
			</div>
			<div id="bottomRight">
			<p>bottom right</p>
			</div>
		</div>
	</div>
	<div class="rightPart">
		<p>Right Part</p>
	</div>
</div>
<script type="text/javascript">
setInterval(rotationFunction, 2000);
</script>
</body>
</html>