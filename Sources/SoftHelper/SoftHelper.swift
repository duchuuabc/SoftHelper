import UIKit
public protocol SOTPHelperDelegate {
    var isSoftActivated: Bool { get }
    var currentUserActivatedSoft: String? { get }
    var isSoftLogined: Bool { get }
    var isMatchTokenSerial : Bool { get }
    var isPinSoftExpired: Bool { get }
    var currentComboType : String { get }
    var isSoftHasPIN: Bool { get }
    func loginSoft(withPIN: String) throws -> Bool
    func getOTP() -> String
    func getOTPHighValueTransaction(tranCode: String) -> String
    func getCurrentServerTime() -> String
    func doSyncTime() -> Int
}

public protocol SDKBankController : UIViewController {}

public protocol SoftFlowDelegate {
    func onChangePinSoft(tranCode: String, target: SDKBankController?) throws
    func pushCreatePinSoftDropOffTransaction(target: SDKBankController?)
    func pushRegisterSoft(target: SDKBankController?)
    func pushForgotPinSoft(target: SDKBankController?)
}
