import 'package:flutter/material.dart';
import 'package:ochma/app/ComponentPonents/Reuseable.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double height = 180;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111328),
      appBar: AppBar(
        backgroundColor: Color(0xff111328),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Pages(
                      tus: Color(0xff1D1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 100,
                            color: Color(0xffffffff),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Pages(
                      tus: Color(0xff1D1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                            color: Color(0xffffffff),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Pages(
                tus: Color(0xff1D1e33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff1D1e33),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Colors.grey,
                            activeTrackColor: Colors.white,
                            thumbColor: Colors.pink,
                            overlayColor: Color(0x29EB1555)),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round().toDouble();
                            });
                          },
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Pages(
                      tus: Color(0xff1D1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                heroTag: 'h3',
                                icon: Icons.remove,
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              RoundButton(
                                heroTag: 'h4',
                                icon: Icons.add,
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Pages(
                      tus: Color(0xff1D1e33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'age'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                heroTag: 'h1',
                                icon: Icons.remove,
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              RoundButton(
                                heroTag: 'h2',
                                icon: Icons.add,
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Calculate(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => resultPage(
                        height: height,
                        weight: weight,
                      ),
                    ),
                  );
                });
              },
              text: 'Calculate',
            )
          ],
        ),
      ),
    );
  }
}

class Calculate extends StatelessWidget {
  Calculate({required this.text, required this.onTap});
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.pink,
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    required this.icon,
    required this.onTap,
    required this.heroTag,
  });
  final IconData icon;
  final Function onTap;
  final Object heroTag;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      shape: StadiumBorder(side: BorderSide(color: Colors.white12)),
      onPressed: () {
        onTap();
      },
      child: Icon(
        icon,
        size: 35,
        color: Colors.white,
      ),
      mini: true,
      backgroundColor: Colors.grey[700],
    );
  }
}

class Pages extends StatelessWidget {
  Pages({this.cardChild, required this.tus});
  final cardChild;
  final Color tus;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: tus,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)),
    );
  }
}
