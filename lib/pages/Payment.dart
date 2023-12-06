import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = "Dropdown Button";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Payment",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        leading: BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Container(
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(colors: [
                    Colors.green,
                    Colors.green.shade800,
                    Colors.green.shade900
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "credit card",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "**** **** **** 7890",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "username",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Image(
                            image: AssetImage("assets/images/mastercard.png"),
                            height: 20,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image(
                            image: AssetImage("assets/images/bkash.png"),
                            height: 30,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/nagad.png"),
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/rocket.png"),
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/visa.png"),
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image(
                            image: AssetImage("assets/images/mastercard.png"),
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Offers",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      TextButton(onPressed: () {}, child: Text("Add a code"))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 20,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  DropdownButton<String>(
                    // Step 3.
                    value: dropdownValue,
                    // Step 4.
                    items: <String>[
                      'Dropdown Button',
                      'Dhaka',
                      'Chittagong',
                      'Sylhet',
                      'Rajshahi',
                      'Cumilla'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text("\৳000.00",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () {},
              height: 50,
              elevation: 0,
              splashColor: Colors.yellow[700],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.yellow[800],
              child: Center(
                  child: Container(
                child: Text(
                  "Pay Now",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
