<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event Details</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles */
        body {
            font-family: Arial, sans-serif;
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

        .container {
            margin-top: 50px;
        }

        .card {
            max-width: 600px;
            margin: 0 auto;
        }

        .btn-join {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-join:hover {
            background-color: #218838;
            border-color: #1e7e34;
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
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>${eventDetails.name}</h2>
            </div>
            <div class="card-body">
                <p><strong>ID:</strong> ${eventDetails.id}</p>
                <p><strong>Event Type:</strong> ${eventDetails.eventtype}</p>
                <p><strong>Location:</strong> ${eventDetails.location}</p>
                <p><strong>Date:</strong> ${eventDetails.date}</p>
                <p><strong>Time:</strong> ${eventDetails.time}</p>
                <form action="/register" method="post">
                    <input type="hidden" name="eventId" value="${eventDetails.id}">
                    <button type="submit" class="btn btn-join">Join</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JavaScript and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
