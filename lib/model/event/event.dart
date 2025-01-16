import 'package:json_annotation/json_annotation.dart';
part 'event.g.dart';

@JsonSerializable()
class Event {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "name")
  String? name;

  @JsonKey(name: "description")
  String? description;

  @JsonKey(name: "category")
  String? category;

  @JsonKey(name: "image")
  String? image;

  @JsonKey(name: "price")
  double? price;

  @JsonKey(name: "subcategory")
  String? subcategory;

  Event({
    this.id,
    this.name,
    this.description,
    this.category,
    this.image,
    this.subcategory,
    this.price
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}