// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ProductApiService extends ProductApiService {
  _$ProductApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ProductApiService;

  Future<Response> getProduct() {
    final $url = 'https://antopolis.tech/task-assets/ecom/ecom.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
