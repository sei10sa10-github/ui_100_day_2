import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

@freezed
abstract class Destination with _$Destination {
  const factory Destination({@required String image, @required String name, @required String description, @required double reviewRating}) = _Destination;
  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}