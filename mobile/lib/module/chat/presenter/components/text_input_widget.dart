import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_satshack/core/styles/colors.dart';
import 'package:hackathon_satshack/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController textController;
  final VoidCallback onSubmitted;

  const TextInputWidget(
      {required this.textController, required this.onSubmitted, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            margin: const EdgeInsets.only(bottom: 12, left: 12),
            decoration: BoxDecoration(
              color: AppColors.onPrimary,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12), bottom: Radius.circular(12)),
            ),
            child: TextFormField(
              controller: textController,
              minLines: 1,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              style: GoogleFonts.poppins(
                  textStyle: styleModifier.textSmallCommonBlack),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.tertiary,
                hintText: 'Type in...',
                hintStyle: GoogleFonts.poppins(
                    textStyle: styleModifier.textSmallCommonBlack),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 12.0),
              ),
              onFieldSubmitted: (_) => onSubmitted,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 48,
          height: 48,
          margin: const EdgeInsets.only(bottom: 12, right: 12),
          decoration:
              BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          child: GestureDetector(
            onTap: onSubmitted,
            child: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
