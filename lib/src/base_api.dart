import 'dart:convert';

import 'package:base_api/src/model/base_api_response.dart';
import 'package:base_api/src/enum/http_method.dart';
import 'package:http/http.dart' as http;

abstract class BaseApi {
  final Uri uri;
  final HttpMethod method;
  final Map<String, String> headers;

  BaseApi({
    required this.uri,
    required this.method,
    required this.headers,
  });

  http.BaseRequest get httpRequest;

  Future<BaseApiResponse> send() async {
    final response = await httpRequest.send();
    final responseData = await response.stream.bytesToString();
    dynamic data;

    try {
      data = json.decode(responseData);
    } catch (e) {
      data = responseData;
    }

    return BaseApiResponse(
      streamedResponse: response,
      data: data,
    );
  }
}
