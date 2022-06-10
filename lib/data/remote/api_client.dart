import 'dart:convert';

import 'package:http/http.dart';

import '../../common/constant.dart';

class ApiClient {
  final Client client;

  ApiClient(this.client);

  dynamic getTmdbApi(String path) async {
    final response = await client.get(
        Uri.parse("${Constant.baseUrl}$path?api_key=${Constant.apiKey}"),
        headers: {
          'Content-type': 'application/json',
        });

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);

      return responseBody;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
