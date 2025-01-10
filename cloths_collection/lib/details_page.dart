import 'package:cloths_collection/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List size = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SvgPicture.asset("assets/svg/left arrow.svg"),
                const Spacer(),
                Text(
                  "Details",
                  style: GoogleFonts.imprima(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                SvgPicture.asset("assets/svg/Save.svg")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Image.asset(
                "assets/images/RBT.png",
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                Text(
                  "Premium \nTagerine Shirt",
                  style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image.asset(
                    "assets/images/btt.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image.asset("assets/images/btb.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset("assets/images/btg.png"),
                ),
              ],
            ),
            Text(
              "Size",
              style: GoogleFonts.imprima(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: size.length,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.all(5),
                              width: 60,
                              height: 50,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color.fromRGBO(13, 13, 14, 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    "${size[index]}",
                                    style: GoogleFonts.imprima(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1)),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              children: [
                Text(
                  "\$257.85",
                  style: GoogleFonts.imprima(
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return CartPage();
                    }));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 122, 0, 1),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Add To Cart"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
