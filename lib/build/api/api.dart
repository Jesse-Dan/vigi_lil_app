import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:vigi_lil_app/build/models/login/payload.dart';
import 'package:vigi_lil_app/build/models/login/response.dart';
import 'package:vigi_lil_app/build/models/logout/responce.dart';
import 'package:vigi_lil_app/build/models/registration/payload.dart';
import '../models/registration/response.dart';

class Api {
  Dio _dio = Dio();
  final String baseUrl = ('https://npf-api.onrender.com/api/');
  Future<(bool, LoginResponse?)> login(LoginPayload loginPayload) async {
    try {
      Response<dynamic> data =
          await _dio.post('${baseUrl}login', data: loginPayload.toJson());
      return (true, loginResponseFromJson(data.data!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return (false, null);
    }
  }

  Future<(bool, LogoutResponse?)> logout() async {
    try {
      Response<dynamic> data = await _dio.post('${baseUrl}logout');
      return (true, logoutResponseFromJson(data.data!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return (false, null);
    }
  }

  Future<(bool, RegistrationResponse?)> register(
      RegistrationPayload registrationPayload) async {
    try {
      Response<dynamic> data = await _dio.post('${baseUrl}register',
          data: registrationPayload.toJson());
      return (true, registrationloadresponseFromJson(data.data!));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return (false, null);
    }
  }
}
