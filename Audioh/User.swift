
import Foundation

class User {

    var spotifyUser = SPTUser()
    var spotifySession = SPTSession()

    func handle(_ session: SPTSession) {
        if session.isValid() {
            spotifySession = session
        }
        SPTRequest.userInformationForUser(in:spotifySession) { (error, object) in
            if error == nil {
                self.spotifyUser = object as! SPTUser
            } else {
                print("Error: \(error)")
            }
        }
    }
}
