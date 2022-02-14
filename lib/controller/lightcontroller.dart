import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smarthomebackendlaravel/model/lightmodel.dart';

class LightController {
  Future<Light?> makeRequest() async {
    var url = 'http://192.168.100.229:8000/api/light';
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      return Light.fromJson(json.decode(response.body)['data']);
    } else {
      throw Exception('Failed to load post');
    }
  }
}
