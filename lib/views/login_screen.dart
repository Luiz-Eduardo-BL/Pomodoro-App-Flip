import 'package:flutter/material.dart';
import '../components/size_config.dart';
import '../components/themes.dart';
import 'login_acount.dart';
import 'registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme();
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 40,
              child: const Image(
                image: AssetImage("assets/images/relogio.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: SizeConfig.blockSizeVertical! * 6,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(24, 26, 32, 0.24),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Image(
                            image: AssetImage("assets/images/google_logo.png"),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: SizeConfig.blockSizeVertical! * 6,
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(24, 26, 32, 0.24),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Image(
                            image:
                                AssetImage("assets/images/facebook_logo.png"),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Text(
                          "Login with Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ]),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: SizeConfig.blockSizeVertical! * 6,
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(24, 26, 32, 0.24),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Image(
                            image:
                                AssetImage("assets/images/instagram_logo.png"),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Text(
                          "Login with Instagram",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ]),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: SizeConfig.blockSizeVertical! * 6,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "OU",
                        style: TextStyle(),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: SizeConfig.blockSizeVertical! * 6,
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(218, 40, 40, 0.235),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ]),
                  onPressed: () {
                    Navigator.pushNamed(context, 'registration_screen');
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Não tem uma conta?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    child: const Text(
                      "Cadastre-se",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 60, 152, 228),
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      //vai me levar para registration_screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
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
}
