<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Motorbike Rental</title>
    <link rel="stylesheet" href="static/css/style.css">
</head>
<body>

    <jsp:include page="view/header.jsp"/>
    <jsp:include page="view/topnav.jsp"/>

    <div class="container-center">
        <div class="card login-card">
            <h2 class="text-center">Login</h2>

            <%
                String error = (String) request.getAttribute("error");
                if (error != null) {
            %>
                <div class="alert-error">
                    <%= error %>
                </div>
            <%
                }
            %>

            <form action="login" method="post">
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" required>
                </div>

               
                <div class="text-right">
                    <a href="forgotPassword.jsp" class="forgot-link">Quên mật khẩu?</a>
                </div>

                <div class="form-group text-center">
                    <button type="submit" class="btn btnPrimary">
                        Login
                    </button>
                </div>

            </form>

        </div>
    </div>

    <jsp:include page="view/footer.jsp"/>

</body>
</html>