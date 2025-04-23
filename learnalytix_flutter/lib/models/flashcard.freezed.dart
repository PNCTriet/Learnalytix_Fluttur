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
  @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
  QuestionType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
  DifficultyLevel get difficulty => throw _privateConstructorUsedError;
  @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
  StudyMode get studyMode => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  List<MultipleChoiceOption>? get options => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_limit')
  int? get timeLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_reviewed')
  DateTime? get lastReviewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_review')
  DateTime? get nextReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
      QuestionType type,
      @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
      DifficultyLevel difficulty,
      @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
      StudyMode studyMode,
      String? category,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      String? explanation,
      List<MultipleChoiceOption>? options,
      List<String>? tags,
      @JsonKey(name: 'time_limit') int? timeLimit,
      @JsonKey(name: 'last_reviewed') DateTime? lastReviewed,
      @JsonKey(name: 'next_review') DateTime? nextReview,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') String userId});
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
    Object? studyMode = null,
    Object? category = freezed,
    Object? correctAnswer = freezed,
    Object? explanation = freezed,
    Object? options = freezed,
    Object? tags = freezed,
    Object? timeLimit = freezed,
    Object? lastReviewed = freezed,
    Object? nextReview = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
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
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as StudyMode,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<MultipleChoiceOption>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      lastReviewed: freezed == lastReviewed
          ? _value.lastReviewed
          : lastReviewed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextReview: freezed == nextReview
          ? _value.nextReview
          : nextReview // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
      QuestionType type,
      @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
      DifficultyLevel difficulty,
      @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
      StudyMode studyMode,
      String? category,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      String? explanation,
      List<MultipleChoiceOption>? options,
      List<String>? tags,
      @JsonKey(name: 'time_limit') int? timeLimit,
      @JsonKey(name: 'last_reviewed') DateTime? lastReviewed,
      @JsonKey(name: 'next_review') DateTime? nextReview,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') String userId});
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
    Object? studyMode = null,
    Object? category = freezed,
    Object? correctAnswer = freezed,
    Object? explanation = freezed,
    Object? options = freezed,
    Object? tags = freezed,
    Object? timeLimit = freezed,
    Object? lastReviewed = freezed,
    Object? nextReview = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
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
      studyMode: null == studyMode
          ? _value.studyMode
          : studyMode // ignore: cast_nullable_to_non_nullable
              as StudyMode,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<MultipleChoiceOption>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      lastReviewed: freezed == lastReviewed
          ? _value.lastReviewed
          : lastReviewed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextReview: freezed == nextReview
          ? _value.nextReview
          : nextReview // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashcardImpl implements _Flashcard {
  const _$FlashcardImpl(
      {required this.id,
      required this.question,
      @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
      required this.type,
      @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
      required this.difficulty,
      @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
      required this.studyMode,
      this.category,
      @JsonKey(name: 'correct_answer') this.correctAnswer,
      this.explanation,
      final List<MultipleChoiceOption>? options,
      final List<String>? tags,
      @JsonKey(name: 'time_limit') this.timeLimit,
      @JsonKey(name: 'last_reviewed') this.lastReviewed,
      @JsonKey(name: 'next_review') this.nextReview,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'user_id') required this.userId})
      : _options = options,
        _tags = tags;

  factory _$FlashcardImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashcardImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
  final QuestionType type;
  @override
  @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
  final DifficultyLevel difficulty;
  @override
  @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
  final StudyMode studyMode;
  @override
  final String? category;
  @override
  @JsonKey(name: 'correct_answer')
  final String? correctAnswer;
  @override
  final String? explanation;
  final List<MultipleChoiceOption>? _options;
  @override
  List<MultipleChoiceOption>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'time_limit')
  final int? timeLimit;
  @override
  @JsonKey(name: 'last_reviewed')
  final DateTime? lastReviewed;
  @override
  @JsonKey(name: 'next_review')
  final DateTime? nextReview;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'Flashcard(id: $id, question: $question, type: $type, difficulty: $difficulty, studyMode: $studyMode, category: $category, correctAnswer: $correctAnswer, explanation: $explanation, options: $options, tags: $tags, timeLimit: $timeLimit, lastReviewed: $lastReviewed, nextReview: $nextReview, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId)';
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
            (identical(other.studyMode, studyMode) ||
                other.studyMode == studyMode) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.lastReviewed, lastReviewed) ||
                other.lastReviewed == lastReviewed) &&
            (identical(other.nextReview, nextReview) ||
                other.nextReview == nextReview) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      type,
      difficulty,
      studyMode,
      category,
      correctAnswer,
      explanation,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_tags),
      timeLimit,
      lastReviewed,
      nextReview,
      createdAt,
      updatedAt,
      userId);

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
          @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
          required final QuestionType type,
          @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
          required final DifficultyLevel difficulty,
          @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
          required final StudyMode studyMode,
          final String? category,
          @JsonKey(name: 'correct_answer') final String? correctAnswer,
          final String? explanation,
          final List<MultipleChoiceOption>? options,
          final List<String>? tags,
          @JsonKey(name: 'time_limit') final int? timeLimit,
          @JsonKey(name: 'last_reviewed') final DateTime? lastReviewed,
          @JsonKey(name: 'next_review') final DateTime? nextReview,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'user_id') required final String userId}) =
      _$FlashcardImpl;

  factory _Flashcard.fromJson(Map<String, dynamic> json) =
      _$FlashcardImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  @JsonKey(name: 'type', unknownEnumValue: QuestionType.multipleChoice)
  QuestionType get type;
  @override
  @JsonKey(name: 'difficulty', unknownEnumValue: DifficultyLevel.easy)
  DifficultyLevel get difficulty;
  @override
  @JsonKey(name: 'study_mode', unknownEnumValue: StudyMode.learn)
  StudyMode get studyMode;
  @override
  String? get category;
  @override
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer;
  @override
  String? get explanation;
  @override
  List<MultipleChoiceOption>? get options;
  @override
  List<String>? get tags;
  @override
  @JsonKey(name: 'time_limit')
  int? get timeLimit;
  @override
  @JsonKey(name: 'last_reviewed')
  DateTime? get lastReviewed;
  @override
  @JsonKey(name: 'next_review')
  DateTime? get nextReview;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of Flashcard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardImplCopyWith<_$FlashcardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
