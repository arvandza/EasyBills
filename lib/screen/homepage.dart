import 'package:flutter/material.dart';
import 'package:splitbill_app/logic/variable.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Balance',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                'IDR 9.000.000',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 100,
              width: size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listContent.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
