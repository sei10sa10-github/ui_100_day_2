// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

class _$DestinationTearOff {
  const _$DestinationTearOff();

  _Destination call(
      {@required String image,
      @required String name,
      @required String description,
      @required double reviewRating}) {
    return _Destination(
      image: image,
      name: name,
      description: description,
      reviewRating: reviewRating,
    );
  }
}

// ignore: unused_element
const $Destination = _$DestinationTearOff();

mixin _$Destination {
  String get image;
  String get name;
  String get description;
  double get reviewRating;

  Map<String, dynamic> toJson();
  $DestinationCopyWith<Destination> get copyWith;
}

abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res>;
  $Res call(
      {String image, String name, String description, double reviewRating});
}

class _$DestinationCopyWithImpl<$Res> implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  final Destination _value;
  // ignore: unused_field
  final $Res Function(Destination) _then;

  @override
  $Res call({
    Object image = freezed,
    Object name = freezed,
    Object description = freezed,
    Object reviewRating = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      reviewRating: reviewRating == freezed
          ? _value.reviewRating
          : reviewRating as double,
    ));
  }
}

abstract class _$DestinationCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$DestinationCopyWith(
          _Destination value, $Res Function(_Destination) then) =
      __$DestinationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image, String name, String description, double reviewRating});
}

class __$DestinationCopyWithImpl<$Res> extends _$DestinationCopyWithImpl<$Res>
    implements _$DestinationCopyWith<$Res> {
  __$DestinationCopyWithImpl(
      _Destination _value, $Res Function(_Destination) _then)
      : super(_value, (v) => _then(v as _Destination));

  @override
  _Destination get _value => super._value as _Destination;

  @override
  $Res call({
    Object image = freezed,
    Object name = freezed,
    Object description = freezed,
    Object reviewRating = freezed,
  }) {
    return _then(_Destination(
      image: image == freezed ? _value.image : image as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      reviewRating: reviewRating == freezed
          ? _value.reviewRating
          : reviewRating as double,
    ));
  }
}

@JsonSerializable()
class _$_Destination implements _Destination {
  const _$_Destination(
      {@required this.image,
      @required this.name,
      @required this.description,
      @required this.reviewRating})
      : assert(image != null),
        assert(name != null),
        assert(description != null),
        assert(reviewRating != null);

  factory _$_Destination.fromJson(Map<String, dynamic> json) =>
      _$_$_DestinationFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String description;
  @override
  final double reviewRating;

  @override
  String toString() {
    return 'Destination(image: $image, name: $name, description: $description, reviewRating: $reviewRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Destination &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.reviewRating, reviewRating) ||
                const DeepCollectionEquality()
                    .equals(other.reviewRating, reviewRating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(reviewRating);

  @override
  _$DestinationCopyWith<_Destination> get copyWith =>
      __$DestinationCopyWithImpl<_Destination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DestinationToJson(this);
  }
}

abstract class _Destination implements Destination {
  const factory _Destination(
      {@required String image,
      @required String name,
      @required String description,
      @required double reviewRating}) = _$_Destination;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$_Destination.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get description;
  @override
  double get reviewRating;
  @override
  _$DestinationCopyWith<_Destination> get copyWith;
}
