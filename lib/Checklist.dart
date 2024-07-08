import 'package:flutter/material.dart';
class Checklist extends StatefulWidget {
  const Checklist({super.key});

  @override
  State<Checklist> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<Checklist> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Sunday",
    },
    {
      "id": 1,
      "value": false,
      "title": "Monday",
    },
    {
      "id": 2,
      "value": false,
      "title": "Tuesday",
    },
    {
      "id": 3,
      "value": false,
      "title": "Wednesday",
    },
    {
      "id": 4,
      "value": false,
      "title": "Thursday",
    },
    {
      "id": 5,
      "value": false,
      "title": "Friday",
    },
    {
      "id": 6,
      "value": false,
      "title": "Saturday",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:  Colors.blue
          ),

            child: Center(child: Text('check Box',style: TextStyle(backgroundColor: Colors.blue),))),
      ),

          body:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
            child: Column(
              children: [
                Column(
                  children: List.generate(
                    checkListItems.length,
                        (index) => CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        checkListItems[index]["title"],
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      value: checkListItems[index]["value"],
                      onChanged: (value) {
                        setState(() {
                          for (var element in checkListItems) {
                            element["value"] = false;
                          }
                          checkListItems[index]["value"] = value;
                          selected =
                          "${checkListItems[index]["id"]}, ${checkListItems[index]["title"]}, ${checkListItems[index]["value"]}";
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 100.0),
                Text(
                  selected,
                  style: const TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
class droplist extends StatefulWidget {
  const droplist({super.key});

  @override
  State<droplist> createState() => _droplistState();
}

class _droplistState extends State<droplist> {
  String dropdownValue = 'Dog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // Step 2.
            DropdownButton<String>(
              // Step 3.
              value: dropdownValue,
              // Step 4.
              items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 30),
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
            SizedBox(
              height: 20,
            ),
            Text(
              'Selected Value: $dropdownValue',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
class radiolist extends StatefulWidget {
  const radiolist({super.key});

  @override
  State<radiolist> createState() => _radiolistState();
}

class _radiolistState extends State<radiolist> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button in Flutter"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child:
        Column(
          children: [

            Text("What is your gender?", style: TextStyle(
                fontSize: 18
            ),),

            Divider(),

            RadioListTile(
              title: Text("Male"),
              value: "male",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            RadioListTile(
              title: Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class listbuilder extends StatefulWidget {
  const listbuilder({super.key});

  @override
  State<listbuilder> createState() => _listbuilderState();
}

class _listbuilderState extends State<listbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:  Colors.blue
            ),
            child: Center(child: const Text("ListView.builder",style: TextStyle(color: Colors.green),))),
      )),
      body: Center(
        child: Center(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return Container(

                  height: 100,
                  width:100 ,
                  color: Colors.yellow,

                  child: ListTile(
                    title: Text("List item $index"),
                      leading: const Icon(Icons.circle,size: 60,),
                      trailing: const Icon(Icons.camera_alt),

                        // style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                );
                    title: Text("List item $index");
              }),
        ),
      ),
    );
  }
}

class ProductBox extends StatefulWidget {
  const ProductBox({super.key});


  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  List<dynamic> _products = [];

  get json => null;
  get http => null;

  // get json => null;
  //
  // get http => null;

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    var url = Uri.parse('www.amazon.in/home/home');
    var response = await http.get(url);

    setState(() {
      if (response.statusCode == 200) {
        // Successful request
        var data = json.decode(response.body);
        _products = data['products'];
      } else {
        // Request failed
        _products = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          var product = _products[index];
          var thumbnailUrl = product['thumbnail'];
          var discount = product['discountPercentage'];

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: Image.network(
                          thumbnailUrl,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (discount != null)
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '${discount.toStringAsFixed(2)}% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListTile(
                    title: Text(
                      product['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price: \$${product['price']}'),
                        if (discount != null)
                          Text('Discount: ${discount.toStringAsFixed(2)}%'),
                        if (product['stock'] == 0)
                          Text(
                            'Out of Stock',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Grideview extends StatelessWidget {
   Grideview({super.key});
  final List<Map> myProducts =
  List.generate(100000, (index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(myProducts[index]["name"]),
              );
            }),
      ),
    );
  }
}












