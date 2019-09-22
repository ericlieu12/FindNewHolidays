//
//  requestAPI.swift
//  FindNewHolidays
//
//  Created by user on 9/21/19.
//  Copyright © 2019 eric. All rights reserved.
//

import Foundation
enum Ferror:Error{
    case eat
    case beat
}
struct request
{
    let url:URL
    
    init(countryCode:String, day: String, month: String, type: String)
    {let resourcestring = "https://calendarific.com/api/v2/holidays?&api_key=707d41717f8281bab1a1acff00b692f3cb8c25f7&country=\(countryCode)&year=2019\(month)\(day)\(type)"
        guard let url = URL(string: resourcestring) else {fatalError()}
        self.url = url
    }
    func getHolidays(completion: @escaping(Result<[detail], Ferror>)-> Void)
        
    {let dataTask = URLSession.shared.dataTask(with: url) {data, _, _ in
        guard let jsonData = data else
        {completion(.failure(.eat))
        return
        }
        do {let decoder = JSONDecoder()
            let holidaysResponse = try decoder.decode(response.self, from: jsonData)
            let holidayDetails = holidaysResponse.response.holidays
            completion(.success(holidayDetails))
        } catch{completion(.failure(.beat))
        }}
        dataTask.resume()
        
    }

}
