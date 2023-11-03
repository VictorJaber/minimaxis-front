import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_satshack/core/extensions/build_context_utils.dart';
import 'package:hackathon_satshack/core/styles/colors.dart';
import 'package:hackathon_satshack/core/styles/text_styles.dart';
import 'package:hackathon_satshack/module/chat/infra/model/question_answer.dart';
import 'package:flutter/material.dart';

class FlowChartScreen extends StatefulWidget {
  const FlowChartScreen({Key? key}) : super(key: key);

  @override
  State<FlowChartScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<FlowChartScreen> {
  String? answer;
  final List<QuestionAnswer> questionAnswers = [];

  late ScrollController scrollController;

  @override
  void dispose() {
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
                      textStyle: styleModifier.textDefaultBlack)),
              Text(
                "Active 1 people",
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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Modular.to.navigate('/');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 111,
                      height: 38,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE8E8E8)),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      child: Text(
                        "Message",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 111,
                      height: 38,
                      decoration: ShapeDecoration(
                        color: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE8E8E8)),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      child: Text(
                        "Flow chart",
                        style: styleModifier.textSmallCommonBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: context.mediaWidth * 0.8,
              height: context.mediaHeight * 0.7,
              child: Image.asset('assets/flow.jpg'),
              )
          ],
        ),
      ),
    );
  }
}
