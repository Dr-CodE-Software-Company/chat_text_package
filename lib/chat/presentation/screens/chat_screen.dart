import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/model/message.dart';
import '../../../core/utils/colors.dart';
import '../chat_bloc/chat_cubit.dart';
import '../chat_bloc/chat_states.dart';
import '../widgets/chat_app_bar.dart';
import '../widgets/chat_screen_body.dart';

class ChatScreen extends StatefulWidget {
  final AppBar? customAppBar;
  final String otherUserName;
  final String otherUserImage;
  final TextStyle? userNameStyle;
  final Color chatAppBackgroundColor;
  final List<Message> messages;
  final ScrollController scrollController;
  final Color activeSendIconColor;
  final void Function(String message) onSubmitMessage;
  final int unreadMsgRealTime;
  final String textHint;
  final Color fillColorTextFeild;
  final Color textColor;
  final TextStyle? messageTextStyle;
  final Color myMessageBackGrounColor;
  final Color otherMessageBackGrounColor;
  const ChatScreen(
      {super.key,
      required this.messages,
      required this.scrollController,
      this.activeSendIconColor = ColorsPackage.primary,
      required this.onSubmitMessage,
      this.unreadMsgRealTime = 0,
      this.otherUserName = "",
      this.otherUserImage = "",
      this.textHint = '',
      this.userNameStyle,
      this.chatAppBackgroundColor = ColorsPackage.whiteColor,
      this.fillColorTextFeild = const Color.fromARGB(255, 237, 241, 252),
      this.customAppBar,
      this.textColor = ColorsPackage.boldTextColor,
      this.myMessageBackGrounColor = ColorsPackage.primary,
      this.otherMessageBackGrounColor = ColorsPackage.darkGrey,
      this.messageTextStyle});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit()
        ..listenOnScrollController(widget.scrollController)
        ..changeMaxScroll(),
      child: BlocConsumer<ChatCubit, ChatState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: 
                  ChatAppBar(
                  
                    otherUserImage: widget.otherUserImage,
                    otherUserName: widget.otherUserName,
                    userNameStyle: widget.userNameStyle,
                    chatAppBackgroundColor: widget.chatAppBackgroundColor,
                  ),
              body: ChatScreenBody(
                messages: widget.messages,
                scrollController: widget.scrollController,
                onSubmitMessage: widget.onSubmitMessage,
                activeSendIconColor: widget.activeSendIconColor,
                unreadMsgRealTime: widget.unreadMsgRealTime,
                textHint: widget.textHint,
                fillColorTextFeild: widget.fillColorTextFeild,
                textColor: widget.textColor,
                messageTextStyle: widget.messageTextStyle,
                myMessageBackGrounColor: widget.myMessageBackGrounColor,
                otherMessageBackGrounColor: widget.otherMessageBackGrounColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
