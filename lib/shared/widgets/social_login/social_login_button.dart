import 'package:flutter/material.dart';

import '/shared/themes/app_images.dart';
import '/shared/themes/app_text_styles.dart';
import '/shared/themes/app_colors.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 16),
                  Image.asset(AppImages.google),
                  SizedBox(width: 12),
                  Container(
                    width: 1,
                    height: 56,
                    color: AppColors.stroke,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Entrar com Google',
                    style: TextStyles.buttonGray,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
