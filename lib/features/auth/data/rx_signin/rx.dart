// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:structur_project/constants/app_constants.dart';
import 'package:structur_project/features/auth/data/rx_signin/api.dart';
import 'package:structur_project/features/auth/model/signin_model.dart';
import 'package:structur_project/helpers/all_routes.dart';
import 'package:structur_project/helpers/di.dart';
import 'package:structur_project/helpers/navigation_service.dart';
import 'package:structur_project/helpers/toast.dart';
import 'package:structur_project/networks/dio/dio.dart';
import '../../../../networks/rx_base.dart';

final class GetSignInResponseRX extends RxResponseInt<SigninModel> {
  final api = SigninApi.instance;

  GetSignInResponseRX({required super.empty, required super.dataFetcher});
  ValueStream get signInData => dataFetcher.stream;
  Future<bool> signIn({
    required String email,
    required String password,
  }) async {
    try {
      SigninModel data = await api.signIn(email: email, password: password);
      handleSuccessWithReturn(data);
      return true;
    } catch (error) {
      return handleErrorWithReturn(error);
    }
  }

  @override
  handleSuccessWithReturn(SigninModel data) {
    var token = data.access!;
    log(token);
    appData.write(kKeyAccessToken, token);
    appData.write(kKeyIsLoggedIn, true);
    DioSingleton.instance.update(token);

    dataFetcher.sink.add(data);
    return data;
  }

  @override
  handleErrorWithReturn(dynamic error) {
    if (error is DioException) {
      if (error.response!.statusCode == 400) {
        ToastUtil.showShortToast(error.response!.data["error"]);
      } else if (error.response!.statusCode == 401) {
        NavigationService.popAndReplace(Routes.newScreen);
      } else {
        ToastUtil.showShortToast(error.response!.data["error"]);
      }
    }
    log(error.toString());
    dataFetcher.sink.addError(error);
    // throw error;
    return false;
  }
}
