// To parse this JSON data, do
//
//     final registrationPayload = registrationPayloadFromJson(jsonString);

import 'dart:convert';

RegistrationPayload registrationPayloadFromJson(String str) => RegistrationPayload.fromJson(json.decode(str));

String registrationPayloadToJson(RegistrationPayload data) => json.encode(data.toJson());

class RegistrationPayload {
    final String? firstName;
    final String? lastName;
    final String? email;
    final String? phoneNumber;
    final String? password;
    final String? confirmedPassword;

    RegistrationPayload({
        this.firstName,
        this.lastName,
        this.email,
        this.phoneNumber,
        this.password,
        this.confirmedPassword,
    });

    RegistrationPayload copyWith({
        String? firstName,
        String? lastName,
        String? email,
        String? phoneNumber,
        String? password,
        String? confirmedPassword,
    }) => 
        RegistrationPayload(
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            email: email ?? this.email,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            password: password ?? this.password,
            confirmedPassword: confirmedPassword ?? this.confirmedPassword,
        );

    factory RegistrationPayload.fromJson(Map<String, dynamic> json) => RegistrationPayload(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
        confirmedPassword: json["confirmedPassword"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
        "confirmedPassword": confirmedPassword,
    };
}
