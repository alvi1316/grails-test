<!DOCTYPE html>
<html>
    <head>
        <title>Login page</title>
        <asset:stylesheet src="application.css"/>
    </head>

    <body>

        <div class="container-fluid d-flex justify-content-center align-items-center" style="margin-top: 150px;">

            <form controller="login" action="login" method="post">

                <div class="form-group col text-center">
                    <h5>Login Panel</h5>
                </div>

                <div class="form-group col text-center">
                    <small class="text-danger">Wrong email or password</small>
                </div>

                <div class="form-group form-row align-items-center">

                    <div class="col-md-4">
                        <label for="email">Email:</label>
                    </div>
                    <div class="col-md-8">
                        <input id="email" type="email" name="email" required><br>
                    </div>

                </div>

                <div class="form-group form-row align-items-center">
                    <div class="col-md-4">
                        <label for="password">Passowrd:</label>
                    </div>
                    <div class="col-md-8">
                        <input id="password" type="password" name="password" required><br>
                    </div>
                </div>

                <div class="form-group form-row">
                    <div class="col-md-6" align="center">
                        <input id="submit" type="submit" value="Login">
                    </div>
                    <div class="col-md-6" align="center">
                        <input id="cancel" type="button" value="Cancel">
                    </div>
                </div>

                <div class="form-group form-row">
                    <div class="col-md-12" align="center">
                        <p>Are you new here?<a href="/signup/index">Register Now</a></p>
                    </div>
                </div>                

            </form>

        </div>

        <asset:javascript src="application.js"/>
        <asset:javascript src="login.js"/>

    </body>

</html>