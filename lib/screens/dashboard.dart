import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = "/dashboard";
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD3d3d3),
      appBar: AppBar(
        titleSpacing: 10,
        leadingWidth: 80,
        shadowColor: Colors.white10,
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 25),
            icon: const Icon(
              Icons.notifications,
              color: Color(0xffF26D71),
            ),
            tooltip: 'notification',
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color(0xffD3d3d3),
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
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                builduserDetails(),
                const SizedBox(
                  height: 0,
                ),
                Expanded(
                    child: GridView(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 0,
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
              ])),
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xffD3d3d3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.work_outline_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget builduserDetails() {
  return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1,
            color: Colors.blueGrey,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Text(
              'NK',
              style: TextStyle(fontSize: 20, color: Colors.black),
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
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Host',
                  style: TextStyle(fontSize: 10),
                )
              ]),
        ],
      ));
}

Widget buildExams() {
  return Container(
    padding: const EdgeInsets.all(15),
    margin: EdgeInsets.symmetric(vertical: 20),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.library_books_rounded,
          color: Color(0xff686E7A),
          size: 30.0,
        ),
        Text(
          "Exams",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
}

Widget buildPay() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.payment,
          color: Color(0xff3ABD25),
          size: 30.0,
        ),
        Text(
          "Pay",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
}

Widget buildScholarships() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.school,
          color: Color(0xffB40F0F),
          size: 30.0,
        ),
        Text(
          "Scholarships",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
}

Widget buildExemptions() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.keyboard_double_arrow_up,
          color: Color(0xffB8BB29),
          size: 30.0,
        ),
        Text(
          "Exemptions",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
}

Widget buildFollowApp() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.add_to_home_screen,
          color: Color(0xff7967E7),
          size: 30.0,
        ),
        Text(
          "Follow Application",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
}

Widget buildEventPlan() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(49, 101, 103, 103),
          offset: Offset(
            5.0,
            5.0,
          ),
          blurRadius: 10.0,
          spreadRadius: 2.0,
        ), //BoxShadow
      ],
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF9FAFA),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Icon(
          Icons.edit_calendar,
          color: Color(0xff2E4490),
          size: 30.0,
        ),
        Text(
          "Event Planing",
          style: TextStyle(color: Color(0xff686E7A), fontSize: 15),
        ),
      ],
    ),
  );
}
