<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Redeem Points</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom CSS -->
  <style>
    /* Custom styles */
    body {
      font-family: Arial, sans-serif;
      background-image: url('background-image.jpg'); /* Add your background image here */
      background-size: cover;
      background-attachment: fixed;
    }

    .navbar {
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .navbar-brand img {
      height: 40px;
      margin-right: 10px;
    }

    .navbar-toggler {
      border: none;
    }

    .navbar-nav .nav-link {
      color: #555;
      transition: color 0.3s ease;
    }

    .navbar-nav .nav-link:hover {
      color: #007bff;
    }

    .dropdown-menu {
      border: none;
      border-radius: 0;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .dropdown-menu a {
      color: #555 !important;
    }

    .dropdown-menu a:hover {
      background-color: #f8f9fa !important;
    }

    .card {
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    .card-img-top {
      height: 200px; /* Adjust the height as needed */
      object-fit: cover;
    }

    .btn-join {
      background-color: #28a745;
      border-color: #28a745;
    }

    .btn-join:hover {
      background-color: #218838;
      border-color: #1e7e34;
    }

    .logout-btn {
      background-color: #dc3545;
      color: #fff;
      border: none;
    }

    .logout-btn:hover {
      background-color: #c82333;
    }
  </style>
</head>
<body>
  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="#"><img src="your-logo.jpg" alt="Logo">Thrive&roots</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Categories
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="events">Event Management</a>
              <a class="dropdown-item" href="eventscards">User Management</a>
              <a class="dropdown-item" href="#">Feedback Review</a>
              <a class="dropdown-item" href="#">Credit Points Management</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
        <button class="btn logout-btn my-2 my-sm-0" type="button">Logout</button>
      </div>
    </div>
  </nav>

  <!-- Main Content -->
  <div class="container mt-4">
    <h1 class="text-center">Redeem Your Points</h1>
    <p class="lead text-center">Use your points to redeem exciting products!</p>
    <div class="row">
      <!-- Dynamic Product Cards -->
      <c:forEach var="product" items="${allProducts}">
        <div class="col-md-4 mb-4">
          <div class="card">
            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product Image">
            <div class="card-body">
              <h5 class="card-title">${product.name}</h5>
              <p class="card-text"><strong>Product ID:</strong> ${product.id}</p>
              <p class="card-text"><strong>Points Required:</strong> ${product.points}</p>
              <p class="card-text">${product.description}</p>
              <form action="addtocart" method="post" class="d-inline"> <!-- Form for Add to Cart -->
                <input type="hidden" name="productId" value="${product.id}">
                <button type="submit" class="btn btn-primary">Add to Cart</button>
              </form>
              <form action="buynow" method="post" class="d-inline"> <!-- Form for Buy Now -->
                <input type="hidden" name="productId" value="${product.id}">
                <button type="submit" class="btn btn-success">Buy Now</button>
              </form>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>

  <!-- Bootstrap JavaScript and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>