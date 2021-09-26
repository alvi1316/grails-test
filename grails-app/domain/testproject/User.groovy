package testproject

class User {

    String firstName
    String lastName
    String address
    Integer phone
    String email
    Date dob
    String password

    static constraints = {
        firstName black:false
        lastName black:false
        address black:false
        phone black:false
        email email:true, blank: false, unique: true
        dob black:false
        password black:false
    }

    @Override
    String toString() {
        return firstName
    }
}
