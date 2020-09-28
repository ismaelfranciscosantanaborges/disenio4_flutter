import 'package:disenio_flutter/data/listDoctorsApi.dart';
import 'package:disenio_flutter/models/Doctor.dart';
import 'package:flutter/material.dart';

class ListDoctorsScreen extends StatelessWidget {
   ListDoctorsScreen({Key key}) : super(key: key);
  final List<Doctor> listDoctors = [];
  @override
  Widget build(BuildContext context) {
    List<Doctor> listDoctors;
    return Container(

      child: FutureBuilder(
          future: listDoctors == null ? getDoctors() : listDoctors,
          builder: (context, AsyncSnapshot<List<Doctor>> snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            listDoctors = [];
            listDoctors = snapshot.data;
            final doctors = snapshot.data;

            return ListView.separated(
              itemCount: doctors.length,
              separatorBuilder: (context, index) => SizedBox(
                height: index == 4 ? 2 : 0,
              ),
              itemBuilder: (context, index) {
                return Card(
                  
                  color: index == 4 ? Colors.white : Colors.grey[100],
                  margin: EdgeInsets.all(0),
                  elevation: index == 4 ? 2 : 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${doctors[index].firstName} ${doctors[index].lastName}',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Sirujano',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  color:
                                      index % 2 == 1 ? Colors.grey : Colors.green,
                                  size: 20,
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.grey, size: 20),
                                (index == 4)
                                    ? MoreInfoDoctorSeleccion()
                                    : Container()
                              ],
                            ),
                          ),
                        ],
                      ),
                      leading: Container(
                        width: 55,
                        height: 55,
                        child: Container(
                          padding: index == 4 ? EdgeInsets.all(3): EdgeInsets.all(0),
                          decoration: index == 4 ? BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle
                          ):
                          BoxDecoration(),
                          
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(doctors[index].img),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

class MoreInfoDoctorSeleccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          getIconList(Icons.phone, Colors.green),
          SizedBox(width: 5),
          getIconList(Icons.camera_alt, Colors.pink),
        ],
      ),
    );
  }

  Container getIconList(IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: Colors.grey[300],
          )),
      child: Icon(icon, color: color, size: 20),
    );
  }
}
