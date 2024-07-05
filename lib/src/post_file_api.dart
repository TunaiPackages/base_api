import 'package:base_api/base_api.dart';
import 'package:base_api/src/base_api.dart';
import 'package:http/http.dart';

class PostFileApi extends BaseApi {
  final List<MultipartFile> files;
  final Map<String, String> bodyFields;
  PostFileApi({
    this.files = const [],
    required super.uri,
    super.method = HttpMethod.post,
    required super.headers,
    this.bodyFields = const {},
  });

  @override
  BaseRequest get httpRequest {
    final request = MultipartRequest(method.toString(), uri);
    request.headers.addAll(headers);
    request.fields.addAll(bodyFields);
    request.files.addAll(files);
    return request;
  }
}
