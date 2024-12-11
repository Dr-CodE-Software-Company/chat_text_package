import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat_states.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial()) {
    listenOnTheValueOfMessageController();
  }

  static ChatCubit get(context) => BlocProvider.of(context);

  TextEditingController messageController = TextEditingController();
  // Scroll controllers
  bool maxScroll = false; 
  changeMaxScroll(){
    maxScroll = false;
  }
  // Make the scroll controller start the list from the bottom
  scrollToBottom(ScrollController chatScrollController ) {
    if (chatScrollController.positions.isNotEmpty) {
      chatScrollController.animateTo(
        chatScrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  
  }
 
  listenOnScrollController(ScrollController chatScrollController) {
      chatScrollController.addListener(() { 
      if (chatScrollController.position.pixels >= 500) {
        if (!maxScroll) {
          maxScroll = true;
          emit(ScrollUpState());
        }
      }

      else if (chatScrollController.position.pixels == 0) {
        if (maxScroll) {
          maxScroll = false;
          emit(ScrollBottomState());
        }
      }     
    });
  }

   TextDirection textDirection = TextDirection.ltr;

  void listenOnTheValueOfMessageController() {
    messageController.addListener(() {
 
      if (messageController.text.isNotEmpty) {
        final isArabic =
            RegExp(r'^[\u0600-\u06FF]').hasMatch(messageController.text[0]); // Check first character
        final newDirection =
            isArabic ? TextDirection.rtl : TextDirection.ltr;

        if (newDirection != textDirection) {
          textDirection = newDirection;
          // No need for setState since TextField rebuilds its child
        }
        emit(MessageTypingState()); 
      } else {
        emit(MessageUnTypingState());
      }
    });
  }
}
