import 'package:flutter/material.dart';
import 'package:good_meal/models/Constantes.dart';
import 'package:good_meal/pages/HomePage.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({super.key});

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {

  // instancie un objet login et pass Conrroller
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    // container contient le formulaire, on le place au centre
    return Container(
      padding: EdgeInsets.only(top: 50),
      width: size.width,
      child: Center(
        child: Card(
          color: appBarColor,
          child: Container(
            width:  300,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 3 containers
                Container( // Login
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: loginController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Login"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Entrer votre Login";
                      }
                      return null;
                    },
                  ),
                ),
                Container( // Mot de passe
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Mot de passe"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Veuillez entrer un mot de passe !";
                      }else if (value.length < 8 ){
                        return "Le mdp doit être supérieur à 8 caractères";
                      } else if (!value.contains(RegExp(r'[!%£&@#$]'))){
                        return "il faut un caractére special !!";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: (){},
                          child: Text("Annuler")
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(
                          onPressed: (){
                            if(loginController.text == adminlog && generateMd5(passController.text) == adminpass){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context){
                                  return HomePage();
                                })
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Fail !!! Retry !")));
                            }
                          },
                          child: Text("Enregistrer")
                      ),
                    ],
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
