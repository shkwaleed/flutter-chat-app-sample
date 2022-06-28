import 'package:fiberchat/API/repository/auth_repo.dart';
import 'package:get/get.dart';
import 'package:fiberchat/API/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fiberchat/API/app_constants.dart';
import 'package:fiberchat/API/controller/auth_controller.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos

  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
}
