// ignore_for_file: constant_identifier_names, unnecessary_string_interpolations

// const String url = String.fromEnvironment("BASE_URL");
//below url is used for dummy data for products
// const String url = "https://dummyjson.com/";

//this url is used for signin
const String url = "https://admin.letme.no/api/";

// ignore: unnecessary_brace_in_string_interps
const String imageUrl = "${url}";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

// final class PaymentGateway {
//   PaymentGateway._();
//   static String gateway(String orderId) =>  "https://demo.vivapayments.com/web/checkout?ref={$orderId}";
// }

final class Endpoints {
  Endpoints._();
  static String signUpClient() => "/api/clientsignup/";
  static String companySignup() => "/api/company/profile/";
  static String staffSignup() => "/api/staffsignup/";
  static String getAllProducts() => "/products";
  static String getAllUser() => "/api/v1/categories";
  static String signIn() => "/v1/app/signin/";
}
