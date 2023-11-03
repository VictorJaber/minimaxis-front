import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_satshack/core/extensions/build_context_utils.dart';
import 'package:hackathon_satshack/core/styles/colors.dart';
import 'package:hackathon_satshack/core/styles/text_styles.dart';
import 'package:hackathon_satshack/module/chat/infra/model/question_answer.dart';
import 'package:hackathon_satshack/module/chat/presenter/components/answer_widget.dart';
import 'package:hackathon_satshack/module/chat/presenter/components/loading_widget.dart';
import 'package:hackathon_satshack/module/chat/presenter/components/text_input_widget.dart';
import 'package:hackathon_satshack/module/chat/presenter/components/user_question_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? answer;
  final loadingNotifier = ValueNotifier<bool>(false);
  final List<QuestionAnswer> questionAnswers = [];

  late ScrollController scrollController;
  late TextEditingController inputQuestionController;

  @override
  void initState() {
    inputQuestionController = TextEditingController();
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    inputQuestionController.dispose();
    loadingNotifier.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      backgroundColor: AppColors.onPrimary,
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.white12,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Minimaxis",
                  style: GoogleFonts.poppins(
                    textStyle: styleModifier.textDefaultBlack
                  )),
              Text(
                "Active 35 000 people",
                style: GoogleFonts.poppins(
                    textStyle: styleModifier.textSmallCommonGreen),
              )
            ],
          ),
        ),
        leadingWidth: context.mediaWidth * 1.0,
        toolbarHeight: 80,
        backgroundColor: AppColors.onPrimary,
      ),
      body: SafeArea(
        child: Column(
          children: [
            buildChatList(),
            TextInputWidget(
              textController: inputQuestionController,
              onSubmitted: () => _sendMessage(),
            )
          ],
        ),
      ),
    );
  }

  Expanded buildChatList() {
    return Expanded(
      child: ListView.separated(
        controller: scrollController,
        separatorBuilder: (context, index) => const SizedBox(
          height: 12,
        ),
        physics: const BouncingScrollPhysics(),
        padding:
            const EdgeInsets.only(bottom: 20, left: 16, right: 16, top: 16),
        itemCount: questionAnswers.length,
        itemBuilder: (BuildContext context, int index) {
          final question = questionAnswers[index].question;
          final answer = questionAnswers[index].answer;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              UserQuestionWidget(question: question),
              const SizedBox(height: 16),
              ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, bool isLoading, __) {
                  if (answer.isEmpty && isLoading) {
                    _scrollToBottom();
                    return const LoadingWidget();
                  } else {
                    return AnswerWidget(
                      answer: answer.toString().trim(),
                    );
                  }
                },
              )
            ],
          );
        },
      ),
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      );
    });
  }

  void _sendMessage() async {
    final question = inputQuestionController.text;
    inputQuestionController.clear();
    loadingNotifier.value = true;

    questionAnswers.add(QuestionAnswer(
        question: "multsig 3x3",
        answer: StringBuffer("thresh(3,pk(key_1),pk(key_2),pk(key_3))")));

    setState(() => questionAnswers
        .add(QuestionAnswer(question: question, answer: StringBuffer())));
  }
}
