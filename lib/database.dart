
import 'package:cloud_firestore/cloud_firestore.dart';

class Databases{
  late FirebaseFirestore firestore;
  initialise(){
    firestore = FirebaseFirestore.instance;
  }
  void create_driver(String name,String _uid,String number,String email, String number_plate)async{
    try{
      await firestore.collection("drivers").doc(_uid).set({'name':name,'number':number,'email':email,'numberplate':number_plate,'type':'driver'});
    }catch(e){
      print(e);
    }
  }
  void create_passenger(String name,String _uid,String number,String email)async{
    try{
      await firestore.collection("passengers").doc(_uid).set({'name':name,'number':number,'email':email,'type':'passenger'});
    }catch(e){
      print(e);
    }
  }
  void create_request(String from,String to,String uid)async{
    try{
      await firestore.collection("requests").doc(uid).set({'from':from,'to':to,'pending':0,'driver_uid':""});
    }catch(e){
      print(e);
    }
  }
}