part of 'chat_conversation_cubit.dart';

abstract class ChatConversationState extends Equatable {
  const ChatConversationState();
}

class ChatConversationInitial extends ChatConversationState {
  @override
  List<Object> get props => [];
}

class ChatConversationLoading extends ChatConversationState {
  @override
  List<Object> get props => [];
}

class ChatConversationLoaded extends ChatConversationState {
  final Map<int, List<ChatMessageEntity>> chatMessages;
  final int showConversationId;

  ChatConversationLoaded({required this.chatMessages, required this.showConversationId});
  @override
  List<Object> get props => [chatMessages, showConversationId];

  List<ChatMessageEntity>? getShowMessageList() {
    return chatMessages[showConversationId];
  }
}

class ConversationUser extends ChatConversationState {

  final String userName;

  ConversationUser({required this.userName});

  @override
  List<Object?> get props => [userName];

}




