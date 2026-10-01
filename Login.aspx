<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StyleOnRent.Login" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Style On Rent</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            background: #f5f8fc;
            font-family: Georgia, 'Times New Roman', serif;
            color: #333;
        }

        .main-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .login-card {
            width: 100%;
            max-width: 430px;
            background: #fff;
            padding: 30px 32px;
            border-radius: 8px;
        }

        .logo {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo img {
            width: 140px;
            height: auto;
        }

        .heading {
            text-align: center;
            margin-bottom: 28px;
        }

        .heading h1 {
            color: #81243e;
            font-size: 28px;
            margin: 0 0 5px;
            font-weight: bold;
        }

        .heading p {
            color: #777;
            font-size: 15px;
            margin: 0;
            line-height: 1.5;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 7px;
            color: #222;
        }

        .input-box {
            width: 100%;
            height: 43px;
            padding: 10px 14px;
            border: 1px solid #d5d5d5;
            border-radius: 6px;
            font-family: Arial, sans-serif;
            font-size: 14px;
            outline: none;
            background: #fff;
            color: #222;
        }

        .input-box:focus {
            border-color: #81243e;
            box-shadow: 0 0 4px rgba(129, 36, 62, 0.15);
        }

        .validator {
            display: block;
            color: #c62828;
            font-size: 12px;
            margin-top: 5px;
        }

        .forgot-password {
            text-align: right;
            margin-top: -8px;
            margin-bottom: 22px;
        }

        .forgot-password a {
            color: #81243e;
            font-size: 14px;
            text-decoration: underline;
        }

        .login-button {
            width: 100%;
            height: 43px;
            background: #81243e;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-family: Georgia, 'Times New Roman', serif;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .login-button:hover {
            background: #681b31;
        }

        .message {
            display: block;
            text-align: center;
            color: #c62828;
            font-size: 13px;
            margin-top: 12px;
        }

        .register-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .register-link a {
            color: #81243e;
            font-weight: bold;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .login-card {
                padding: 25px 20px;
            }

            .heading h1 {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="main-container">

            <div class="login-card">

                <!-- Logo -->
                <div class="logo">
                    <asp:Image ID="imgLogo" runat="server"
                        ImageUrl="~/Images/styleonrent-logo.png"
                        AlternateText="Style On Rent Logo" />
                </div>

                <!-- Heading -->
                <div class="heading">
                    <h1>Welcome Back</h1>
                    <p>Sign in to continue your fashion journey.</p>
                </div>

                <!-- Email -->
                <div class="form-group">

                    <asp:Label ID="lblEmail" runat="server"
                        Text="Email Address">
                    </asp:Label>

                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="input-box"
                        TextMode="Email"
                        placeholder="Enter your email">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email Address is required."
                        CssClass="validator"
                        Display="Dynamic"
                        ValidationGroup="Login">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Please enter a valid email address."
                        CssClass="validator"
                        Display="Dynamic"
                        ValidationGroup="Login">
                    </asp:RegularExpressionValidator>

                </div>

                <!-- Password -->
                <div class="form-group">

                    <asp:Label ID="lblPassword" runat="server"
                        Text="Password">
                    </asp:Label>

                    <asp:TextBox ID="txtPassword" runat="server"
                        CssClass="input-box"
                        TextMode="Password"
                        placeholder="Enter your password">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password is required."
                        CssClass="validator"
                        Display="Dynamic"
                        ValidationGroup="Login">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$"
                        ErrorMessage="Use at least 8 characters, including uppercase, lowercase and a number."
                        CssClass="validator"
                        Display="Dynamic"
                        ValidationGroup="Login">
                    </asp:RegularExpressionValidator>

                </div>

                <!-- Forgot Password -->
                <div class="forgot-password">
                    <asp:HyperLink ID="lnkForgotPassword"
                        runat="server"
                        NavigateUrl="~/ForgotPassword.aspx"
                        Text="Forgot Password?">
                    </asp:HyperLink>
                </div>

                <!-- Login Button -->
                <asp:Button ID="btnLogin" runat="server"
                    Text="Sign In"
                    CssClass="login-button"
                    ValidationGroup="Login"
                    CausesValidation="true"
                    OnClick="btnLogin_Click" />

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="message">
                </asp:Label>

                <!-- Registration Link -->
                <div class="register-link">
                    Don't have an account?

                    <asp:HyperLink ID="lnkRegister"
                        runat="server"
                        NavigateUrl="~/Registration.aspx"
                        Text="Join Now">
                    </asp:HyperLink>
                </div>

            </div>

        </div>

    </form>
</body>
</html>