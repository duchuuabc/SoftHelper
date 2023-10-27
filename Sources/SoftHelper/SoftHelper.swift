public protocol SOTPHelperDelegate {
    var isSoftLogined: Bool { get }
    var isPinSoftExpired: Bool { get }
    var currentComboType : String { get }
    func loginSoft(withPIN: String) throws -> Bool
    func getOTP() -> String
    func getOTPHighValueTransaction(tranCode: String) -> String
    func getCurrentServerTime() -> String
    func doSyncTime() -> Int
}

public protocol SoftFlowDelegate {
    func onChangePinSoft(tranCode: String, completionOnSuccess: @escaping (() -> Void)) throws
    func pushCreatePinSoftDropOffTransaction()
    func pushRegisterSoft()
}
