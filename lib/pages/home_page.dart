import 'package:flutter/material.dart';
import 'package:progetto_app_economia/widgets/buildcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Ricerca...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Scegli il tuo corso',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  index += 1;
                  if (index <6) {
                    return BuildCard(
                    title: '$index° Anno di Economia',
                    cardcolor: Colors.primaries[index],
                    shadowStrength: 0.5,
                  );
                  } else {
                    return const BuildCard(
                    title: 'Extra',
                    cardcolor: Colors.yellowAccent,
                    shadowStrength: 0.5,
                  );
                  }
                },
              ),
            ),
        const SizedBox(height: 40),
          ],
        ),
      ),
      
    );
  }
}