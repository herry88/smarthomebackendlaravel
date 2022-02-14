class Light {
  String? status;
  Light({this.status});
  factory Light.fromJson(Map<String, dynamic> json) {
    return Light(
      status: json['status'],
    );
  }
}
