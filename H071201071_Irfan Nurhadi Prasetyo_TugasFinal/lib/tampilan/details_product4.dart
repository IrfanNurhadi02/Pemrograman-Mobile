import 'package:flutter/material.dart';
import 'package:myproject/data/data4.dart';

class DetailsProduct4 extends StatefulWidget {
  final ShoeData4 shoeData4;
  const DetailsProduct4({Key? key, required this.shoeData4}) : super(key: key);

  @override
  State<DetailsProduct4> createState() => _DetailsProduct4State();
}

class _DetailsProduct4State extends State<DetailsProduct4> {
  final List<String> _sizeTags = ["39", "40", "41", "42", "43", "44", "45"];

  int _selectedSize = 0;

  Widget _buildSizeTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = index;
        });
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: _selectedSize == index ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            _sizeTags[index],
            style: TextStyle(
                color: _selectedSize != index ? Colors.black : Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset(widget.shoeData4.image),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.shoeData4.name,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.shoeData4.price,
                  style: const TextStyle(fontFamily: 'Poppins', fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Size",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _sizeTags.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          _buildSizeTags(index),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Description",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.shoeData4.description,
                  style: const TextStyle(fontSize: 15),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      width: 210,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.all(10)),
                        onPressed: () {},
                        child: const Text(
                          "Add To Bag",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                      ),
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
