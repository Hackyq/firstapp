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
                buildScolarship(),
                const SizedBox(
                  height: 0,
                ),
                Expanded(
                    child: GridView(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: <Widget>[
                      buildApplyforScolarship(),
                      buildApplicationstatus(),
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

Widget buildScolarship() {
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

Widget buildApplyforScolarship() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
    ),
    child: const Text(
      "Member",
      style: TextStyle(
        color: Color(0xff324068),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget buildApplicationstatus() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
    ),
    child: const Text(
      "Member",
      style: TextStyle(
        color: Color(0xff324068),
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
