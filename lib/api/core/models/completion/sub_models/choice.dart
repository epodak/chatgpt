import 'package:meta/meta.dart';

@immutable
class OpenAICompletionModelChoice {
  /// The text generated by the completion.
  final String text;

  /// The index of the choice.
  final int index;

  /// The log probabilities of the tokens in the completion.
  final int? logprobs;

  /// The reason the completion finished.
  final String? finishReason;

  @override
  int get hashCode {
    return text.hashCode ^
        index.hashCode ^
        logprobs.hashCode ^
        finishReason.hashCode;
  }

  /// This class is used to represent a choice generated by an OpenAI completion.
  const OpenAICompletionModelChoice({
    required this.text,
    required this.index,
    required this.logprobs,
    required this.finishReason,
  });

  /// This method is used to convert a [Map<String, dynamic>] object to a [OpenAICompletionModelChoice] object.
  factory OpenAICompletionModelChoice.fromMap(Map<String, dynamic> json) {
    return OpenAICompletionModelChoice(
      text: json['text'],
      index: json['index'],
      logprobs: json['logprobs'],
      finishReason: json['finishReason'],
    );
  }

  @override
  bool operator ==(covariant OpenAICompletionModelChoice other) {
    if (identical(this, other)) return true;

    return other.text == text &&
        other.index == index &&
        other.logprobs == logprobs &&
        other.finishReason == finishReason;
  }

  @override
  String toString() {
    return 'OpenAICompletionModelChoice(text: $text, index: $index, logprobs: $logprobs, finishReason: $finishReason)';
  }
}