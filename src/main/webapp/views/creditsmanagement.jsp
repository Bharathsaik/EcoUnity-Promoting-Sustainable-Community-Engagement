<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Credit Management</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }

    h1 {
      text-align: center;
    }

    .credit-points {
      background-color: #f5f5f5;
      padding: 20px;
      margin-bottom: 20px;
    }

    .credit-points h2 {
      margin-top: 0;
    }

    .points-history {
      margin-top: 20px;
    }

    .points-history table {
      width: 100%;
      border-collapse: collapse;
    }

    .points-history th, .points-history td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    .earn-redeem {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .earn-redeem form {
      display: flex;
      align-items: center;
    }

    .earn-redeem input[type="submit"] {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      cursor: pointer;
    }

    .earn-redeem input[type="number"] {
      width: 80px;
      padding: 5px;
      margin-right: 10px;
    }
  </style>
</head>
<body>

<div class="container">
  <h1>Credit Management</h1>

  <div class="credit-points">
    <h2>Your Credit Points: 200</h2>
  </div>

  <div class="points-history">
    <h2>Credit Points History</h2>
    <table>
      <tr>
        <th>Date</th>
        <th>Activity</th>
        <th>Points</th>
      </tr>
      <tr>
        <td>2024-06-01</td>
        <td>Participated in Beach Cleanup</td>
        <td>+50</td>
      </tr>
      <tr>
        <td>2024-05-20</td>
        <td>Provided Feedback for Recycling Workshop</td>
        <td>+20</td>
      </tr>
    </table>
  </div>

  <div class="earn-redeem">
    <div>
      <form action="#">
        <input type="submit" value="Earn Points">
      </form>
    </div>
    <div>
      <form action="shop">
        <input type="submit" value="Redeem Points">
      </form>
    </div>
  </div>
</div>

</body>
</html>