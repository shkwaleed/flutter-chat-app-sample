import 'package:fiberchat/API/api_client.dart';
import 'package:fiberchat/API/model/sign_up_body_model.dart';
import 'package:fiberchat/API/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

  Future<Response> register(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.AUTH_REGISTRATION, signUpBody.toJson());
  }

}
