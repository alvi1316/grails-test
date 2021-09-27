<!doctype html>
<html lang="en">
    <head>
        <title>Admin Panel</title>
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

                    <div class="row bg-info">
                        <div class="col-3">
                            <h1>User List</h1>
                        </div>
                        <div class="col-9 text-right">
                            <input type="text" placeholder="search" id="search">
                        </div>
                    </div>

                    <table id="table">
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Email</th>
                            <th>Phone</th>
                        </tr>


                        <g:each in="${userList}" var="user" status="i">
                        <tr>
                            <td>${user.firstName} ${user.lastName}</td>
                            <td>${new Date().getYear() - user.dob.getYear()}</td>
                            <td>${user.email}</td>
                            <td>${user.phone}</td>
                        </tr>
                        </g:each>

                    </table>
                </div>

            <div>

        </div>

    <asset:javascript src="application.js"/>
    <asset:javascript src="adminpanel.js"/>

    </body>

</html>