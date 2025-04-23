// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashcardSet _$FlashcardSetFromJson(Map<String, dynamic> json) {
  return _FlashcardSet.fromJson(json);
}

/// @nodoc
mixin _$FlashcardSet {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Flashcard>? get flashcards => throw _privateConstructorUsedError;

  /// Serializes this FlashcardSet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardSetCopyWith<FlashcardSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardSetCopyWith<$Res> {
  factory $FlashcardSetCopyWith(
          FlashcardSet value, $Res Function(FlashcardSet) then) =
      _$FlashcardSetCopyWithImpl<$Res, FlashcardSet>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(ignore: true) List<Flashcard>? flashcards});
}

/// @nodoc
class _$FlashcardSetCopyWithImpl<$Res, $Val extends FlashcardSet>
    implements $FlashcardSetCopyWith<$Res> {
  _$FlashcardSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? flashcards = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      flashcards: freezed == flashcards
          ? _value.flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardSetImplCopyWith<$Res>
    implements $FlashcardSetCopyWith<$Res> {
  factory _$$FlashcardSetImplCopyWith(
          _$FlashcardSetImpl value, $Res Function(_$FlashcardSetImpl) then) =
      __$$FlashcardSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(ignore: true) List<Flashcard>? flashcards});
}

/// @nodoc
class __$$FlashcardSetImplCopyWithImpl<$Res>
    extends _$FlashcardSetCopyWithImpl<$Res, _$FlashcardSetImpl>
    implements _$$FlashcardSetImplCopyWith<$Res> {
  __$$FlashcardSetImplCopyWithImpl(
      _$FlashcardSetImpl _value, $Res Function(_$FlashcardSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashcardSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? flashcards = freezed,
  }) {
    return _then(_$FlashcardSetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      flashcards: freezed == flashcards
          ? _value._flashcards
          : flashcards // ignore: cast_nullable_to_non_nullable
              as List<Flashcard>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardSetImpl implements _FlashcardSet {
  const _$FlashcardSetImpl(
      {required this.id,
      required this.name,
      this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(ignore: true) final List<Flashcard>? flashcards})
      : _flashcards = flashcards;

  factory _$FlashcardSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardSetImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  final List<Flashcard>? _flashcards;
  @override
  @JsonKey(ignore: true)
  List<Flashcard>? get flashcards {
    final value = _flashcards;
    if (value == null) return null;
    if (_flashcards is EqualUnmodifiableListView) return _flashcards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FlashcardSet(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, flashcards: $flashcards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._flashcards, _flashcards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, createdAt,
      updatedAt, userId, const DeepCollectionEquality().hash(_flashcards));

  /// Create a copy of FlashcardSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardSetImplCopyWith<_$FlashcardSetImpl> get copyWith =>
      __$$FlashcardSetImplCopyWithImpl<_$FlashcardSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardSetImplToJson(
      this,
    );
  }
}

abstract class _FlashcardSet implements FlashcardSet {
  const factory _FlashcardSet(
          {required final String id,
          required final String name,
          final String? description,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(ignore: true) final List<Flashcard>? flashcards}) =
      _$FlashcardSetImpl;

  factory _FlashcardSet.fromJson(Map<String, dynamic> json) =
      _$FlashcardSetImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(ignore: true)
  List<Flashcard>? get flashcards;

  /// Create a copy of FlashcardSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardSetImplCopyWith<_$FlashcardSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
