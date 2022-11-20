import 'package:json_annotation/json_annotation.dart';
part 'example_dto.g.dart';
// null-safe data transfer object generated via json to dart plugin
// also creates generator with Mobx for the model
@JsonSerializable()
class ExampleDTO {
  String? name;
  String? email;

  ExampleDTO({this.name, this.email});

  ExampleDTO.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }


 /*
 After running the buildRunner once you can simply do:

 factory ExampleDTO.fromJson(Map<String, dynamic> json) {
    return _$ExampleDTOFromJson(json);
  }

  factory Map<String, dynamic> toJson() {
    return _$ExampleDTOToJson(this);
  }

  */

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}