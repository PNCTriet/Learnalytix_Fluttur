// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Flashcard _$FlashcardFromJson(Map<String, dynamic> json) {
  return _Flashcard.fromJson(json);
}

/// @nodoc
mixin _$Flashcard {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  DifficultyLevel get difficulty => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime? get lastReviewed => throw _privateConstructorUsedError;
  DateTime? get nextReview => throw _privateConstructorUsedError;
  int? get timeLimit => throw _privateConstructorUsedError;
  StudyMode get studyMode => throw _privateConstructorUsedError;
  String? get correctAnswer => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<MultipleChoiceOption>? get options => throw _privateConstructorUsedError;

  /// Serializes this Flashcard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardCopyWith<Flashcard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardCopyWith<$Res> {
  factory $FlashcardCopyWith(Flashcard value, $Res Function(Flashcard) then) =
      _$FlashcardCopyWithImpl<$Res, Flashcard>;
  @useResult
  $Res call(
      {String id,
      String question,
      QuestionType type,
      DifficultyLevel difficulty,
      String? category,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      DateTime? lastReviewed,
      DateTime? nextReview,
      int? timeLimit,
      StudyMode studyMode,
      String? correctAnswer,
      String? explanation,
      List<String>? tags,
      List<MultipleChoiceOption>? options});
}

/// @nodoc
class _$FlashcardCopyWithImpl<$Res, $Val extends Flashcard>
    implements $FlashcardCopyWith<$Res> {
  _$FlashcardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? difficulty = null,
    Object? category = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? lastReviewed = freezed,
    Object? nextReview = freezed,
    Object? timeLimit = freezed,
    Object? studyMode = null,
    Object? correctAnswer = freezed,
    Object? explanation = freezed,
    Object? tags = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
      lastReviewed: freezed == lastReviewed
          ? _value.lastReviewed
          : lastReviewed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextReview: freezed == nextReview
          ? _value.nextReview
          : nextReview // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as StudyMode,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<MultipleChoiceOption>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardImplCopyWith<$Res>
    implements $FlashcardCopyWith<$Res> {
  factory _$$FlashcardImplCopyWith(
          _$FlashcardImpl value, $Res Function(_$FlashcardImpl) then) =
      __$$FlashcardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      QuestionType type,
      DifficultyLevel difficulty,
      String? category,
      DateTime createdAt,
      DateTime updatedAt,
      String userId,
      DateTime? lastReviewed,
      DateTime? nextReview,
      int? timeLimit,
      StudyMode studyMode,
      String? correctAnswer,
      String? explanation,
      List<String>? tags,
      List<MultipleChoiceOption>? options});
}

/// @nodoc
class __$$FlashcardImplCopyWithImpl<$Res>
    extends _$FlashcardCopyWithImpl<$Res, _$FlashcardImpl>
    implements _$$FlashcardImplCopyWith<$Res> {
  __$$FlashcardImplCopyWithImpl(
      _$FlashcardImpl _value, $Res Function(_$FlashcardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? difficulty = null,
    Object? category = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? lastReviewed = freezed,
    Object? nextReview = freezed,
    Object? timeLimit = freezed,
    Object? studyMode = null,
    Object? correctAnswer = freezed,
    Object? explanation = freezed,
    Object? tags = freezed,
    Object? options = freezed,
  }) {
    return _then(_$FlashcardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
      lastReviewed: freezed == lastReviewed
          ? _value.lastReviewed
          : lastReviewed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextReview: freezed == nextReview
          ? _value.nextReview
          : nextReview // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as StudyMode,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<MultipleChoiceOption>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardImpl implements _Flashcard {
  const _$FlashcardImpl(
      {required this.id,
      required this.question,
      required this.type,
      required this.difficulty,
      this.category,
      required this.createdAt,
      required this.updatedAt,
      required this.userId,
      this.lastReviewed,
      this.nextReview,
      this.timeLimit,
      required this.studyMode,
      this.correctAnswer,
      this.explanation,
      final List<String>? tags,
      final List<MultipleChoiceOption>? options})
      : _tags = tags,
        _options = options;

  factory _$FlashcardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final QuestionType type;
  @override
  final DifficultyLevel difficulty;
  @override
  final String? category;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String userId;
  @override
  final DateTime? lastReviewed;
  @override
  final DateTime? nextReview;
  @override
  final int? timeLimit;
  @override
  final StudyMode studyMode;
  @override
  final String? correctAnswer;
  @override
  final String? explanation;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultipleChoiceOption>? _options;
  @override
  List<MultipleChoiceOption>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Flashcard(id: $id, question: $question, type: $type, difficulty: $difficulty, category: $category, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, lastReviewed: $lastReviewed, nextReview: $nextReview, timeLimit: $timeLimit, studyMode: $studyMode, correctAnswer: $correctAnswer, explanation: $explanation, tags: $tags, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lastReviewed, lastReviewed) ||
                other.lastReviewed == lastReviewed) &&
            (identical(other.nextReview, nextReview) ||
                other.nextReview == nextReview) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.studyMode, studyMode) ||
                other.studyMode == studyMode) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      type,
      difficulty,
      category,
      createdAt,
      updatedAt,
      userId,
      lastReviewed,
      nextReview,
      timeLimit,
      studyMode,
      correctAnswer,
      explanation,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardImplCopyWith<_$FlashcardImpl> get copyWith =>
      __$$FlashcardImplCopyWithImpl<_$FlashcardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashcardImplToJson(
      this,
    );
  }
}

abstract class _Flashcard implements Flashcard {
  const factory _Flashcard(
      {required final String id,
      required final String question,
      required final QuestionType type,
      required final DifficultyLevel difficulty,
      final String? category,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String userId,
      final DateTime? lastReviewed,
      final DateTime? nextReview,
      final int? timeLimit,
      required final StudyMode studyMode,
      final String? correctAnswer,
      final String? explanation,
      final List<String>? tags,
      final List<MultipleChoiceOption>? options}) = _$FlashcardImpl;

  factory _Flashcard.fromJson(Map<String, dynamic> json) =
      _$FlashcardImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  QuestionType get type;
  @override
  DifficultyLevel get difficulty;
  @override
  String? get category;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get userId;
  @override
  DateTime? get lastReviewed;
  @override
  DateTime? get nextReview;
  @override
  int? get timeLimit;
  @override
  StudyMode get studyMode;
  @override
  String? get correctAnswer;
  @override
  String? get explanation;
  @override
  List<String>? get tags;
  @override
  List<MultipleChoiceOption>? get options;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardImplCopyWith<_$FlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
