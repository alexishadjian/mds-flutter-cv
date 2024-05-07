import 'package:flutter/material.dart';
import 'package:mds_flutter_cv/data.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 500,
            child: ListView.builder(
              // itemExtent: 80,
              itemCount: experiences.length,
              itemBuilder: (BuildContext ctxt, int index) {

                var exp = experiences[index];

                return ListTile(
                  leading: SizedBox(
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          exp["img"],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  title: Text(exp["name"], style: const TextStyle(
                    fontSize: 20,
                  ),),
                  subtitle: Text(exp["description"])
                  
                );
              },
            )
          )
        ],
      )
    );
  }
}

