import 'package:flutter/material.dart';

class viewcart extends StatefulWidget {
  const viewcart({Key? key}) : super(key: key);

  @override
  State<viewcart> createState() => _viewcartState();
}

class _viewcartState extends State<viewcart> {
  void _showAddressBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Address 1'),
                onTap: () {
                  // Handle address selection
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Address 2'),
                onTap: () {
                  // Handle address selection
                  Navigator.pop(context);
                },
              ),
              // Add more addresses here if needed
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 20,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/paneer.png'),
                    radius: 30,
                  ),
                ),
                Text('Paneer Dum Biryani \n ₪100'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Hedrabaadi.png'),
                    radius: 30,
                  ),
                ),
                Text('Veg Hyderabadi Dum Biryani \n ₪120'),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text('+ Add more items'),
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                'Offer & Benefits',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white10,
                          ),
                        ),
                        hintText: 'YALLA40',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent,
                      ),
                      child: Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 15,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bill Details', style: TextStyle(fontSize: 25)),
                      Text(' item total '),
                      Text('SubTotal'),
                      Text('Delivery fee | 0.5 kms'),
                      Text('GST'),
                      Text('Item discount'),
                      Text('Total')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2 '),
                        Text('₪220'),
                        Text('₪10'),
                        Text('₪10'),
                        Text('₪40'),
                        Text('₪200'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: InkWell(
        onTap: _showAddressBottomSheet,
        child: Container(
          height: 60,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Select Address',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
