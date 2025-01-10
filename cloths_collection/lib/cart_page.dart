import 'package:cloths_collection/checkOut_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/svg/left arrow.svg"),
              const Spacer(),
              Text(
                "cart",
                style: GoogleFonts.imprima(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Image.asset("assets/images/btpic.png"),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Premium\nTagerine Shirt",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Yellow",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Text(
                        "Size 8",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$257.85",
                            style: GoogleFonts.imprima(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            "1x",
                            style: GoogleFonts.imprima(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Image.asset("assets/images/sidePic.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Premium\nTagerine Shirt",
                            style: GoogleFonts.imprima(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 46,
                          ),
                          Container(
                            width: 80,
                            height: 50,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: Color.fromRGBO(255, 122, 0, 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/images/heart copy.png"),
                                Image.asset("assets/images/Shape.png"),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Yellow",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Text(
                        "Size 8",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(121, 119, 128, 1)),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$257.85",
                            style: GoogleFonts.imprima(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          Text(
                            "1x",
                            style: GoogleFonts.imprima(
                              fontSize: 26,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: const Divider(
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Items (3)",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                Text(
                  "\$116.00",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Standard Delivery",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                Text(
                  "\$12.00",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                Text(
                  "\$126.00",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(13, 13, 14, 1)),
                )
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CheckoutPage();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 190,
              height: 62,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Color.fromRGBO(255, 122, 0, 1)),
              child: Center(
                child: Text(
                  "Checkout Now",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
