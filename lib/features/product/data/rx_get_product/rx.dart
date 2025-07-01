// // // ignore_for_file: use_build_context_synchronously
// // import 'dart:developer';
// // import 'package:dio/dio.dart';
// // import 'package:rxdart/rxdart.dart';
// // import 'package:structur_project/features/product/data/rx_get_product/api.dart';
// // import 'package:structur_project/features/product/model/product_model.dart';
// // import 'package:structur_project/helpers/all_routes.dart';
// // import 'package:structur_project/helpers/navigation_service.dart';
// // import 'package:structur_project/helpers/toast.dart';
// // import '../../../../networks/rx_base.dart';

// // final class GetAllProductRX extends RxResponseInt<RecipieProductModel> {
// //   final api = GetProductApi.instance;

 
// //   GetAllProductRX({required super.empty, required super.dataFetcher});
// //   ValueStream get allProductsStream => dataFetcher.stream;
// //   Future<void> getAllProducts() async {
// //     try {
// //       RecipieProductModel data = await api.getAllProduct();
// //       handleSuccessWithReturn(data);
// //     } catch (error) {
// //       return handleErrorWithReturn(error);
// //     }
// //   }
 
//   import 'package:rxdart/rxdart.dart';

// GetAllProductRX({required super.empty, required super.dataFetcher});
//   ValueStream get allProductsStream => dataFetcher.stream;

//   Future<void> getAllProducts() async {
//     try {
//       RecipieProductModel data = await api.getAllProduct();
//       handleSuccessWithReturn(data);
//     } catch (error) {
//       return handleErrorWithReturn(error);
//     }
//   }
 

// //   @override
// //   handleErrorWithReturn(dynamic error) {
// //     if (error is DioException) {
// //       if (error.response!.statusCode == 400) {
// //         ToastUtil.showShortToast(error.response!.data["error"]);
// //       } else if (error.response!.statusCode == 401) {
// //         NavigationService.popAndReplace(Routes.newScreen);
// //       } else {
// //         ToastUtil.showShortToast(error.response!.data["error"]);
// //       }
// //     }
// //     log(error.toString());
// //     dataFetcher.sink.addError(error);
// //     // throw error;
// //     return false;
// //   }
// // }
