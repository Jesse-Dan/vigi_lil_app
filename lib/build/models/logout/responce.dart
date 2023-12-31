// To parse this JSON data, do
//
//     final logoutResponse = logoutResponseFromJson(jsonString);

import 'dart:convert';

LogoutResponse logoutResponseFromJson(String str) => LogoutResponse.fromJson(json.decode(str));

String logoutResponseToJson(LogoutResponse data) => json.encode(data.toJson());

class LogoutResponse {
    final String? message;

    LogoutResponse({
        this.message,
    });

    LogoutResponse copyWith({
        String? message,
    }) => 
        LogoutResponse(
            message: message ?? this.message,
        );

    factory LogoutResponse.fromJson(Map<String, dynamic> json) => LogoutResponse(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}
