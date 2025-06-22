import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:common_utils_services/models/ai_request.dart';
import 'package:common_utils_services/models/ai_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://api.anthropic.com/v1/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("messages")
  Future<AiResponse> sendMessage(
    @Header("x-api-key") String apiKey,
    @Body() AiRequest request,
  );
}
