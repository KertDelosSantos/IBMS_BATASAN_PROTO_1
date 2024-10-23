<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="IBMS_BATASAN_PROTO_1.DASHBOARD.AdminDashboard" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Barangay Management Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            padding: 20px;
            position: fixed;
            width: 250px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 15px;
            margin-bottom: 10px;
            font-size: 18px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .content {
            margin-left: 270px;
            padding: 20px;
        }
        .card {
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .stats-card {
            text-align: center;
            background-color: #fff;
            padding: 20px;
        }
        .stats-card h3 {
            margin-bottom: 10px;
        }
        .chart-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <h3 class="text-light">Interconnected Barangay Management</h3>
            <a href="#">Dashboard</a>
            <a href="#">Residents</a>
            <a href="#">Services</a>
            <a href="#">Reports</a>
            <a href="#">Settings</a>
        </div>

        <div class="content">
            <h2>Dashboard</h2>
            
            <div class="row">
                <!-- Cards for Statistics -->
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card stats-card">
                        <h3><asp:Label ID="reportsLabel" runat="server" Text=""></asp:Label></h3>
                        <p>Reports</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card stats-card">
                        <h3><asp:Label ID="revenueLabel" runat="server" Text=""></asp:Label></h3>
                        <p>Population Growth</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card stats-card">
                        <h3><asp:Label ID="activeUsersLabel" runat="server" Text=""></asp:Label></h3>
                        <p>Active Users</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card stats-card">
                        <h3><asp:Label ID="signupsLabel" runat="server" Text=""></asp:Label></h3>
                        <p>New Signups</p>
                    </div>
                </div>
            </div>

            <div class="row chart-container">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <canvas id="ResidentsChart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <canvas id="usersChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        var ctx1 = document.getElementById('residentsChart').getContext('2d');
        var revenueChart = new Chart(ctx1, {
            type: 'bar',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May', 'June'],
                datasets: [{
                    label: 'Residents',
                    data: [12000, 15000, 18000, 20000, 24000, 30000],
                    backgroundColor: 'rgba(54, 162, 235, 0.6)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });

        var ctx2 = document.getElementById('usersChart').getContext('2d');
        var usersChart = new Chart(ctx2, {
            type: 'line',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May', 'June'],
                datasets: [{
                    label: 'Active Users',
                    data: [500, 1000, 1500, 2000, 2500, 3000],
                    backgroundColor: 'rgba(75, 192, 192, 0.6)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>
</body>
</html>
