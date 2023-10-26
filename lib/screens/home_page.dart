import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text(
              'Simple Profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            //Demonstrated responsiveness using flex and Expanded widgets
            const Card(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bobby Wilson',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text('Senior Flutter Developer'),
                          Text('He likes playing ball during their free time.')
                        ],
                      ),
                    ),
                    Expanded(flex: 1, child: Text('Experience: 20 years'))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Bio',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            //Using MediaQuery
            Card(
              child: SizedBox(
                height: mediaQuery.height * 0.25,
                child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Bobby is a nice boy who likes helping beginners write clean code. He was nominated for the developer award where he won as the most influential developer of the year. Bobby has also a start up company that helps in preaching the tech gospel to marginalised communities in Africa. He says that alot is in store for the african child pertaining technology...',
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            //Using IntrinsicHeight and Width
            const Text(
              'Social Media ..',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const IntrinsicHeight(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Text(
                          '2K',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text('Followers'),
                      ],
                    ),
                  ),
                ),
                const IntrinsicHeight(
                  child: SizedBox(
                    child: Column(
                      children: [
                        Text(
                          '220',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text('Following'),
                      ],
                    ),
                  ),
                ),
                IntrinsicWidth(
                  child: ElevatedButton(
                    onPressed: () {
                      print('Thankyou for following me ..');
                    },
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    child: const Text('Follow'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //Using LayoutBuilder
            SizedBox(
              width: double.infinity,
              height: mediaQuery.height * 0.3,
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxHeight > 290) {
                  return const Card(
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(
                          child: Text(
                        'On Larger Screen',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  );
                } else {
                  return const Card(
                    color: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Center(
                          child: Text(
                        'On Normal Screen',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
