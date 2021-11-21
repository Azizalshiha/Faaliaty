import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/shared/const.dart';
import 'package:intl/intl.dart';


class AddActivity extends StatefulWidget {
  const AddActivity({Key? key}) : super(key: key);

  @override
  _AddActivityState createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {

  String activityName = '';
  bool isSwitched = false;

  DateTime _dateTime = DateTime(2021);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222B44),
      appBar: AppBar(
        backgroundColor: Color(0xff222B44),
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Add activity',
          style: lighttext,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 16, top: 15, right: 16),
        decoration: whiteCont,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Event Name",
                  hintText: 'Enter event name',
                ),
                onChanged: (val) {},
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Description",
                  hintText: 'Enter event description',
                ),
                onChanged: (val) {},
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2030)
                  ).then((date) {
                    setState(() {
                      _dateTime = date!;
                    });
                  });
                },
                child: ListTile(
                  leading: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9.0),
                          topRight: Radius.circular(9.0),
                          bottomLeft: Radius.circular(9.0),
                          bottomRight: Radius.circular(9.0),
                        )),
                    child: Icon(
                      Icons.watch_later_outlined,
                      color: Color(0xff222B44),
                    ),
                  ),
                  title: Align(
                    alignment: Alignment(-1.11, 0),
                    child: Text( _dateTime == DateTime(2021) ? 'Set a date': DateFormat('yyyy-MM-dd').format(_dateTime),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9.0),
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0),
                      )),
                  child: Center(
                    child: Text(
                      '?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff222B44),
                      ),
                    ),
                  ),
                ),
                title: Align(
                  alignment: Alignment(-1.25, 0),
                  child: Text(
                    'Online activity',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.green,
                  activeColor: Colors.green,
                ),
              ),
              isSwitched == false ? ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9.0),
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0),
                      )),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Color(0xff222B44),
                  ),
                ),
                title: TextFormField(
                  decoration: InputDecoration(
                    labelText: "google maps URL",
                    hintText: 'Enter google maps url',
                  ),
                  onChanged: (val) {},
                ),
              ) :
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9.0),
                        topRight: Radius.circular(9.0),
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0),
                      )),
                  child: Icon(
                    Icons.link,
                    color: Color(0xff222B44),
                  ),
                ),
                title: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Meeting URL",
                    hintText: 'Enter online meeting url',
                  ),
                  onChanged: (val) {},
                ),
              ),
              SizedBox(height: 8,),
              Divider(
                height: 15,
                thickness: 2,
                color: Colors.black12,
              ),
              SizedBox(height: 8),
              Text(
                'Themes',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 3.0,
                      children: <Widget>[
                        filterChipWidget(chipName: 'Culture'),
                        filterChipWidget(chipName: 'Business'),
                        filterChipWidget(chipName: 'Gaming'),
                        filterChipWidget(chipName: 'Entrepreneurship'),
                        filterChipWidget(chipName: 'Technology'),
                        filterChipWidget(chipName: 'kids'),
                      ],
                    )
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      //border: Border.all(color: Colors.white10, width: 2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Color(0xff222B44),
                          size: 26,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          'Upload photos',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff222B44),
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Divider(
                height: 15,
                thickness: 2,
                color: Colors.black12,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {},
                  child: Text("Publish",
                      style: TextStyle(
                          fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(color: Color(0xff6200ee),fontSize: 16.0,fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),);
  }
}
