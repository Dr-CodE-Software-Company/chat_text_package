import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../chat_bloc/chat_cubit.dart';
import '../chat_bloc/chat_states.dart';

class ScrollDownChatIcon extends StatelessWidget {
  final ScrollController scrollController;

  const ScrollDownChatIcon({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
        buildWhen: (previous, current) =>
            current is ScrollUpState || current is ScrollBottomState,
        builder: (conext, state) {
          return ChatCubit.get(context).maxScroll
              ? PositionedDirectional(
                  end: 10,
                  bottom: 100,
                  child: IconButton(
                      icon: const CircleAvatar(
                        backgroundColor: ColorsPackage.darkGrey,
                        radius: 18,
                        child: Center(
                          child: Icon(Icons.arrow_downward_rounded,
                              color: ColorsPackage.whiteColor, size: 24),
                        ),
                      ),
                      onPressed: () {
                        ChatCubit.get(context).scrollToBottom(scrollController);
                      }),
                )
              : const SizedBox();
        });
  }
}
