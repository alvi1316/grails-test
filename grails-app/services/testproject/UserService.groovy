package testproject

import grails.web.servlet.mvc.GrailsParameterMap

class UserService {

    def signup(GrailsParameterMap params) {
        User user = new User(params)
        boolean result = false
        if(user.validate()){
            user.save()
            if (!user.hasErrors()){
                result = true
            }
        }
        return result
    }

    def emailIsAvailable(GrailsParameterMap params){
        def user = User.findByEmail("$params.email");
        if(user == null){
            return true;
        }else{
            return false;
        }
    }
}
