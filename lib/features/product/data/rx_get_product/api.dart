import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:structur_project/features/product/model/product_model.dart';
 import '../../../../../networks/dio/dio.dart';
import '../../../../networks/exception_handler/data_source.dart';
import '/networks/endpoints.dart';

final class GetProductApi {
  static final GetProductApi _singleton = GetProductApi._internal();
  GetProductApi._internal();
  static GetProductApi get instance => _singleton;

  Future<RecipieProductModel> getAllProduct() async {
    try {
      Response response = await getHttp(Endpoints.getAllProducts());
      
      if (response.statusCode == 200) {
        final data =
            RecipieProductModel.fromRawJson(json.encode(response.data));
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
