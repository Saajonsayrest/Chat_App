import 'package:chat_app/extensions/padding.dart';
import 'package:chat_app/extensions/styles.dart';
import 'package:chat_app/widgets/my_button.dart';
import 'package:chat_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulHookWidget {
  const RegisterPage({super.key, this.onTap});

  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = useTextEditingController();
    var passwordController = useTextEditingController();
    var confirmPasswordController = useTextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message_outlined,
                  size: 150.h,
                ).pB(40.h),
                Text(
                  "Let's create an account for you!",
                  style: AppTextStyle.mediumText14,
                ).pB(30.h),
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                ).pB(10.h).pX(20.w),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                ).pB(10.h).pX(20.w),
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                ).pX(20.w),
                MyButton(onTap: () {}, text: 'Sign In').pad(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: AppTextStyle.regularText14,
                    ).pR(8),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login Now',
                        style: AppTextStyle.boldText14,
                      ),
                    )
                  ],
                ).pT(20.h).pB(30.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
