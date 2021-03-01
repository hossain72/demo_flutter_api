import 'package:chopper/chopper.dart';

part 'product_api_service.chopper.dart';

@ChopperApi()
abstract class ProductApiService extends ChopperService {
  @Get()
  Future<Response> getProduct();

  static ProductApiService create() {
    final client = ChopperClient(
      baseUrl: "https://antopolis.tech/task-assets/ecom/ecom.json",
      services: [_$ProductApiService()],
      converter: JsonConverter(),
    );
    return _$ProductApiService(client);
  }
}
