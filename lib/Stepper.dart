import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int indexVal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "STEPPER PAGE",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade900,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stepper(
          currentStep: indexVal,
          controlsBuilder: (context, _) {
            return Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        backgroundColor: Colors.teal.shade900),
                    onPressed: () {
                      setState(() {
                        if (indexVal < 2) {
                          indexVal++;
                        }
                      });
                    },
                    child: (indexVal == 2)
                        ? InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Home Page"))
                        : const Text("Continue")),
                const SizedBox(
                  width: 10,
                ),
                (indexVal != 0)
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            if (indexVal > 0) {
                              indexVal--;
                            }
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                  width: 2, color: Colors.teal.shade900)),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.teal.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            );
          },
          steps: <Step>[
            Step(
                isActive: false,
                title: const Text(
                  "Sing up",
                  style: TextStyle(color: Colors.black),
                ),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: Icon(
                          Icons.person,
                          color: Colors.teal.shade900,
                        ),
                        hintText: "Full Name",
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: Icon(Icons.email, color: Colors.teal.shade900),
                        hintText: "Email ID",
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: Icon(Icons.lock, color: Colors.teal.shade900),
                        hintText: "PassWord",
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: Icon(Icons.lock, color: Colors.teal.shade900),
                        hintText: "Conform PassWord",
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                      ),
                    ),
                  ],
                )),
            Step(
                isActive: false,
                title: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: Icon(
                          Icons.person,
                          color: Colors.teal.shade900,
                        ),
                        hintText: "User Name",
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        icon: Icon(Icons.lock, color: Colors.teal.shade900),
                        hintText: "PassWord",
                        hintStyle: TextStyle(color: Colors.teal.shade900),
                      ),
                    ),
                  ],
                )),
            Step(
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
                content: Container()),
          ],
        ),
      ),
    );
  }
}
