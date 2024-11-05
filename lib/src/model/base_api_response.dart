import 'package:http/http.dart';

class BaseApiResponse {
  final StreamedResponse streamedResponse;
  final dynamic data;

  int get statusCode => streamedResponse.statusCode;
  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  const BaseApiResponse({
    required this.streamedResponse,
    required this.data,
  });
}
