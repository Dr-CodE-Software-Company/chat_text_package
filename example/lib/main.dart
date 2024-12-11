import 'package:flutter/material.dart';
import 'package:chat_text_package/chat_text_package.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreenExample(),
    );
  }
}
class ChatScreenExample extends StatefulWidget {
  const ChatScreenExample({super.key});
  @override
  State<ChatScreenExample> createState() => _ChatScreenExampleState();
}

class _ChatScreenExampleState extends State<ChatScreenExample> {
  List<Message> messages = [
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: true, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
    Message(id: 1, body: 'messsage', fromLoggedUser: false, createdAt: '20:00'),
  ];
  late ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
            scrollController = ScrollController();
              return ChatScreen( 
                  messages: messages,
                  scrollController: scrollController,
                  otherUserName: 'Mohamed Abd El.Gwad',
                  textHint: 'Enter your message',
                  otherUserImage:
                      'https://i1.sndcdn.com/artworks-WLuQqAGQXmbnwKVO-SG8o2Q-t500x500.jpg',
                  onSubmitMessage: (msg) {
                    messages.insert(
                        0,
                        Message(
                            id: 1,
                            body: msg,
                            fromLoggedUser: true,
                            createdAt: '20:00'));
                    setState(() {});
                  });
            }));
          },
          child: const Text('navigate to chat screen'),
        ),
      )),
    );
  }
}