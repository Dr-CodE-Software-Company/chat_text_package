import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/colors.dart';
import '../chat_bloc/chat_cubit.dart';
import '../chat_bloc/chat_states.dart';
import 'custom_text_form_field.dart';

class SendField extends StatelessWidget {
  final Color activeSendIconColor;
  final String textHint;
  final Color fillColorTextFeild;
  final Color textColor;

  final void Function(String message) onSubmitMessage;
  const SendField(
      {super.key,
      required this.activeSendIconColor,
      required this.textHint,
      required this.fillColorTextFeild,
      required this.textColor,
      required this.onSubmitMessage});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = ChatCubit.get(context);
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.send,
                    color: cubit.messageController.text == ""
                        ? ColorsPackage.greyColor2
                        : activeSendIconColor),
                onPressed: cubit.messageController.text == ""
                    ? null
                    : () {
                        String msg = cubit.messageController.text;
                        cubit.messageController.clear();
                        onSubmitMessage(msg);
                      },
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10),
                child: CustomTextFormField(
                  maxLines: 4,
                  controller: cubit.messageController,
                  textHint: textHint,
                  fillColorTextFeild: fillColorTextFeild,
                  keyboardType: TextInputType.multiline,
                  textColor: textColor,
                  textDirection: cubit.textDirection,
                  validator: (value) {
                    return null;
                  },
                  colorBorder: Colors.transparent,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
