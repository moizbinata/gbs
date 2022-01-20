import 'package:flutter/material.dart';
import 'package:gbs/utils/constants.dart';
import 'package:gbs/utils/size_config.dart';
import 'package:gbs/utils/widgets.dart';
import 'package:gbs/views/home.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _dropdownValues = ["One", "Two", "Three", "Four", "Five"];
  String selVal = "One";
  int formType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("GBS Mobile"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.verified_user))
        ],
      ),
      drawer: navDrawer(context),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1),
                    ),
                    child: DropdownButton(
                      items: _dropdownValues
                          .map((value) => DropdownMenuItem(
                                child: Text(value),
                                value: value,
                              ))
                          .toList(),
                      onChanged: (String value) {
                        setState(() {
                          selVal = value;
                        });
                      },
                      isExpanded: true,
                      value: selVal,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                  flex: 1,
                ),
                Expanded(
                  flex: 6,
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        // vertical: 20,
                      ),
                      hintText: 'Enter here',
                      hintStyle: const TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: SizeConfig.heightMultiplier * 5,
                  height: SizeConfig.heightMultiplier * 5,
                  color: Constants.blueBtn,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: SizeConfig.heightMultiplier * 5,
                  height: SizeConfig.heightMultiplier * 5,
                  color: Constants.blueBtn,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                roundedBut("Basic", Colors.pink, 1),
                Spacer(),
                roundedBut("Stock", Colors.blue, 2),
                Spacer(),
                roundedBut("Barcode", Colors.orange, 3),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  roundedBut(title, color, num) {
    return SizedBox(
      width: SizeConfig.heightMultiplier * 11,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            formType = num;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: regularText(title, 1.5, Colors.white, FontWeight.w500),
      ),
    );
  }
}
