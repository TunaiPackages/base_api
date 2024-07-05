import 'package:http/http.dart';

class BaseApiResponse {
  final StreamedResponse response;
  final dynamic data;

  int get statusCode => response.statusCode;

  const BaseApiResponse({
    required this.response,
    required this.data,
  });
}
