import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:virtual_bank/util/my_button.dart';
import 'package:virtual_bank/util/my_card.dart';
import 'package:virtual_bank/util/my_list_tittle.dart';
import 'package:virtual_bank/util/my_newaccount.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // pagecontroller
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      // backgroundColor: const Color(0xff005D86),
      backgroundColor: const Color(0xff024466),
      // floatingActionButton: SizedBox(
      //   height: 70,
      //   width: 70,
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     shape: const CircleBorder(),
      //     backgroundColor: Colors.pink,
      //     child: const Icon(
      //       Icons.monetization_on,
      //       color: Colors.white,
      //       size: 40,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // floatingActionButton: _buildFloating(),
      body: _buildBody(),
      // bottomNavigationBar: _buildBotton(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff024466),
      title: _buildMenu(),
    );
  }

  Widget _buildMenu() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(children: [
          // appbar
          const SizedBox(height: 15),
          Padding(      
            padding: const EdgeInsets.symmetric(horizontal: 30.0),     
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/user.png"),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          const Text(
                            "Hello, Chanthou!",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text("View Profile >",
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                      fontSize: 15
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          // cards
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                    balance: 8228,
                    cardNumber: "**** **** **** 1234",
                    exiryMonth: 04,
                    expiryYear: 2025,
                    color: Colors.indigo[500]),
                MyCard(
                    balance: 1500.50,
                    cardNumber: "**** **** **** 5678",
                    exiryMonth: 02,
                    expiryYear: 2023,
                    color: Colors.indigo.withOpacity(0.5)),
                MyCard(
                    balance: 1000.00,
                    cardNumber: "**** **** **** 9012",
                    exiryMonth: 08,
                    expiryYear: 2024,
                    color: Colors.indigo[900]),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.green,
            ),
          ),

          // new account + schedules

          const SizedBox(height: 30),
          //3 button -> send + pay + bills
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            //  padding: EdgeInsets.all(0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // send button
                  children: [
                    // icon)
                    MyButton(
                        iconImagePath: "lib/icons/account.png",
                        buttonText: "Account"),
                    MyButton(
                        iconImagePath: "lib/icons/card.png",
                        buttonText: "Cards"),
                    MyButton(
                        iconImagePath: "lib/icons/pay.png", 
                        buttonText: "Payments"
                    ),

                    // SizedBox(height: 25,),
                    // Image.asset('lib/icons/bull.png')
                  ],
                  // pay button

                  // bills button
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // send button
                  children: [
                    // icon)
                    MyButton(
                        iconImagePath: "lib/icons/scan.png",
                        buttonText: "ABA Scan"),
                    MyButton(
                        iconImagePath: "lib/icons/fav.png",
                        buttonText: "Favorites"),
                    MyButton(
                        iconImagePath: "lib/icons/transfer.png", 
                        buttonText: "Transfers"
                    ),

                    // SizedBox(height: 25,),
                    // Image.asset('lib/icons/bull.png')
                  ],
                  // pay button
                  // bills button
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // send button
                  children: [
                    // icon)
                    MyButton(
                        iconImagePath: "lib/icons/goverment.png",
                        buttonText: "Goverment"),
                    MyButton(
                        iconImagePath: "lib/icons/ecash.png",
                        buttonText: "E-cash"),
                    MyButton(
                        iconImagePath: "lib/icons/service.png", 
                        buttonText: "Services"
                    ),

                    // SizedBox(height: 25,),
                    // Image.asset('lib/icons/bull.png')
                  ],
                  // pay button
                  // bills button
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  // SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center, // Center the buttons
                      children: [
                        MyNewaccount(
                          icon: Icons.account_box,
                          accountText: "New Account",
                          swidth: 160,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.schedule_send_outlined,
                          accountText: "Schedules",
                          swidth: 140,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.child_friendly_outlined,
                          accountText: "Invite Friend",
                          swidth: 154,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.lan_outlined,
                          accountText: "Loans",
                          swidth: 110,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.no_backpack_sharp,
                          accountText: "ABA Cashback",
                          swidth: 170,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.rate_review_outlined,
                          accountText: "Exchange Rate",
                          swidth: 170,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.home,
                          accountText: "Lovator",
                          swidth: 120,
                          sheight: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyNewaccount(
                          icon: Icons.check_box_outline_blank,
                          accountText: "Checkbook",
                          swidth: 150,
                          sheight: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // const SizedBox(width: 30),
          // column -> stats + transactions
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                // stattistics
                SizedBox(
                  height: 30,
                ),
                MyListTittle(
                    iconImagePath: "lib/icons/statistics.png",
                    titleSubtitle: "Statistics",
                    titleTitle: "Payment and Income"),
                SizedBox(
                  height: 25,
                ),
                MyListTittle(
                  iconImagePath: "lib/icons/transaction.png",
                  titleSubtitle: "Transactions",
                  titleTitle: "Transaction History",
                ),
                // transaction
              ],
            ),
          ),

          //
        ]),
      ),
    );
  }

  Widget _buildBotton() {
    return BottomAppBar(
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 35,
                color: Colors.pink[500],
              ),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 35,
                color: Colors.pink[500],
              ),
            )
          ],
        ),
      ),
    );
}

  _buildFloating() {
    SizedBox(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
    FloatingActionButtonLocation.centerDocked;
  }
}
