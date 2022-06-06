
import UIKit
import Alamofire

class Request: NSObject {
    
    func makeRequest(completion: @escaping (Movies?, Bool) -> Void) {
        
        AF.request("https://sky-frontend.herokuapp.com/movies", method: .get ).responseJSON { response in
            if response.response?.statusCode == 200 {
                do {
                    let movies = try JSONDecoder().decode(Movies.self, from: response.data ?? Data())
                    completion(movies, true)
                } catch {
                    completion(nil, false)
                }
            }else {
                completion(nil, false)
            }
        }
    }
}

