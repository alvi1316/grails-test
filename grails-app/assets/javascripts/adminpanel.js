$( document ).ready(function() {
    $('#search').keypress(function(event){
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if(keycode == '13'){

            $.ajax({ 
                type: 'GET', 
                url: '../checkuser/index', 
                data: { name: $("#search").val() }, 
                dataType: 'json',
                success: function (data) { 
                    if(data.status == "OK"){
                        $('#table').empty()
                        $('#table').append("<tbody>")
                        $('#table').append("<tr><th>Name</th><th>Age</th><th>Email</th><th>Phone</th></tr>")
                        $.each(data.results, function(index, element) {
                            $('#table').append(`<tr> <td>${element.firstName} ${element.lastName}</td> <td>${getAge(element.dob)}</td> <td>${element.email}</td> <td>${element.phone}</td> </tr>`);
                        });

                    }
                    
                }
            });

        }
    });
});

function getAge(dateString) {
    var today = new Date();
    var birthDate = new Date(dateString);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}