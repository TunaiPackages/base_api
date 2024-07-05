import 'dart:convert';

import 'package:base_api/src/base_api.dart';
import 'package:base_api/src/http_method.dart';
import 'package:http/src/request.dart';

class PostJsonApi extends BaseApi {
  final Map<String, dynamic> bodyJson;
  PostJsonApi({
    required super.uri,
    super.method = HttpMethod.post,
    required super.headers,
    this.bodyJson = const {},
  });

  @override
  Request get httpRequest {
    super.httpRequest.body = json.encode(bodyJson);
    return super.httpRequest;
  }
}
