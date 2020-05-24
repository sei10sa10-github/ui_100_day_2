// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Destination _$_$_DestinationFromJson(Map<String, dynamic> json) {
  return _$_Destination(
    image: json['image'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    reviewRating: (json['reviewRating'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_DestinationToJson(_$_Destination instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'reviewRating': instance.reviewRating,
    };
