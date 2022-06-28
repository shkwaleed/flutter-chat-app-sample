class SignUpBody {
  String contactNumber;
  String secretCode;
  String deviceID;
  String deviceMAC;
  String deviceType;
  String deviceName;

  SignUpBody({
    required this.contactNumber,
    required this.secretCode,
    required this.deviceID,
    required this.deviceMAC,
    required this.deviceType,
    required this.deviceName,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["contactNumber"] = contactNumber;
    data["secretCode"] = secretCode;
    data["device_id"] = deviceID;
    data["device_mac"] = deviceMAC;
    data["device_type"] = deviceType;
    data["device_name"] = deviceName;

    return data;
  }
}
