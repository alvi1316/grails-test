package testproject

import grails.web.servlet.mvc.GrailsParameterMap
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException

class UserService {

    def signup(GrailsParameterMap params) {
        String password = params.password
        password = md5Hash(password)
        params.password = password
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
        String password = params.password
        password = md5Hash(password)
        params.password = password
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

    def md5Hash(String str){
        def md5 = ''

        try {
            MessageDigest digest = MessageDigest.getInstance('MD5')
            digest.update(str.bytes, 0, str.length())
            md5 = new BigInteger(1, digest.digest()).toString(16)
        } catch (NoSuchAlgorithmException e) {
            log.error('Error creating MD5 hash', e)
        }

        return md5
    }
}
