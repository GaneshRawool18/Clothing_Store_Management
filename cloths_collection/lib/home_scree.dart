import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data = [
    "All",
    "Men",
    "Women",
    "Kids",
    "Other",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Row(
              children: [
                Image.asset("assets/images/Menu.png"),
                const Spacer(),
                Image.asset("assets/images/cirLin.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Text("Explore",
                style: GoogleFonts.imprima(
                    fontSize: 36, fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text("Best trendy collection!",
                style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1))),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 20,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color.fromRGBO(255, 122, 0, 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(data[index]),
                              )),
                        ),
                      )
                    ],
                  );
                }),
          ),
          
          ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [

      // ],),
    );
  }
}
