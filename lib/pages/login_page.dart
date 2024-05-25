import 'package:cronos_chat/components/my_button.dart';
import 'package:cronos_chat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(Icons.message,
              size: 60, color: Theme.of(context).colorScheme.primary),

          const SizedBox(height: 50),

          //welcome back
          Text(
            'Biembenido de vuelta!',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25),

          //email
          MyTextField(
            hintText: 'Email',
            obscureText: false,
            controller: _emailController,
          ),

          const SizedBox(height: 10),

          //password
          MyTextField(
            hintText: 'password',
            obscureText: true,
            controller: _passwordController,
          ),

          const SizedBox(height: 25),

          //login button
          MyButton(
            text: 'Iniciar sesion',
            onTap: login,
          ),

          const SizedBox(height: 25),

          //login
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "No tienes cuenta? ",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                "Registrate",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
