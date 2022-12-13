// To parse this JSON data, do
//
//     final homeResponse = homeResponseFromJson(jsonString);

import 'dart:convert';

List<HomeResponse> homeResponseFromJson(String str) => List<HomeResponse>.from(
    json.decode(str).map((x) => HomeResponse.fromJson(x)));

String homeResponseToJson(List<HomeResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeResponse {
  HomeResponse({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory HomeResponse.fromJson(Map<String, dynamic> json) => HomeResponse(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
