import 'package:dio/dio.dart';
import 'package:structur_project/features/welcome/model/welcome_model.dart';
import '../../../../../networks/dio/dio.dart';
import '../../../../networks/exception_handler/data_source.dart';
import '/networks/endpoints.dart';

final class GetWelcomeApi {
  static final GetWelcomeApi _singleton = GetWelcomeApi._internal();
  //Constructor CALL
  //এই কোডটি GetWelcomeApi ক্লাসের একটি মাত্র instance (object) তৈরি করে এবং সেই একই instance বারবার ব্যবহার করে।
  GetWelcomeApi._internal(); //private constructor define
  static GetWelcomeApi get instance => _singleton;
  //এটি হলো getter method, যার মাধ্যমে সহজে GetWelcomeApi.instance দিয়ে ওই object (_singleton) access করা যাই ।

  Future<List<Welcome>> getWelcome() async {
    try {
      Response response = await getHttp(Endpoints.getWelcome());

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        final List<Welcome> welcomedata =
            data.map((e) => Welcome.fromJson(e)).toList();

        //final List<dynamic> data = response.data;
        //API response থেকে মূল ডেটা (body) নেয়।
        //response.data সাধারণত JSON format এ থাকে।
        //final List<Welcome> welcomedata = data.map((e) => Welcome.fromJson(e)).toList();
        //প্রতিটা JSON object (e) কে Welcome.fromJson(e) দিয়ে Welcome model object এ রূপান্তর করে।
        //data.map(...): পুরো লিস্টে লুপ চালায়।
        //Welcome.fromJson(e): প্রতিটা JSON থেকে Dart model object বানায়।
        //.toList(): সবগুলো result নিয়ে একটা List<Welcome> বানায়।

        return welcomedata;
      } else {
        throw DataSource.DEFAULT.getFailure();
      }
    } catch (error) {
      // Handle generic errors
      rethrow;
    }
  }
}
