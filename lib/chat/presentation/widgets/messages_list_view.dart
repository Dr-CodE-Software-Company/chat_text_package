import 'package:flutter/Material.dart';

import '../../../core/model/message.dart';
import 'message.dart';

class MessagesListView extends StatelessWidget {
  final List<Message> messages;
  final ScrollController? scrollController;
  final TextStyle? messageTextStyle;
  final Color myMessageBackGrounColor;
  final Color otherMessageBackGrounColor;
  const MessagesListView(
      {super.key,
      required this.messages,
      this.scrollController,
      this.messageTextStyle,
     required this.myMessageBackGrounColor ,
     required this.otherMessageBackGrounColor
      });
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      controller: scrollController,
      reverse: true,
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return MessageItem(
            message: messages[index], messageTextStyle: messageTextStyle,
            myMessageBackGrounColor: myMessageBackGrounColor,
            otherMessageBackGrounColor: otherMessageBackGrounColor,
            );
      },
    ));
  }
}
