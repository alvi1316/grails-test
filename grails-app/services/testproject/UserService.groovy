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
        def user = User.findByEmail("$params.email")
        if(user == null){
            return true
        }else{
            return false
        }
    }

    def login(GrailsParameterMap params){
        def user = User.findByEmailAndPassword("$params.email", "$params.password")
        if(user == null){
            return false
        }else{
            return true
        }
    }

    def getUserInfo(String email){
        def user =  User.findByEmail(email)
        return user
    }

    def getAllUser(){
        def userList = User.getAll()
        return userList
    }

    def getUserByName(String firstName, String lastName){
        def userList = User.findAllByFirstNameLikeorLastNameLike("%$firstName%", "%$lastName%")
        return userList
    }
}
