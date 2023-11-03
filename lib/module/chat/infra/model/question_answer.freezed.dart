part of 'question_answer.dart';

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'Error');

mixin _$QuestionAnswer {
  String get question => throw _privateConstructorUsedError;
  StringBuffer get answer => throw _privateConstructorUsedError;

  @JsonKey()
  $QuestionAnswerCopyWith<QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

abstract class $QuestionAnswerCopyWith<$Res> {
  factory $QuestionAnswerCopyWith(
          QuestionAnswer value, $Res Function(QuestionAnswer) then) =
      _$QuestionAnswerCopyWithImpl<$Res, QuestionAnswer>;
  @useResult
  $Res call({String question, StringBuffer answer});
}

class _$QuestionAnswerCopyWithImpl<$Res, $Val extends QuestionAnswer>
    implements $QuestionAnswerCopyWith<$Res> {
  _$QuestionAnswerCopyWithImpl(this._value, this._then);

  final $Val _value;
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question,
    Object? answer,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question 
              as String,
      answer: null == answer
          ? _value.answer
          : answer 
              as StringBuffer,
    ) as $Val);
  }
}

abstract class _$$_QuestionAnswerCopyWith<$Res>
    implements $QuestionAnswerCopyWith<$Res> {
  factory _$$_QuestionAnswerCopyWith(
          _$_QuestionAnswer value, $Res Function(_$_QuestionAnswer) then) =
      __$$_QuestionAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, StringBuffer answer});
}

class __$$_QuestionAnswerCopyWithImpl<$Res>
    extends _$QuestionAnswerCopyWithImpl<$Res, _$_QuestionAnswer>
    implements _$$_QuestionAnswerCopyWith<$Res> {
  __$$_QuestionAnswerCopyWithImpl(
      // ignore: no_leading_underscores_for_local_identifiers
      _$_QuestionAnswer _value, $Res Function(_$_QuestionAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question,
    Object? answer,
  }) {
    return _then(_$_QuestionAnswer(
      question: null == question
          ? _value.question
          : question 
              as String,
      answer: null == answer
          ? _value.answer
          : answer 
              as StringBuffer,
    ));
  }
}

class _$_QuestionAnswer implements _QuestionAnswer {
  const _$_QuestionAnswer({required this.question, required this.answer});

  @override
  final String question;
  @override
  final StringBuffer answer;

  @override
  String toString() {
    return 'QuestionAnswer(question: $question, answer: ${answer.toString()})';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswer &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey()
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      __$$_QuestionAnswerCopyWithImpl<_$_QuestionAnswer>(this, _$identity);
}

abstract class _QuestionAnswer implements QuestionAnswer {
  const factory _QuestionAnswer(
      {required final String question,
      required final StringBuffer answer}) = _$_QuestionAnswer;

  @override
  String get question;
  @override
  StringBuffer get answer;
  @override
  @JsonKey()
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
