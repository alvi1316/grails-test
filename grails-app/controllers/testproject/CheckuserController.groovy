package testproject

import grails.converters.JSON

class CheckuserController {

    UserService userService

    def index() {
        String name = params.name
        if(name==null || name==""){
            def result = [
                'results': "EMPTY",
                'status': "EMPTY"
            ]
            render result as JSON
            
        }else{
            String[] fullName = name.split(" ");
            if(fullName.length >= 2){
                def list = userService.getUserByName(fullName[0], fullName[1])
                def result = [
                    'results': list,
                    'status': list ? "OK" : "EMPTY"
                ]
                render result as JSON

            }else{
                render "wow"
                def result = [
                    'results': "EMPTY",
                    'status': "EMPTY"
                ]
                render result as JSON
            }
            
        }

    }
    
}
