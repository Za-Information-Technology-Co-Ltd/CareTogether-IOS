//
//  CareService.swift
//  CareTogether
//
//  Created by HeinHtet on 30/03/2020.
//  Copyright © 2020 HEINHTET. All rights reserved.
//

import Foundation
import Moya

public enum CareService{
    case getNewsList 
    case getNewDetail(Int)
    case getStaticMyanmar
    case getStaticGlobal
    case getStaticAsian
    case storePhoneWithToken(String)
    case getCountForUser
}


extension CareService  : TargetType , AccessTokenAuthorizable{
    public var authorizationType: AuthorizationType? {
        return .bearer
    }
    
    
    public var baseURL: URL {
        let BASE_URL = "xxxx"
        return URL(string: BASE_URL)!
    }
    
    public var path : String {
        switch self {
        case .getNewsList: return "/news"
        case .getNewDetail(let id) : return "/news/\(id)"
        case .getStaticMyanmar : return "/statistic/myanmar-with-region"
        case .getStaticAsian : return "/statistic/asean-list"
        case .getStaticGlobal : return "/statistic/global"
        case .storePhoneWithToken(_) : return "/firebase"
        case .getCountForUser : return "count-for-me"
            
        }
    }
    
    public var method: Moya.Method {
        switch self{
        case .getNewsList : return .get
        case .getNewDetail(_) : return .get
        case .getStaticMyanmar : return .get
        case .getStaticAsian : return .get
        case .getStaticGlobal : return .get
        case .storePhoneWithToken(_ ) : return .post
        case .getCountForUser : return .get
        }
    }
    
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        
        switch self {
        case .getNewsList:
            let phoneNumber = Store.instance.getPhoneNumber() ??  ""
            let p = ["phone_number" : phoneNumber
                ] as [String : Any]
            return .requestParameters(parameters: p, encoding:URLEncoding.default )
            
        case .getNewDetail(_) : return .requestPlain
        case .getStaticMyanmar : return .requestPlain
        case .getStaticGlobal : return .requestPlain
        case .getStaticAsian : return .requestPlain
            
        case .storePhoneWithToken( let token) :
            let phoneNumber = Store.instance.getPhoneNumber() ??  ""
            let p = ["phone_number" : phoneNumber,
                     "token" : token
                ] as [String : Any]
            return .requestParameters(parameters: p, encoding:JSONEncoding.default )
            
        case .getCountForUser :
            let phoneNumber = Store.instance.getPhoneNumber() ??  ""
            let token = Store.instance.getFireBaseToken() ?? ""
            let p = ["phone_number" : phoneNumber, "token" : token
                ] as [String : Any]
            return .requestParameters(parameters: p, encoding:URLEncoding.default )
            
        }
        
    }
    
    public var headers: [String : String]? {
        var httpHeaders: [String: String] = [:]
        httpHeaders["Content-Type"] = "application/json"
        httpHeaders["X-API-TOKEN"] = "xxxxx"
        httpHeaders["Accept"] = "application/json"
        return httpHeaders
    }
}

func infoForKey(_ key: String) -> String? {
    return (Bundle.main.infoDictionary?[key] as? String)?
        .replacingOccurrences(of: "\\", with: "")
}
