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
                    <a class="dropdown-item text-dark" href="#">Change Password</a>
                    <a class="dropdown-item text-dark" href="/userprofile/logout">Logout</a>
                </div>
            </div>
        </nav>

        <div class="container-fluid mx-0 px-0">

            <div class="row mx-0 px-0" style="height:100vh; max-width:100vw;">

                <div class="col-3 bg-secondary">
                    <div class="text-center">
                        <h1 class="text-white mb-3">User profile</h1>
                        <a href="#" class="text-white">Change password</a>
                    </div>
                </div>

                <div class="col-9">
                     

                    <div class="text-center">

                        <div class="row" style="margin-top:150px;">
                            <div class="col-md-12">
                                <h1>User Profile</h1>
                            </div>                            
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2 text-left">
                                <h1>First name:</h1>
                            </div>
                            <div class="col-md-6 text-left">
                                <h1>${userInfo.firstName}</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2 text-left">
                                <h1>Last name:</h1>
                            </div>
                            <div class="col-md-6 text-left">
                                <h1>${userInfo.lastName}</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2 text-left">
                                <h1>Address:</h1>
                            </div>
                            <div class="col-md-6 text-left">
                                <h1>${userInfo.address}</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2 text-left">
                                <h1>Phone:</h1>
                            </div>
                            <div class="col-md-6 text-left">
                                <h1>${userInfo.phone}</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2 text-left">
                                <h1>Email:</h1>
                            </div>
                            <div class="col-md-6 text-left">
                                <h1>${userInfo.email}</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-2 text-left">
                                <h1>BirthDate:</h1>
                            </div>
                            <div class="col-md-6 text-left">
                                <h1><g:formatDate format="dd-MM-yyyy" date="${userInfo.dob}"/></h1>
                            </div>
                        </div>   
                        
                    </div>
                    
                    
                    
                </div>

            <div>

        </div>

    <asset:javascript src="application.js"/>

    </body>

</html>