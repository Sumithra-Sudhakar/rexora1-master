import 'dart:convert';

import 'package:flutter/cupertino.dart';

List<User> modelUserFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String modelUserToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
 class User{
  String text;
  String secondaryText;
  String image;
  String time;
  bool isseen;
  User({
    required this.isseen, required this.text,required this.secondaryText,required this.image,required this.time});

  factory User.fromJson(Map<dynamic, dynamic> json){
   return User(isseen: json['isseen'] as bool,
       text: json['text'] as String,
       secondaryText: json['secondaryText'] as String,
       image: json['image'] as String,
       time: json['time'] as String);
  }
  Map <String, dynamic> toJson() =>{
   "isseen": isseen,
   "text":text,
   "secondaryText": secondaryText,
   "image": image,
   "time":time,};



  }




