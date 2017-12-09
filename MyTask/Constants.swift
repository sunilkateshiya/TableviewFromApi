





import UIKit

struct Constants {
    
    
    struct Keys
    {
       // static let GOOGLE_PLACE_KEY = "AIzaSyCSjUAmNJo5QyPBNNyfgcfr5d2BpOOcz54" //provided by client
        static let GOOGLE_PLACE_KEY = "AIzaSyBVzYxUg3nl_Ie2bzhLWuGkgK5940FNEE0"
    }
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
    struct DeviceType
    {
        static let IS_IPHONE_4_OR_LESS =  UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
        static let IS_IPHONE_5 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
        static let IS_IPAD = UIDevice.current.userInterfaceIdiom == .pad
    }
    
    
    struct  KEYS
    {
        static let LOGINKEY = "isLogin"
        static let ISFRISTTIME = "1.3.6"
        static let TOKEN = "Token"
        static let IS_SET_PROFILE = "isProfileSetup"
        static let USERINFO = "userInfo"
        static let ISCLIENT = "isClient"
        static let ISONTABLE = "isOnTable"
        static let BUSINESSNAME = "businessName"
        static let BUSINESSID = "businessId"
        static let TABLEUSERID = "tableUserId"
        static let ISINITSIGNALR = "isCallSignalR"
        static let ISDASHBORAD = "isDashBorad"
    }
   
    struct  AppConstants
    {
        static let ktimer = 6
        static let ktime = 7
    }
    
    struct Notifications {
        static let BUDDYLISTREFRESHED = "buddyListRefreshed"
        static let MESSAGERECEIVED = "messageReceived"
        static let CHATHISTORYRETRIVED = "chatHistory"
    }
    struct Money {
        static let Pound = "£"
    }
    
    
    enum ErrorTypes: Error
    {
        case Empty
        case Short
    }
}
