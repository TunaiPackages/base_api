import 'dart:convert';

import 'package:base_api/src/base_api.dart';
import 'package:base_api/src/enum/http_method.dart';
import 'package:http/http.dart';
import 'package:http/src/request.dart';

class PostFormApi extends BaseApi {
  final Map<String, String> bodyFields;
  PostFormApi({
    required super.uri,
    this.bodyFields = const {},
    super.method = HttpMethod.post,
    required super.headers,
  });

  @override
  BaseRequest get httpRequest {
    final request = Request(method.toString(), uri);
    request.bodyFields = bodyFields;
    request.headers.addAll(headers);
    return request;
  }
}
