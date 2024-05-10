<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>New Omikuji</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<div class="d-flex justify-content-around p-2">
		<div class="card d-flex justify-content-around" style="width: 18rem;">
		  <div class="card-body">
		    <h5 class="card-title">Send an Omikuji!</h5>
		    <h6 class="card-subtitle mb-2 text-muted">Create an Omikuji using the form below.</h6>
		    <form action="/omikuji/send" method="GET">
		    <!-- Number drop box; 5 to 25 -->
		    	<label class="sr-only" for="number">Select a Number</label>
		    	<select class="custom-select mr-sm-2" class="form-control mb-2" id="number" name="number">
			    	<option selected>Choose...</option>
			        <option value="5">5</option>
			        <option value="6">6</option>
			        <option value="7">7</option>
			        <option value="8">8</option>
			        <option value="9">9</option>
			        <option value="10">10</option>
			        <option value="11">11</option>
			        <option value="12">12</option>
			        <option value="13">13</option>
			        <option value="14">14</option>
			        <option value="15">15</option>
			        <option value="16">16</option>
			        <option value="17">17</option>
			        <option value="18">18</option>
			        <option value="19">19</option>
			        <option value="20">20</option>
			        <option value="21">21</option>
			        <option value="22">22</option>
			        <option value="23">23</option>
			        <option value="24">24</option>
			        <option value="25">25</option>
		    	</select>
		    <!-- Name of a city; text -->
		    	<div class="col-auto">
			      	<label class="sr-only" for="cityName">City Name</label>
			      	<input type="text" class="form-control mb-2" id="cityName" placeholder="City Name" name="cityName">
			    </div>
		    <!-- Name of a person; text -->
		   		 <div class="col-auto">
			      	<label class="sr-only" for="personName">Person Name</label>
			      	<input type="text" class="form-control mb-2" id="personName" placeholder="Name of a Person" name="personName">
			    </div>
		    <!-- Occupation or hobby -->
		   		 <div class="col-auto">
			      	<label class="sr-only" for="activity">Activity</label>
			      	<input type="text" class="form-control mb-2" id="activity" placeholder="Occupation or Hobby" name="activity">
			    </div>
		    <!-- Living thing -->
		    	<div class="col-auto">
			      	<label class="sr-only" for="livingThing">Living Thing</label>
			      	<input type="text" class="form-control mb-2" id="livingThing" placeholder="Living Thing" name="livingThing">
			    </div>
		    <!-- Say something nice -->
		    	<div class="form-group">
				    <label for="kindness">Say something nice...</label>
				    <textarea class="form-control" id="kindness" rows="3" name="kindness"></textarea>
				</div>
			    <div class="d-flex justify-content-around p-2">
			    	<h6 class="card-subtitle m-auto text-muted">Send your Omikuji?</h6>
			    	<button type="submit" class="btn btn-primary">Submit</button>
			    </div>
		    </form>
		  </div>
		</div>
	</div>
</body>
</html>