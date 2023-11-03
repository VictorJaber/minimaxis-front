import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_satshack/core/styles/colors.dart';
import 'package:hackathon_satshack/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class UserQuestionWidget extends StatelessWidget {
  final String question;

  const UserQuestionWidget({required this.question, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              color: AppColors.onPrimary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              question,
              style: GoogleFonts.poppins(
                  textStyle: styleModifier.textSmallCommonBlack),
            ),
          ),
        ),
        const SizedBox(width: 12),
        ClipOval(
          child: Material(
            color: AppColors.primary,
            child: const SizedBox(
              height: 32,
              width: 32,
              child: Center(
                child: Text(
                  "U",
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
