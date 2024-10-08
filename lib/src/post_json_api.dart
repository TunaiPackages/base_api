import 'dart:convert';

import 'package:base_api/src/base_api.dart';
import 'package:base_api/src/enum/http_method.dart';
import 'package:http/http.dart';
import 'package:http/src/request.dart';

class PostJsonApi extends BaseApi {
  final Map<String, dynamic> bodyJson;
  PostJsonApi({
    required super.uri,
    this.bodyJson = const {},
    super.method = HttpMethod.post,
    required super.headers,
  });

  @override
  BaseRequest get httpRequest {
    final request = Request(method.toString(), uri);
    request.body = json.encode(bodyJson);
    request.headers.addAll(headers);
    return request;
  }
}
