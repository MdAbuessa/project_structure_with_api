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
//api নামের একটি ভেরিয়েবল তৈরি হয়েছে, যা GetWelcomeApi
//ক্লাসের singleton instance।এটি একবারই তৈরি হয়।

  GetWelcomeRX({required super.empty, required super.dataFetcher});
  // কনস্ট্রাক্টরে empty (খালি ডেটা অবস্থা) এবং dataFetcher (স্ট্রিম)
  // রিসিভ করে, যেগুলো RxResponseInt এর কন্সট্রাক্টরে পাঠানো হয়।
  ValueStream get allWelcomeStream => dataFetcher.stream;
//এটা Stream রিটার্ন করে, যেখানে Welcome ডেটা আপডেট হলে UI
// তে রিয়্যাক্টিভভাবে তা দেখা যাবে।
  Future<bool> getWelcome() async {
    try {
      List<Welcome> result = await api.getWelcome();
      handleSuccessWithReturn(result);
      return true;
    } catch (error) {
      return handleErrorWithReturn(error);
    }
  }

//getWelcome() একটি Future<bool> ফাংশন,
//যা API কল করে List<Welcome> ডেটা আনে।
//সফল হলে handleSuccessWithReturn এ পাঠায়
//ভুল হলে handleErrorWithReturn চালায়

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
