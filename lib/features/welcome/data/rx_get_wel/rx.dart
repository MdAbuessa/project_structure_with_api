// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:structur_project/features/welcome/data/rx_get_wel/api.dart';
import 'package:structur_project/features/welcome/model/welcome_model.dart';
import 'package:structur_project/helpers/all_routes.dart';
import 'package:structur_project/helpers/navigation_service.dart';
import 'package:structur_project/helpers/toast.dart';
import '../../../../networks/rx_base.dart';

final class GetWelcomeRX extends RxResponseInt<List<Welcome>> {
  final api = GetWelcomeApi.instance;

  GetWelcomeRX({required super.empty, required super.dataFetcher});
  ValueStream get allWelcomeStream => dataFetcher.stream;
  Future<bool> getWelcome() async {
    try {
      List<Welcome> result = await api.getWelcome();
      handleSuccessWithReturn(result);
      return true;
    } catch (error) {
      return handleErrorWithReturn(error);
    }
  }

  @override
  handleErrorWithReturn(dynamic error) {
    if (error is DioException) {
      if (error.response!.statusCode == 400 ||
          error.response!.statusCode == 404) {
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
