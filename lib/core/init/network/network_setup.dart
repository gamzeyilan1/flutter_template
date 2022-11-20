import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';

class NetworkSetup {

  // get token from local User data storage by key
  static var userBox = Hive.box('User');
  static var token = userBox.get('token');

  // set up headers for each request to use
  final headers = {
    HttpHeaders.contentTypeHeader: 'application/json',
    HttpHeaders.authorizationHeader: 'Bearer $token',
  };

}