import 'dart:convert';

class SigninModel {
  String? refresh;
  String? access;

  SigninModel({
    this.refresh,
    this.access,
  });

  SigninModel copyWith({
    String? refresh,
    String? access,
  }) =>
      SigninModel(
        refresh: refresh ?? this.refresh,
        access: access ?? this.access,
      );

  factory SigninModel.fromRawJson(String str) =>
      SigninModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SigninModel.fromJson(Map<String, dynamic> json) => SigninModel(
        refresh: json["refresh"],
        access: json["access"],
      );

  Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
      };
}
