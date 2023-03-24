import "package:meta/meta.dart";

@immutable
class OpenAIStreamCompletionModelChoice {
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

  /// This class is used to represent a choice generated by an OpenAI stream completion.
  const OpenAIStreamCompletionModelChoice({
    required this.text,
    required this.index,
    required this.logprobs,
    required this.finishReason,
  });

  /// This method is used to convert a [Map<String, dynamic>] object to a [OpenAIStreamCompletionModelChoice] object.
  factory OpenAIStreamCompletionModelChoice.fromMap(
    Map<String, dynamic> json,
  ) {
    return OpenAIStreamCompletionModelChoice(
      text: json['text'],
      index: json['index'],
      logprobs: json['logprobs'],
      finishReason: json['finishReason'],
    );
  }

  @override
  String toString() {
    return 'OpenAIStreamCompletionModelChoice(text: $text, index: $index, logprobs: $logprobs, finishReason: $finishReason)';
  }

  @override
  bool operator ==(covariant OpenAIStreamCompletionModelChoice other) {
    if (identical(this, other)) return true;

    return other.text == text &&
        other.index == index &&
        other.logprobs == logprobs &&
        other.finishReason == finishReason;
  }
}