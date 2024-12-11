import 'package:flutter/material.dart';
import '../../../core/model/message.dart';
import 'messages_list_view.dart';
import 'scroll_down_chat.dart';
import 'send_field.dart';
import 'unread_message_count.dart';

class ChatScreenBody extends StatefulWidget {
  final List<Message> messages;
  final ScrollController scrollController;
  final Color activeSendIconColor;
  final int unreadMsgRealTime;
  final String textHint;
  final Color fillColorTextFeild;
  final Color textColor;
  final TextStyle? messageTextStyle;
  final Color myMessageBackGrounColor;
  final Color otherMessageBackGrounColor;
  final void Function(String message) onSubmitMessage;

  const ChatScreenBody(
      {super.key,
      required this.messages,
      required this.scrollController,
      required this.onSubmitMessage,
      required this.textHint,
      required this.fillColorTextFeild ,
      required this.textColor,
      this.unreadMsgRealTime = 0,
      this.messageTextStyle,
      required this.otherMessageBackGrounColor,
      required this.myMessageBackGrounColor,
      required this.activeSendIconColor});
  @override
  State<ChatScreenBody> createState() => _ChatScreenBodyState();
}

class _ChatScreenBodyState extends State<ChatScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(
        children: [
          Column(
            children: [
              MessagesListView(
                messages: widget.messages,
                scrollController: widget.scrollController,
                messageTextStyle: widget.messageTextStyle,
                myMessageBackGrounColor: widget.myMessageBackGrounColor,
                otherMessageBackGrounColor: widget.otherMessageBackGrounColor,
              ),
              // button to send message
              SendField(
                onSubmitMessage: widget.onSubmitMessage,
                activeSendIconColor: widget.activeSendIconColor,
                textHint: widget.textHint,
                fillColorTextFeild: widget.fillColorTextFeild,
                textColor: widget.textColor,
              ),
            ],
          ),
          ScrollDownChatIcon(
            scrollController: widget.scrollController,
          ),
          if (widget.unreadMsgRealTime > 0)
            PositionedDirectional(
                end: 25,
                bottom: 150,
                child: UnreadMessagesCountComponent(
                    unreadMessagesCount: widget.unreadMsgRealTime))
        ],
      ),
    );
  }
}
