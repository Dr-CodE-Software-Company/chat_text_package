
# ChatText
![chat5](https://github.com/user-attachments/assets/db8f1c29-fe4a-47fd-9c75-dc4bce140da4)


A Flutter package for sending text messages, featuring a "scroll to bottom" button and real-time unread message count display.

### Created by mohamed abd elgwad

## Installing

1.  Add dependency to `pubspec.yaml`

```dart
dependencies:
  chat_text_package: <latest-version>
```

2.  Import the package
```dart
import 'package:chat_text_package/chat_text_package.dart';
```


3. Adding a `ChatScreen` widget.
```dart
ChatScreen(
                  messages: messages,
                  scrollController: scrollController,
                  otherUserName: 'Mohamed Abd El.Gwad',
                  textHint: 'Enter your message',
                  otherUserImage:
                      'https://www.euroschoolindia.com/wp-content/uploads/2023/08/cartoons-for-kids.jpg',
                  onSubmitMessage: (msg) {
                    messages.insert(
                        0,
                        Message(
                            id: 1,
                            body: msg,
                            fromLoggedUser: true,
                            createdAt: '2024-12-11 03:45 PM'));
                    setState(() {});
                  })
```

4. Adding a messageList with `Message` class.
```dart
List<Message> messageList = [
  Message(
        id: 1,
        body: 'messsage',
        fromLoggedUser: false,
        createdAt: '2024-12-11 03:45 PM')),
   Message(
        id: 2,
        body: 'messsage',
        fromLoggedUser: true,
        createdAt: '2024-12-11 03:45 PM'),
];
```
5. Adding a ScrollController to ChatScreen for pagination and scroll to bottom.
```dart
ScrollController scrollController = ScrollController();
ChatScreen(
scrollController: scrollController)
```
6. Adding a `onSubmitMessage` :
   When you press the send message button, this function is called.
```dart
 onSubmitMessage: (String msg) {
        messages.insert(
          0,
          Message(
              id: 1,
              body: msg,
              fromLoggedUser: true,
              createdAt: '2024-12-11 03:45 PM'));
      setState(() {});
    };  
}
```

7. Adding an appbar :
if you need to add the default appBar to ChatScreen , you must add otherUserName, otherUserImage, or both.
```dart
ChatScreen(
  otherUserName: 'Mohamed Abd El.Gwad',
  otherUserImage:
      'https://www.euroschoolindia.com/wp-content/uploads/2023/08/cartoons-for-kids.jpg',                
)
```
if you need use custom appBar , don't add otherUserName or otherUserImage

8. If you want to display the number of unread messages when a real time message arrives and chat is scrolling up.

```dart
int unreadMsgRealTime =0;
ChatScreen(            
unreadMsgRealTime : unreadMsgRealTime                          
 )
``` 

## Main Contributors

<table>
  <tr>
    <td align="center"><a href="https://wa.me/+201123283776"><img src="https://scontent.fcai19-5.fna.fbcdn.net/v/t39.30808-6/450868823_2711506369011803_9116220826602042738_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeHXbDg8r-AmnTSpDz2YnvtzkdXxM35lGnqR1fEzfmUaen7ST3YC6ohozLE6zA4IG2sRVZzLCLtOc8WHkkVG8ioY&_nc_ohc=U0rPp5wcCAMQ7kNvgEuKYCb&_nc_zt=23&_nc_ht=scontent.fcai19-5.fna&_nc_gid=A83Rg1iLxUeqfSiQNdb4aba&oh=00_AYDeDqxWwYzjeDnuWLFHsUCMTqndqimMpgNdWJpwoqZ6rQ&oe=675F6EB2" width="150px;" alt=""/><br /><sub><b>Mohamed abd elgwad</b></sub></a></td>
    <td align="center"><a href="https://wa.me/+201099523956"><img src="https://i.ibb.co/N2JML27/photo-5967550049690961453-y.jpg" width="100px;" alt=""/><br /><sub><b>Ahmed fayek</b></sub></a></td>
    

  </tr>
</table>
<br/>
