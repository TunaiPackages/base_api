import 'package:base_api/src/base_api.dart';
import 'package:base_api/src/enum/http_method.dart';
import 'package:http/src/request.dart';

class PostApi extends BaseApi {
  final Map<String, String> bodyFields;
  PostApi({
    required super.uri,
    this.bodyFields = const {},
    super.method = HttpMethod.post,
    required super.headers,
  });

  @override
  Request get httpRequest {
    super.httpRequest.bodyFields = bodyFields;
    return super.httpRequest;
  }
}
