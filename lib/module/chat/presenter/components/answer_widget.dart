import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_satshack/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_satshack/core/styles/text_styles.dart';

class AnswerWidget extends StatelessWidget {
  final String answer;

  const AnswerWidget({required this.answer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(
          child: SizedBox(
              height: 32,
              width: 32,
              child: Image.asset("assets/logo.png")),
        ),
        const SizedBox(width: 12),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: AppColors.onPrimary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              answer.toString().trim(),
              style: GoogleFonts.poppins(
                textStyle: styleModifier.textSmallCommonBlack
              )
            ),
          ),
        ),
      ],
    );
  }
}
