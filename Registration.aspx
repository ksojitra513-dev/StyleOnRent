<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StyleOnRent.Registration" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account - Style On Rent</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Georgia, 'Times New Roman', serif;
            background: #f7f5f3;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 25px 15px;
        }

        .register-box {
            width: 100%;
            max-width: 500px;
            background: #fff;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
        }

        .logo-section {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo-section img {
            width: 140px;
            height: auto;
            margin-bottom: 12px;
        }

        .logo-section h2 {
            color: #7b263a;
            font-size: 27px;
            margin-bottom: 8px;
        }

        .logo-section p {
            color: #777;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #333;
            font-size: 15px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .input-box {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #d8d8d8;
            border-radius: 6px;
            font-size: 15px;
            font-family: Arial, sans-serif;
            outline: none;
            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #7b263a;
            box-shadow: 0 0 5px rgba(123, 38, 58, 0.15);
        }

        /* Password field */
        .password-wrapper {
            position: relative;
        }

        .password-wrapper .input-box {
            padding-right: 45px;
        }

        .toggle-password {
            position: absolute;
            right: 13px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            cursor: pointer;
            color: #777;
            padding: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .toggle-password svg {
            width: 21px;
            height: 21px;
            stroke: currentColor;
            fill: none;
            stroke-width: 1.8;
            stroke-linecap: round;
            stroke-linejoin: round;
        }

        .terms {
            display: flex;
            align-items: flex-start;
            gap: 9px;
            font-size: 13px;
            color: #555;
            margin: 20px 0;
            line-height: 1.6;
        }

        .terms input {
            margin-top: 4px;
        }

        .terms a {
            color: #7b263a;
            text-decoration: underline;
        }

        .join-btn {
            width: 100%;
            padding: 14px;
            background: #7b263a;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-family: Georgia, serif;
            cursor: pointer;
            transition: 0.3s;
        }

        .join-btn:hover {
            background: #5e1b2b;
        }

        .login-link {
            text-align: center;
            margin-top: 22px;
            font-size: 14px;
            color: #777;
        }

        .login-link a {
            color: #7b263a;
            font-weight: bold;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .error-message {
            display: block;
            color: #c62828;
            font-size: 12px;
            margin-top: 6px;
        }

        .message {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        @media (max-width: 480px) {
            .register-box {
                padding: 25px 20px;
            }
        }
    </style>

    <script type="text/javascript">
        function togglePassword() {
            var passwordField =
                document.getElementById('<%= txtPassword.ClientID %>');

            var eyeIcon =
                document.getElementById('eyeIcon');

            if (passwordField.type === "password") {
                passwordField.type = "text";

                // Simple eye icon
                eyeIcon.innerHTML =
                    '<svg viewBox="0 0 24 24">' +
                    '<path d="M2 12s3.5-7 10-7 10 7 10 7-3.5 7-10 7S2 12 2 12z"></path>' +
                    '<circle cx="12" cy="12" r="3"></circle>' +
                    '</svg>';

                eyeIcon.setAttribute("aria-label", "Hide password");
            }
            else {
                passwordField.type = "password";

                // Simple crossed-eye icon
                eyeIcon.innerHTML =
                    '<svg viewBox="0 0 24 24">' +
                    '<path d="M3 3l18 18"></path>' +
                    '<path d="M10.6 10.6a2 2 0 0 0 2.8 2.8"></path>' +
                    '<path d="M9.9 5.2A10.8 10.8 0 0 1 12 5c6.5 0 10 7 10 7a17 17 0 0 1-4 4.8"></path>' +
                    '<path d="M6.2 6.2C3.5 8 2 12 2 12s3.5 7 10 7c1.1 0 2.1-.2 3-.5"></path>' +
                    '</svg>';

                eyeIcon.setAttribute("aria-label", "Show password");
            }
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">

        <div class="register-box">

            <!-- Logo and Heading -->
            <div class="logo-section">

                <img src="Images/styleonrent-logo.png"
                     alt="Style On Rent"
                     onerror="this.style.display='none';" />

                <h2>Create Account</h2>
                <p>Join Style On Rent for a personalized fashion journey.</p>

            </div>

            <!-- Full Name -->
            <div class="form-group">

                <asp:Label ID="lblName" runat="server"
                    Text="Full Name"
                    AssociatedControlID="txtName">
                </asp:Label>

                <asp:TextBox ID="txtName" runat="server"
                    CssClass="input-box"
                    placeholder="Jane Doe">
                </asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Full Name is required."
                    CssClass="error-message"
                    Display="Dynamic"
                    ValidationGroup="Register">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="revName" runat="server"
                    ControlToValidate="txtName"
                    ValidationExpression="^[a-zA-Z ]{2,50}$"
                    ErrorMessage="Enter a valid name (letters and spaces only)."
                    CssClass="error-message"
                    Display="Dynamic"
                    ValidationGroup="Register">
                </asp:RegularExpressionValidator>

            </div>

            <!-- Email Address -->
            <div class="form-group">

                <asp:Label ID="lblEmail" runat="server"
                    Text="Email Address"
                    AssociatedControlID="txtEmail">
                </asp:Label>

                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="input-box"
                    TextMode="SingleLine"
                    placeholder="you@example.com">
                </asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Email Address is required."
                    CssClass="error-message"
                    Display="Dynamic"
                    ValidationGroup="Register">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="Please enter a valid email address."
                    CssClass="error-message"
                    Display="Dynamic"
                    ValidationGroup="Register">
                </asp:RegularExpressionValidator>

            </div>

            <!-- Password -->
            <div class="form-group">

                <asp:Label ID="lblPassword" runat="server"
                    Text="Password"
                    AssociatedControlID="txtPassword">
                </asp:Label>

                <div class="password-wrapper">

                    <asp:TextBox ID="txtPassword" runat="server"
                        CssClass="input-box"
                        TextMode="Password"
                        placeholder="Create a password">
                    </asp:TextBox>

                    <button type="button"
                        id="eyeIcon"
                        class="toggle-password"
                        onclick="togglePassword()"
                        aria-label="Show password">

                        <svg viewBox="0 0 24 24">
                            <path d="M3 3l18 18"></path>
                            <path d="M10.6 10.6a2 2 0 0 0 2.8 2.8"></path>
                            <path d="M9.9 5.2A10.8 10.8 0 0 1 12 5c6.5 0 10 7 10 7a17 17 0 0 1-4 4.8"></path>
                            <path d="M6.2 6.2C3.5 8 2 12 2 12s3.5 7 10 7c1.1 0 2.1-.2 3-.5"></path>
                        </svg>

                    </button>

                </div>

                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password is required."
                    CssClass="error-message"
                    Display="Dynamic"
                    ValidationGroup="Register">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="revPassword" runat="server"
                    ControlToValidate="txtPassword"
                    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$"
                    ErrorMessage="Use at least 8 characters, including uppercase, lowercase and a number."
                    CssClass="error-message"
                    Display="Dynamic"
                    ValidationGroup="Register">
                </asp:RegularExpressionValidator>

            </div>

            <!-- Terms and Conditions -->
            <div class="terms">

                <asp:CheckBox ID="chkTerms" runat="server" />

                <label for="<%= chkTerms.ClientID %>">
                    I agree to the
                    <a href="Terms.aspx" target="_blank">Terms and Conditions</a>
                    and
                    <a href="Privacy.aspx" target="_blank">Privacy Policy</a>.
                </label>

            </div>

            <asp:CustomValidator ID="cvTerms" runat="server"
                ErrorMessage="Please accept the Terms and Conditions."
                CssClass="error-message"
                Display="Dynamic"
                ValidationGroup="Register"
                OnServerValidate="cvTerms_ServerValidate">
            </asp:CustomValidator>

            <!-- Join Now Button -->
            <asp:Button ID="btnJoin" runat="server"
                Text="Join Now"
                CssClass="join-btn"
                OnClick="btnJoin_Click"
                ValidationGroup="Register" />

            <asp:Label ID="lblMessage" runat="server"
                CssClass="message">
            </asp:Label>

            <!-- Login Link -->
            <div class="login-link">
                Already have an account?
                <a href="Login.aspx">Sign In</a>
            </div>

        </div>

    </form>
</body>
</html>