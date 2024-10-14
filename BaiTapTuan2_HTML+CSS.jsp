<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="fileCSS/codeWeb.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous">
</script>
<style>
.toolbar {
            display: flex;
            align-items: center; /* Căn chỉnh các phần tử theo chiều dọc */
            gap: 10px; /* Khoảng cách giữa các phần tử */
        }

        .button {
            font-size: 18px;
            font-weight: bold;
        }

        .icon {
            font-size: 24px;
        }

        select {
            font-size: 18px;
            padding: 5px;
        }

        .green {
            color: red;
        }

        .red {
            color: red;
        }
    </style>
</head>
<body>
    <div class="toolbar">
        <div class="button">Certificate</div>
        <div id="icon" class="icon green">✔</div>
        <select id="statusSelect" onchange="updateIcon()">
            <option value="tick">✔</option>
            <option value="cross">✘</option>
        </select>
    </div>
	<div class="container">
		<form action="produce" method=GET>
			<div>
				<label for="cert-name">Certification Name</label> 
				<select id="cert-name" class="form-select"> <option selected>TOEIC</option> 
    </select>
			</div>
			<div>
				<label for="cert-authority">Certification Authority</label> <input
					class="form-control" type="text" id="cert-authority"
					name="cert-authority" placeholder="IIG">
			</div>
			<div>
				<label for="license-number">License Number</label> <input
					class="form-control" type="text" id="license-number"
					name="license-number">
			</div>
			<div class="row g-4">

				<div class="col-3">
					<label for="achieved-date">Achieved Date</label>
					<select id="certificationName" name="certificationName"  class="form-select"> 
    				<option value=""></option>
					</select>
				</div>
				<div class="col-3">
					<label for="expired-date">Expired Date</label> <select
						 id="expired-date" name="expired-date"  class="form-select">
						<option value=""></option>
					</select>
				</div>
				<div class="col-6 d-flex align-items-center">
					<input type="checkbox" id="no-expiry" name="no-expiry" class="me-3">
					<!-- Tăng khoảng cách với me-3 -->
					<label for="no-expiry" class="mb-0">This certificate does
						not expire</label>
				</div>

				<div class="row g-4 mt-3">

					<div class="col-6">
						<label for="score">Score</label> <input class="form-control"
							type="text" id="score" name="score">
					</div>
					<div class="col-6 d-flex align-items-center">
						<input type="checkbox" id="attendance" name="attendance"
							class="me-3"> <label for="attendance" class="mb-0">This
							is a certificate of attendance</label>
					</div>
				</div>
			</div>

			<div class="col-12">
				<label for="describe" class="form-label"> description </label>
				<textarea rows="10" cols="20" class="form-control" id="describe"
					name="describe"></textarea>
			</div>
			<div>
				<button type="submit" class="btn btn-lg"
					style="background-color: Blue; color: white;">Reset</button>
				<button type="submit" class="btn btn-lg"
					style="background-color: #add8e6; color: white;">Reset</button>
				<button type="submit" class="btn btn-lg"
					style="background-color: #add8e6; color: white;">Cancel</button>
			</div>
		</form>
	</div>
</body>
</html>