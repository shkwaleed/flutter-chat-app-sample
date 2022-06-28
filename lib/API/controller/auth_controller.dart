import 'package:fiberchat/API/repository/auth_repo.dart';
import 'package:fiberchat/API/model/response_model.dart';
import 'package:fiberchat/API/model/sign_up_body_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({
    required this.authRepo,
  });

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<ResponseModel> register(SignUpBody signUpBody) async {
    _isLoading = true;
    update();
    Response response = await authRepo.register(signUpBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, response.body["status"], response.body["code"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!, response.statusCode!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }
}
