import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_template/core/base/model/dto/example_dto.dart';
import 'package:flutter_template/core/base/model/network_exception_model.dart';
import 'package:flutter_template/core/init/network/network_setup.dart';
import '../../../constants/network/network_constants.dart';
import 'package:http/http.dart' as http;

class ExampleRequest extends NetworkSetup {
  Future<ExampleDTO> exampleRequest() async {
    final uri = Uri.https(NetworkConstants.BASEURL, NetworkConstants.EXAMPLE_ENDPOINT); // creates the uri to send the request to
    final box = Hive.box('Example'); // initializes Hive box to save the response in the local storage if needed
    //Pass headers below
    final response = await http.post(uri, headers: headers);
    if (response.statusCode == 200) {
      final responseObject = jsonDecode(response.body).map((e) => ExampleDTO.fromJson(e)); // Writes response onto model and returns as the model structure
      box.add(responseObject);
      return responseObject;
    } else {
      // creates an explanatory exception message
      final exceptionMessage = NetworkExceptionModel.generateExceptionMessage("exampleRequest", response.statusCode.toString());
      print(exceptionMessage);
      throw Exception(exceptionMessage);
    }
  }
}