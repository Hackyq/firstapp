import 'package:firstapp/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  static const String routeName = "/login";

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffD2E0EC),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: Stack(children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("assets/images/logo.png"),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'hey \nlogIn here',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      buildEmail(),
                      const SizedBox(
                        height: 10,
                      ),
                      buildPassword(),
                      const SizedBox(
                        height: 10,
                      ),
                      buildForgotpwd(),
                      const SizedBox(
                        height: 40,
                      ),
                      buildLoginbtn(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Expanded(
                                child: Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            )),
                            Text(
                              'or',
                              style: TextStyle(fontSize: 15),
                            ),
                            Expanded(
                                child: Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            )),
                          ]),
                      buildRegisterbtn(),
                    
                    ]),
              )
            ])));
  
  }
  
Widget buildEmail() {
  return TextFormField(
    decoration: const InputDecoration(
      prefixIcon: Icon(
        Icons.person,
        size: 15,
        color: Colors.black,
      ),
      hintText: 'Username',
    ),
  );
}

Widget buildPassword() {
  return TextFormField(
    obscureText: true,
    decoration: const InputDecoration(
      prefixIcon: Icon(
        Icons.lock,
        size: 15,
        color: Colors.black,
      ),
      hintText: 'password',
    ),
  );
}

Widget buildForgotpwd() {
  return Container(
    alignment: Alignment.centerRight,
    child: const Text('forgot password?',
        style: TextStyle(
          color: Color(0xff101E46),
          fontWeight: FontWeight.w500,
          fontSize: 10,
        )),
  );
}

 Widget buildLoginbtn() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: ElevatedButton(
        onPressed: () {
           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Dashboard()
                                
                                ),
                          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
              color: Color(0xff324068),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        )),
  );
}

Widget buildRegisterbtn() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        ),
        child: const Text(
          'Register',
          style: TextStyle(
              color: Color(0xff324068),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        )),
  );
}
}
