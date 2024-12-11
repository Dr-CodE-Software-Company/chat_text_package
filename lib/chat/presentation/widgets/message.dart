import 'package:flutter/Material.dart';

import '../../../core/model/message.dart';
import '../../../core/utils/colors.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  final TextStyle? messageTextStyle;
  final Color myMessageBackGrounColor;
  final Color otherMessageBackGrounColor;
  const MessageItem(
      {super.key,
      required this.message,
      this.messageTextStyle,
      required this.myMessageBackGrounColor,
      required this.otherMessageBackGrounColor});

  @override
  Widget build(BuildContext context) {
    bool isMe = message.fromLoggedUser;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: isMe
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MessageBody(
                  messageBody: message.body,
                  isMe: isMe,
                  messageTextStyle: messageTextStyle,
                  myMessageBackGrounColor: myMessageBackGrounColor,
                  otherMessageBackGrounColor: otherMessageBackGrounColor,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 8,
                  ),
                  child: Text(message.createdAt,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: ColorsPackage.greyColor2)),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MessageBody(
                  messageBody: message.body,
                  isMe: isMe,
                  messageTextStyle: messageTextStyle,
                  myMessageBackGrounColor: myMessageBackGrounColor,
                  otherMessageBackGrounColor: otherMessageBackGrounColor,
                ),
                // add the date here
                Padding(
                  padding:const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Text(message.createdAt,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: ColorsPackage.greyColor2)),
                )
              ],
            ),
    );
  }
}

class MessageBody extends StatelessWidget {
  final String messageBody;
  final bool isMe;
  final Color myMessageBackGrounColor;
  final Color otherMessageBackGrounColor;
  final TextStyle? messageTextStyle;

  const MessageBody(
      {super.key,
      this.messageTextStyle,
      required this.messageBody,
      required this.isMe,
      required this.myMessageBackGrounColor,
      required this.otherMessageBackGrounColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isMe ? myMessageBackGrounColor : otherMessageBackGrounColor,
        borderRadius: BorderRadius.only(
          bottomLeft:const Radius.circular(12),
          bottomRight:const Radius.circular(12),
          topLeft: isMe ?const Radius.circular(12) : Radius.zero,
          topRight: isMe ? Radius.zero :const Radius.circular(12),
        ),
      ),
      padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      margin:const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        messageBody,
        style: messageTextStyle ??
            const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: ColorsPackage.whiteColor,
            ),
      ),
    );
  }
}
