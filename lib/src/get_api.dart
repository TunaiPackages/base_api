import 'package:base_api/src/base_api.dart';
import 'package:base_api/src/enum/http_method.dart';
import 'package:http/http.dart';
import 'package:http/src/base_request.dart';

class GetApi extends BaseApi {
  GetApi({
    required super.uri,
    super.method = HttpMethod.get,
    required super.headers,
  });

  @override
  BaseRequest get httpRequest {
    final request = Request(method.toString(), uri);
    request.headers.addAll(headers);
    return request;
  }
}
