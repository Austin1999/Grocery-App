import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Icon(Icons.account_balance_wallet),
          title: Text('Add Money to wallet'),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xFF7653A3),
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.account_balance_wallet, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: SingleChildScrollView(
          child: Container(
            height: size.height * 0.78,
            child: Column(
              children: [
                Container(
                  color: Color(0xFFE5E5E5),
                  height: size.height * 0.12,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.35,
                        color: Color(0xFF7653A3),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '₹',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.height * 0.03),
                                ),
                                Spacer(),
                                Text(
                                  'Wallet Balance',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              '₹',
                              style: TextStyle(
                                  color: Color(0xFF7653A3),
                                  fontSize: size.height * 0.04),
                            ),
                            Spacer(),
                            Text('Estimated amount to recharge')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  'Amount added to wallet',
                  style: TextStyle(
                    fontSize: size.width * 0.05,
                    color: Color(0xFF7653A3),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '0',
                      hintStyle: TextStyle(
                        color: Color(0xFF7653A3),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xFF7653A3),
                      fontSize: size.width * 0.05,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      textColor: Color(0xFF7653A3),
                      child: Text(
                        '+ ₹100',
                      ),
                      shape: Border.all(color: Color(0xFF7653A3)),
                    ),
                    FlatButton(
                      onPressed: () {},
                      textColor: Color(0xFF7653A3),
                      child: Text('+ ₹500'),
                      shape: Border.all(color: Color(0xFF7653A3)),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('+ ₹1000'),
                      textColor: Color(0xFF7653A3),
                      shape: Border.all(color: Color(0xFF7653A3)),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.31,
                          child: Divider(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Recharge Offers',
                            style: TextStyle(
                              color: Color(0xFF7653A3),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.29,
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width,
                    child: FlatButton(
                      color: Color(0xFF9B63DC),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Add Money',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
