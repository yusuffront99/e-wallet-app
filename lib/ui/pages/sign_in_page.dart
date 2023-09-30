import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/widgets/buttons.dart';
import 'package:e_wallet_app/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //  ==== TYPING INPUT SIGN IN
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // == email ...
                const CustomFormField(title: 'Email Address'),
                const SizedBox(
                  height: 16,
                ),
                // == password ...
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // == SIGN IN BUTTON
                CustomFilledButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                )
                // == SIGN IN BUTTON
              ],
            ),
          ),
          //  ==== TYPING INPUT SIGN IN

          // === CREATE NEW ACCOUNT
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Sign Up',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          ),
        ],
      ),
    );
  }
}
