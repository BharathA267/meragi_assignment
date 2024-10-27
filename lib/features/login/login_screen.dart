import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meragi/core/design_system/custom_widgets/custom_app_bar.dart';
import 'package:meragi/core/design_system/custom_widgets/custom_primary_button.dart';
import 'package:meragi/core/design_system/strings.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/design_system/colors.dart';
import '../../core/design_system/custom_widgets/account_card.dart';
import '../../core/design_system/custom_widgets/custom_secondary_button.dart';
import '../../core/design_system/custom_widgets/custom_text_field.dart';
import '../../core/design_system/styles.dart';
import '../../gen/assets.gen.dart';
import 'auth_provider.dart';

import 'package:encrypt/encrypt.dart' as encrypt;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;

  Future<void> _Login(AuthProvider authProvider) async {
    final email = emailController.text;
    final password = passwordController.text;

    final key =
        encrypt.Key.fromUtf8('32-character-unique-key'); // Must be 32 bytes
    final iv = encrypt.IV.fromLength(16); // 16 bytes for AES

    // Encrypt the password
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    final encryptedPassword = encrypter.encrypt(password, iv: iv).base64;

    try {
      await authProvider.login(email, encryptedPassword);
      if (authProvider.authResponse != null) {
        //Todo : naviagte to home
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            'authToken', authProvider.authResponse!.accessToken);
        await prefs.setString(
            'userId', authProvider.authResponse!.userId.toString());
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Login failed. Please try again.")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              return mobileScaffold(authProvider);
            } else {
              return webScaffold(authProvider);
            }
          },
        );
      },
    );
  }

  Widget mobileScaffold(AuthProvider authProvider) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              joinOurCommunityToday,
              style: AppTextStyles.headingTextStyle,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 2),
            const Text(
              getConnected,
              style: AppTextStyles.secondaryTextStyle,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 16),
            CustomPrimaryButton(
              text: signUp,
              onPressed: () {
                // Handle SignUP
              },
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(loginWith, style: AppTextStyles.secondaryTextStyle),
            ),
            const SizedBox(height: 12),
            loginOptions(),
            const SizedBox(height: 32),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(title: email, controller: emailController),
                  const SizedBox(height: 16),
                  CustomTextField(
                    title: password,
                    controller: passwordController,
                    obscureText: obscureText,
                    suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                          color: Colours.textColour,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        }),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // Handle forgot password action
                        },
                        child: const Text(
                          forgotPassword,
                          style: AppTextStyles.primaryTextStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomPrimaryButton(
                    text: login,
                    onPressed: () {
                      _Login(authProvider);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget webScaffold(AuthProvider authProvider) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 48),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(Assets.icons.webLogo.path),
                const SizedBox(width: 8),
                const Text(logo, style: AppTextStyles.webLogoTextStyle),
                const Spacer(),
                Flexible(
                  flex: 2,
                  child: CustomTextField(
                    title: email,
                    controller: emailController,
                  ),
                ),
                const SizedBox(width: 32),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        title: password,
                        controller: passwordController,
                        obscureText: obscureText,
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colours.textColour,
                          ),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: () {
                          // Handle forgot password action
                        },
                        child: const Text(
                          forgotPassword,
                          style: AppTextStyles.primaryTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                Flexible(
                  flex: 1,
                  child: CustomPrimaryButton(
                    text: login,
                    onPressed: () {
                      _Login(authProvider);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 64),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                welcomeContainer(),
                const Spacer(),
                Flexible(
                  flex: 1,
                  child: signUpContainer(),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          gradient: Colours.primaryGradient,
        ),
      ),
    );
  }

  Widget welcomeContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(welcome, style: AppTextStyles.webHeadingTextStyle),
        const SizedBox(height: 8),
        const Text(joinUs, style: AppTextStyles.webTextStyle),
        const SizedBox(height: 16),
        const Text(recentLogins, style: AppTextStyles.webSecondaryTextStyle),
        const SizedBox(height: 16),
        Row(
          children: [
            AccountCard(
              name: name1,
              image: SvgPicture.asset(Assets.images.image1.path),
            ),
            const SizedBox(width: 8),
            AccountCard(
              name: name2,
              image: SvgPicture.asset(Assets.images.image2.path),
            ),
            const SizedBox(width: 8),
            const AccountCard()
          ],
        ),
      ],
    );
  }

  Widget signUpContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          joinOurCommunityToday,
          style: AppTextStyles.headingTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          getConnected,
          style: AppTextStyles.secondaryTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        CustomPrimaryButton(
          text: signUp,
          onPressed: () {
            // Handle SignUP
          },
        ),
        const SizedBox(height: 12),
        const Center(
          child: Text(
            loginWith,
            style: AppTextStyles.secondaryTextStyle,
          ),
        ),
        const SizedBox(height: 12),
        loginOptions(),
      ],
    );
  }

  Widget loginOptions() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomSecondaryButton(
        text: 'Facebook',
        onPressed: () {
          //todo : FaceBook login
        },
      ),
      CustomSecondaryButton(
        text: 'Linked In',
        onPressed: () {
          //todo : Linked In login
        },
      ),
      CustomSecondaryButton(
        text: 'Google',
        onPressed: () {
          //todo : Google login
        },
      )
    ]);
  }
}
