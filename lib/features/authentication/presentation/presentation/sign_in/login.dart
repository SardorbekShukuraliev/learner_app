import 'package:flutter/material.dart';
import 'package:learnig_app/core/strings/strings.dart';
import '../../../../../core/color/app_color.dart';
import '../../../../../core/responsive/app_responsive.dart';
import '../../../../../core/route/route_names.dart';
import '../../../../../core/textstyle/app_text_style.dart';
import '../../widget/button_continue_with.dart';
import '../../widget/my_elevated_button.dart';
import '../../widget/my_textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isRemember = false;
  bool observePassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appWidth(5)),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.loginToAccount,
                  style: AppTextStyles.heading1(),
                ),
                SizedBox(height: appHeight(3)),
                const MyTextField(texts: AppStrings.email, icon: Icon(Icons.email)),
                SizedBox(height: appHeight(2)),
                MyTextField(
                  texts: AppStrings.password,
                  obscureText: observePassword,
                  icon: const Icon(Icons.lock),
                  element: IconButton(
                    onPressed: () {
                      setState(() {
                        observePassword = !observePassword;
                      });
                    },
                    icon: observePassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
                SizedBox(height: appHeight(2)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.rememberMe,
                      style: AppTextStyles.bodyMediumSemiBold(color: AppColor.greyScale500),
                    ),
                    Checkbox(
                      activeColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      value: _isRemember,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isRemember = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: appHeight(3)),
                MyElevatedButton(text: AppStrings.signIn, onPressed: () {}),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.forgotPasswordPage);
                  },
                  child: Text(
                    AppStrings.forgotPassword,
                    style: AppTextStyles.bodyLargeSemiBold(color: AppColor.blue),
                  ),
                ),
                SizedBox(height: appHeight(2)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(thickness: 1, color: AppColor.greyScale500),
                    ),
                    SizedBox(width: appWidth(2)),
                    Text(
                      AppStrings.orWith,
                      style: AppTextStyles.bodyXLargeSemiBold(color: AppColor.greyScale500),
                    ),
                    const Expanded(
                      child: Divider(thickness: 1, color: AppColor.greyScale500),
                    ),
                  ],
                ),
                SizedBox(height: appHeight(2)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonContinueWith(
                      icon: Icon(
                        Icons.facebook_outlined,
                        size: appWidth(8),
                        color: AppColor.blue,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: appWidth(5)),
                    ButtonContinueWith(
                      icon: Image.asset(
                        "assets/images/google.png",
                        width: appWidth(8),
                        height: appWidth(8),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: appWidth(5)),
                    ButtonContinueWith(
                      icon: Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: appWidth(8),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: appHeight(3)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppStrings.haveNotAccount,
                      style: TextStyle(color: AppColor.greyScale500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.signUp);
                      },
                      child: Text(
                        AppStrings.signUp,
                        style: TextStyle(color: AppColor.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}