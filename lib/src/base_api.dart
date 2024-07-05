import 'dart:convert';

import 'package:base_api/src/base_api_response.dart';
import 'package:base_api/src/http_method.dart';
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

  http.Request get httpRequest {
    final request = http.Request(method.toString(), uri);
    request.headers.addAll(headers);
    return request;
  }

  Future<BaseApiResponse> send() async {
    final response = await httpRequest.send();
    final data = json.decode(await response.stream.bytesToString());
    return BaseApiResponse(
      response: response,
      data: data,
    );
  }
}
