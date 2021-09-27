<!doctype html>
<html lang="en">
    <head>
        <title>User Profile</title>
        <asset:stylesheet src="application.css"/>
    </head>

    <body>

        <nav class="navbar navbar-light bg-dark">
            <span class="navbar-brand mb-0 h1 text-white">Navigation</span>
            <div class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Options
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item text-dark" href="/adminpanel/logout">Logout</a>
                </div>
            </div>
        </nav>

        <div class="container-fluid mx-0 px-0">

            <div class="row mx-0 px-0" style="height:100vh; max-width:100vw;">

                <div class="col-3 bg-secondary">
                    <div class="text-center">
                        <h1 class="text-white mb-3">User List</h1>
                    </div>
                </div>

                <div class="col-9">

                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Email</th>
                            <th>Phone</th>
                        </tr>


                    <g:each in="${userList}" var="user" status="i">
                        <tr>
                            <th>${user.firstName} ${user.lastName}</th>
                            <th>${new Date().getYear() - user.dob.getYear()}</th>
                            <th>${user.email}</th>
                            <th>${user.phone}</th>
                        </tr>
                    </g:each>

                    </table>
                </div>

            <div>

        </div>

    <asset:javascript src="application.js"/>

    </body>

</html>