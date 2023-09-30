import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: lightBackgroundColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 100,
                bottom: 100,
              ),
              height: 50,
              width: 155,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img_logo_light.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Verify Your\nAccount',
              style: blackTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/ic_upload.png',
                        width: 32,
                      ),
                    ),
                  ),
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage(
                  //         'assets/img_profile.png',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Passport / ID Card',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextButton(
              title: 'Skip for Now',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
