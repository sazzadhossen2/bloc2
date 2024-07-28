import 'dart:convert';

import 'package:http/http.dart';

class ApiService {
  Future<ResponseData> getRequest(String uri) async {
    final Response response = await get(Uri.parse(uri));
    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      return ResponseData(
          isSuccess: true,
          responseData: decoded,
          statusCode: response.statusCode);
    } else {
      return ResponseData(
        isSuccess: false,
        responseData: ' ',
        statusCode: response.statusCode,
      );
    }
  }
}

class ResponseData {
  final bool isSuccess;
  final int statusCode;
  final dynamic responseData;
  final String enError;

  ResponseData({
    required this.isSuccess,
    required this.responseData,
    required this.statusCode,
    this.enError = 'Something Went wrong',
  });
}
