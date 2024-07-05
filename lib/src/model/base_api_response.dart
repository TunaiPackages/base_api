import 'package:http/http.dart';

class BaseApiResponse {
  final StreamedResponse streamedResponse;
  final dynamic data;

  int get statusCode => streamedResponse.statusCode;

  const BaseApiResponse({
    required this.streamedResponse,
    required this.data,
  });
}
