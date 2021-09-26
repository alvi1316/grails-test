<!DOCTYPE html>
<html>
    <head>
        <title>Signup page</title>
        <asset:stylesheet src="application.css"/>
    </head>

    <body>

        <div class="container-fluid d-flex justify-content-center align-items-center" style="margin-top: 150px;">

            <form action="registration">

                <div class="form-group col text-center">
                    <h5>Registration Panel</h5>
                </div>

                <div class="form-group form-row align-items-center">
                    <div class="col-md-4">
                        <label for="firstname">First name:</label>
                    </div>
                    <div class="col-md-8">
                        <input type="text" id="firstname" name="firstName" required><br>
                    </div>
                </div>               

                <div class="form-group form-row align-items-center">
                    <div class="col-md-4">
                        <label for="lastname">Last name:</label>
                    </div>
                    <div class="col-md-8">
                        <input type="text" id="lastname" name="lastName" required><br>
                    </div>
                </div>

                <div class="form-group form-row align-items-center">
                    <div class="col-md-4">
                        <label for="address"> Address:</label>
                    </div>
                    <div class="col-md-8">
                        <input type="text" id="address" name="address" required><br>
                    </div>
                </div>

                <div class="form-group form-row align-items-center">
                    <div class="col-md-4">
                        <label for="phone">Phone:</label>
                    </div>
                    <div class="col-md-8">
                        <input type="number" id="phone" name="phone" required><br>
                    </div>
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
                        <label for="dob">Birthday:</label>
                    </div>
                    <div class="col-md-8">
                        <input type="date" id="dob" name="dob" required><br>
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

                <div class="form-group col text-center">
                    <input type="submit" value="Signup">
                </div>

            </form>

        </div>

    </body>

</html>