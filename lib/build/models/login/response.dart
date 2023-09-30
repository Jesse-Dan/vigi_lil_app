// To parse this JSON data, do
//
//     final loginPayload = loginPayloadFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginReponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    final bool? success;
    final String? accessToken;
    final String? refreshToken;
    final String? message;

    LoginResponse({
        this.success,
        this.accessToken,
        this.refreshToken,
        this.message,
    });

    LoginResponse copyWith({
        bool? success,
        String? accessToken,
        String? refreshToken,
        String? message,
    }) => 
        LoginResponse(
            success: success ?? this.success,
            accessToken: accessToken ?? this.accessToken,
            refreshToken: refreshToken ?? this.refreshToken,
            message: message ?? this.message,
        );

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        success: json["success"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "message": message,
    };
}
