import 'dart:convert';

UserRegister userRegisterFromJson(String str) =>
    UserRegister.fromJson(json.decode(str));

String userRegisterToJson(UserRegister data) => json.encode(data.toJson());

class UserRegister {
  UserRegister({
    this.status,
    this.data,
  });

  String status;
  List<dynamic> data;

  factory UserRegister.fromJson(Map<String, dynamic> json) => UserRegister(
        status: json["status"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
}

SchoolList schoolListFromJson(String str) => SchoolList.fromJson(json.decode(str));

String schoolListToJson(SchoolList data) => json.encode(data.toJson());

class SchoolList {
    SchoolList({
        this.status,
        this.data,
    });

    String status;
    List<dynamic> data;

    factory SchoolList.fromJson(Map<String, dynamic> json) => SchoolList(
        status: json["status"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}

