// To parse this JSON data, do
//
//     final registrationresponse = registrationresponseFromJson(jsonString);

import 'dart:convert';

RegistrationResponse registrationloadresponseFromJson(String str) => RegistrationResponse.fromJson(json.decode(str));

String registrationresponseToJson(RegistrationResponse data) => json.encode(data.toJson());

class RegistrationResponse {
    final bool? success;
    final UserData? data;
    final String? message;

    RegistrationResponse({
        this.success,
        this.data,
        this.message,
    });

    RegistrationResponse copyWith({
        bool? success,
        UserData? data,
        String? message,
    }) => 
        RegistrationResponse(
            success: success ?? this.success,
            data: data ?? this.data,
            message: message ?? this.message,
        );

    factory RegistrationResponse.fromJson(Map<String, dynamic> json) => RegistrationResponse(
        success: json["success"],
        data: json["data"] == null ? null : UserData.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
        "message": message,
    };
}

class UserData {
    final String? firstName;
    final String? lastName;
    final String? email;
    final String? phoneNumber;
    final String? password;
    final String? confirmedPassword;
    final String? id;
    final DateTime? createAccount;
    final int? v;

    UserData({
        this.firstName,
        this.lastName,
        this.email,
        this.phoneNumber,
        this.password,
        this.confirmedPassword,
        this.id,
        this.createAccount,
        this.v,
    });

    UserData copyWith({
        String? firstName,
        String? lastName,
        String? email,
        String? phoneNumber,
        String? password,
        String? confirmedPassword,
        String? id,
        DateTime? createAccount,
        int? v,
    }) => 
        UserData(
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            email: email ?? this.email,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            password: password ?? this.password,
            confirmedPassword: confirmedPassword ?? this.confirmedPassword,
            id: id ?? this.id,
            createAccount: createAccount ?? this.createAccount,
            v: v ?? this.v,
        );

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
        confirmedPassword: json["confirmedPassword"],
        id: json["_id"],
        createAccount: json["createAccount"] == null ? null : DateTime.parse(json["createAccount"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
        "confirmedPassword": confirmedPassword,
        "_id": id,
        "createAccount": createAccount?.toIso8601String(),
        "__v": v,
    };
}
