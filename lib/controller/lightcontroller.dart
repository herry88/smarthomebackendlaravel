import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smarthomebackendlaravel/model/lightmodel.dart';

class LightController {
  Future<List>? makeRequest() async {
    var url = 'http://192.168.100.229:8000/api/light';
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    return json.decode(response.body)["data"];
  }
}

class Light {
  String? status;
  Light({this.status});
  factory Light.fromJson(Map<String, dynamic> json) {
    return Light(
      status: json['status'],
    );
  }
}
