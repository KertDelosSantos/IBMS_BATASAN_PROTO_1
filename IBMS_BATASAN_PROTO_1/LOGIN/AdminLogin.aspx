<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="IBMS_BATASAN_PROTO_1.LOGIN.AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />

    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('<%= ResolveUrl("~/LOGIN/Img/QCBackground.jpg") %>') no-repeat center center;
            background-size: 100% 100%; /* Ensures the entire image is shown */
            background-color: #f0f0f0;
        }

        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed; /* Fixed position to avoid moving on zoom */
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .login-box {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            width: 300px;
        }

        .logo-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px; /* Space between the logos */
            margin-bottom: 10px;
        }

        .logo-container img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 2px solid #ffc107;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        .login-box h2 {
            font-size: 18px;
            color: #333;
            margin-bottom: 0; /* Remove space under h2 */
        }

        .login-box h3 {
            font-size: 14px; /* Smaller font for h3 */
            color: #555;
            margin-top: 5px; /* Reduce space between h2 and h3 */
        }

        .input-container {
            position: relative;
            margin-bottom: 15px;
        }

        .input-container input {
            width: 100%;
            padding: 8px 30px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        .input-container input:focus {
            border-color: #ffc107;
            outline: none;
        }

        .input-container i {
            position: absolute;
            left: 8px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 16px;
            color: #888;
        }

        .login-btn {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            background-color: #ffc107;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-btn:hover {
            background-color: #e0a800;
        }

        .social-login {
            margin-top: 10px;
        }

        .social-login a {
            display: block;
            text-align: center;
            margin-bottom: 8px;
            text-decoration: none;
            color: white;
            padding: 8px;
            border-radius: 5px;
        }

        .facebook-btn {
            background-color: #3b5998;
        }

        .google-btn {
            background-color: #db4a39;
        }

        .forgot-password, .register {
            margin-top: 8px;
        }

        .forgot-password a, .register a {
            color: #007bff;
            text-decoration: none;
        }

        .forgot-password a:hover, .register a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .login-box {
                width: 90%;
                padding: 15px;
            }

            .logo-container img {
                width: 60px;
                height: 60px;
            }

            .input-container input {
                font-size: 12px;
            }

            .login-btn {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="login-box">
                <div class="logo-container">
                    <img src='<%= ResolveUrl("~/LOGIN/Img/BatasanLogo.png") %>' alt="Logo 1" />
                    <img src='<%= ResolveUrl("~/LOGIN/Img/QCGovLogo.png") %>' alt="Logo 2" />
                </div>
                <h2>Interconnected Barangay Management System</h2>
                <h3>Quezon City District II</h3>
                <div class="input-container">
                    <i class="fas fa-user"></i>
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div class="input-container">
                    <i class="fas fa-lock"></i>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" OnClick="btnLogin_Click" />
                <div class="social-login">
                    <a href="#" class="facebook-btn"><i class="fab fa-facebook"></i> Continue with Facebook</a>
                    <a href="#" class="google-btn"><i class="fab fa-google"></i> Sign in with Google</a>
                </div>
                <div class="forgot-password">
                    <a href="#">Forgot your password?</a>
                </div>
                <div class="register">
                    Don't have an account? <a href="#">Register</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>


