
class ResponseModel {
  final bool _isSuccess;
  final String _message;
  final int _code;

  ResponseModel(this._isSuccess, this._message, this._code);

  bool get isSuccess => _isSuccess;
  String get message => _message;
  int get code => _code;
}
