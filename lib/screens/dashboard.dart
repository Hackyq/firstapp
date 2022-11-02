import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = "/dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffD2E0EC),
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Color(0xffF26D71),
              ),
              tooltip: 'notification',
              onPressed: () {},
            ),
          ],
          backgroundColor: const Color(0xffD2E0EC),
          leading: IconButton(
            color: const Color(0xff666666),
            icon: const Icon(Icons.menu_outlined),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          title: const Text(
            'SRMS',
            style: TextStyle(
              color: Color(0xff666666),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50,
                        child: Text(
                          'NK',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ), //Text
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Nii KpaKpo",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text('Host')
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 25,
                            mainAxisSpacing: 10,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: <Widget>[
                        buildExams(),
                        buildPay(),
                        buildScholarships(),
                        buildExemptions(),
                        buildFollowApp(),
                        buildEventPlan(),
                      ]))
                ])));
  }
}

Widget buildExams() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.library_books_rounded,
          color: Color(0xff686E7A),
          size: 40.0,
        ),
        Text(
          "Exams",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 20),
        ),
      ],
    ),
  );
}

Widget buildPay() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.money,
          color: Color(0xff3ABD25),
          size: 40.0,
        ),
        Text(
          "Pay",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 20),
        ),
      ],
    ),
  );
}

Widget buildScholarships() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.school,
          color: Color(0xffB40F0F),
          size: 40.0,
        ),
        Text(
          "Scholarships",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 20),
        ),
      ],
    ),
  );
}

Widget buildExemptions() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.keyboard_double_arrow_up,
          color: Color(0xffB8BB29),
          size: 40.0,
        ),
        Text(
          "Exemptions",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 20),
        ),
      ],
    ),
  );
}

Widget buildFollowApp() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.add_to_home_screen,
          color: Color(0xff7967E7),
          size: 40.0,
        ),
        Text(
          "Follow Application",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 20),
        ),
      ],
    ),
  );
}

Widget buildEventPlan() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.edit_calendar,
          color: Color(0xff2E4490),
          size: 40.0,
        ),
        Text(
          "Event Planing",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 20),
        ),
      ],
    ),
  );
}