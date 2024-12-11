abstract class ChatState {}

class ChatInitial extends ChatState {}

class GetMessagesLoadingState extends ChatState {}

class GetMessagesSuccessState extends ChatState {}

class GetMessagesErrorState extends ChatState {
  final String message;

  GetMessagesErrorState(this.message);
}

class GetNextPageLoadingState extends ChatState {}

class SendMessageLoadingState extends ChatState {}

class SendMessageSuccessState extends ChatState {}

class SendMessageErrorState extends ChatState {
  final String message;

  SendMessageErrorState(this.message);
}

class MessageTypingState extends ChatState {}

class MessageUnTypingState extends ChatState {}

class CollapseChildrenState extends ChatState {}

class MarkMessageAsSeenLoadingState extends ChatState {}

class MarkMessageAsSeenErrorState extends ChatState {
  final String message;

  MarkMessageAsSeenErrorState(this.message);
} 

class MarkMessageAsSeenSuccessState extends ChatState {} 

class DeleteMessageLoadingState extends ChatState {}

class DeleteMessageErrorState extends ChatState {
  final String message;

  DeleteMessageErrorState(this.message);
}

class DeleteMessageSuccessState extends ChatState {}
class ScrollUpState extends ChatState {}
class ScrollBottomState extends ChatState {}