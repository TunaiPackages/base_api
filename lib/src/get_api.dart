import 'package:base_api/src/base_api.dart';
import 'package:base_api/src/http_method.dart';

class GetApi extends BaseApi {
  GetApi({
    required super.uri,
    super.method = HttpMethod.get,
    required super.headers,
  });
}
