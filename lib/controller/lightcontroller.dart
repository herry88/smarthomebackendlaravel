import 'dart:convert';
import 'package:http/http.dart' as http;

class LightController {
  //get data api
  Future<List>? makeRequest() async {
    var url = 'https://smarthomebackend.herokuapp.com/api/light/';
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    return json.decode(response.body)["data"];
  }

  //change status api
  Future<List>? changeStatus(String id, String status) async {
    var url = 'https://smarthomebackend.herokuapp.com/api/light/' + id + '/' + status;
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
