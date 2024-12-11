import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String otherUserName;
  final String otherUserImage;
  final TextStyle? userNameStyle;
  final Color chatAppBackgroundColor;
  const ChatAppBar(
      {super.key,
      this.otherUserName = "",
      this.otherUserImage = "",
      this.userNameStyle,
      required this.chatAppBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return otherUserName.isNotEmpty || otherUserImage.isNotEmpty

        //   backgroundColor: chatAppBackgroundColor,
        // leading is circle avatar
        //  leadingWidth: 100.w,
        ? Container(
            decoration: BoxDecoration(color: chatAppBackgroundColor),
            child: Row(
              children: [
              const  SizedBox(width: 15),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:const Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.black)),
                if (otherUserImage.isNotEmpty &&
                    (otherUserImage.startsWith('http') ||
                        otherUserImage.startsWith('https')))
                  Padding(
                    padding:const EdgeInsetsDirectional.only(
                      start: 15,
                      top: 10,
                      bottom: 10,
                    ),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Image.network(
                                  otherUserImage,
                                  fit: BoxFit.cover,
                                ),
                              );
                            });
                      },
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(otherUserImage),
                      ),
                    ),
                  ),
              const  SizedBox(width: 10),
                if (otherUserName.isNotEmpty)
                  Container(
                    margin:const EdgeInsetsDirectional.only(start: 10),
                    child: Text(
                      otherUserName,
                      style: userNameStyle ??
                        const  TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
          )
        : const SizedBox();
  }

  @override
  Size get preferredSize =>const Size.fromHeight(80);
}
