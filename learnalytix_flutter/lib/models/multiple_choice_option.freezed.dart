// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiple_choice_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultipleChoiceOption _$MultipleChoiceOptionFromJson(Map<String, dynamic> json) {
  return _MultipleChoiceOption.fromJson(json);
}

/// @nodoc
mixin _$MultipleChoiceOption {
  String get id => throw _privateConstructorUsedError;
  String get flashcardId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MultipleChoiceOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultipleChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultipleChoiceOptionCopyWith<MultipleChoiceOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleChoiceOptionCopyWith<$Res> {
  factory $MultipleChoiceOptionCopyWith(MultipleChoiceOption value,
          $Res Function(MultipleChoiceOption) then) =
      _$MultipleChoiceOptionCopyWithImpl<$Res, MultipleChoiceOption>;
  @useResult
  $Res call(
      {String id,
      String flashcardId,
      String text,
      bool isCorrect,
      DateTime createdAt});
}

/// @nodoc
class _$MultipleChoiceOptionCopyWithImpl<$Res,
        $Val extends MultipleChoiceOption>
    implements $MultipleChoiceOptionCopyWith<$Res> {
  _$MultipleChoiceOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultipleChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flashcardId = null,
    Object? text = null,
    Object? isCorrect = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultipleChoiceOptionImplCopyWith<$Res>
    implements $MultipleChoiceOptionCopyWith<$Res> {
  factory _$$MultipleChoiceOptionImplCopyWith(_$MultipleChoiceOptionImpl value,
          $Res Function(_$MultipleChoiceOptionImpl) then) =
      __$$MultipleChoiceOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String flashcardId,
      String text,
      bool isCorrect,
      DateTime createdAt});
}

/// @nodoc
class __$$MultipleChoiceOptionImplCopyWithImpl<$Res>
    extends _$MultipleChoiceOptionCopyWithImpl<$Res, _$MultipleChoiceOptionImpl>
    implements _$$MultipleChoiceOptionImplCopyWith<$Res> {
  __$$MultipleChoiceOptionImplCopyWithImpl(_$MultipleChoiceOptionImpl _value,
      $Res Function(_$MultipleChoiceOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultipleChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flashcardId = null,
    Object? text = null,
    Object? isCorrect = null,
    Object? createdAt = null,
  }) {
    return _then(_$MultipleChoiceOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      flashcardId: null == flashcardId
          ? _value.flashcardId
          : flashcardId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultipleChoiceOptionImpl implements _MultipleChoiceOption {
  const _$MultipleChoiceOptionImpl(
      {required this.id,
      required this.flashcardId,
      required this.text,
      required this.isCorrect,
      required this.createdAt});

  factory _$MultipleChoiceOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultipleChoiceOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String flashcardId;
  @override
  final String text;
  @override
  final bool isCorrect;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'MultipleChoiceOption(id: $id, flashcardId: $flashcardId, text: $text, isCorrect: $isCorrect, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleChoiceOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flashcardId, flashcardId) ||
                other.flashcardId == flashcardId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, flashcardId, text, isCorrect, createdAt);

  /// Create a copy of MultipleChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleChoiceOptionImplCopyWith<_$MultipleChoiceOptionImpl>
      get copyWith =>
          __$$MultipleChoiceOptionImplCopyWithImpl<_$MultipleChoiceOptionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultipleChoiceOptionImplToJson(
      this,
    );
  }
}

abstract class _MultipleChoiceOption implements MultipleChoiceOption {
  const factory _MultipleChoiceOption(
      {required final String id,
      required final String flashcardId,
      required final String text,
      required final bool isCorrect,
      required final DateTime createdAt}) = _$MultipleChoiceOptionImpl;

  factory _MultipleChoiceOption.fromJson(Map<String, dynamic> json) =
      _$MultipleChoiceOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get flashcardId;
  @override
  String get text;
  @override
  bool get isCorrect;
  @override
  DateTime get createdAt;

  /// Create a copy of MultipleChoiceOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultipleChoiceOptionImplCopyWith<_$MultipleChoiceOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
