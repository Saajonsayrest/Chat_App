import 'package:chat_app/app/login_page.dart';
import 'package:chat_app/app/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginRegisterScreen extends HookWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useState<bool>(true);
    void togglePages() {
      state.value = !state.value;
    }

    if (state.value) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
