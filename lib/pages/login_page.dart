import 'package:flutter/material.dart';
import 'package:shonglap/components/my_button.dart';
import 'package:shonglap/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                // logo
                const Icon(
                  Icons.chat,
                  size: 80,
                ),
                const SizedBox(
                  height: 50,
                ),

                // welcome back message
                Text(
                  "Welcome to Shonglap. Let's Connect!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // email textfield
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),

                // signin button
                MyButton(
                  onTap: () {},
                  text: 'Sign In',
                ),

                // not a user? register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
