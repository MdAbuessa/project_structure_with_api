import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:structur_project/features/auth/model/signin_model.dart';
import 'package:structur_project/helpers/toast.dart';
import '../../../../../networks/dio/dio.dart';
import '../../../../networks/exception_handler/data_source.dart';
import '/networks/endpoints.dart';

final class SigninApi {
  static final SigninApi _singleton = SigninApi._internal();
  SigninApi._internal();
  static SigninApi get instance => _singleton;

  Future<SigninModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      Map data = {"email": email, "password": password};
      Response response = await postHttp(Endpoints.signIn(), data);

      if (response.statusCode == 200) {
        final data = SigninModel.fromRawJson(json.encode(response.data));
        ToastUtil.showShortToast('User logined successfully');
        return data;
      } else {
        throw DataSource.DEFAULT.getFailure();
      }
    } catch (error) {
      // Handle generic errors
      rethrow;
    }
  }
}
