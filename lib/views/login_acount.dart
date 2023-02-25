import 'package:flutter/material.dart';
import '../components/size_config.dart';
import '../components/themes.dart';
import 'home_screen.dart';
import '../components/size_config.dart';

class LoginAcount extends StatefulWidget {
  const LoginAcount({super.key});

  @override
  State<LoginAcount> createState() => _LoginAcountState();
}

class _LoginAcountState extends State<LoginAcount> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            //vai voltar para a tela onboarding_screen
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(),
    );
  }
}
