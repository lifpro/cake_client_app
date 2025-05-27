import 'package:cake_client_app/data/cakes_data.dart';
import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class HomeListPage extends StatefulWidget {
  const HomeListPage({super.key});

  @override
  State<HomeListPage> createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  switchChecked(cake) {
    var index = cakes.indexOf(cake);
    setState(() {
      cakes[index].checked = !cakes[index].checked;
    });
  }

  Future<void> goToDetails(cake) async {
    final data =
        await Navigator.pushNamed(context, 'cakeDetails', arguments: cake);
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(data.toString()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        // itemBuilder: (context, index) => CakeCard(
        //     cake: cakes[index],
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/${cakes[index].image}'),
              ),
              title: Text(
                cakes[index].name,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              subtitle: Text('Disponible'),
              // trailing: CircleAvatar(
              //   foregroundColor: Colors.white,
              //   backgroundColor: myPrimatyColor,
              //   child: Text('17'),
              // ),
              trailing: Checkbox(
                tristate: true,
                activeColor: myPrimatyColor,
                checkColor: Colors.white,
                onChanged: (bool? value) => switchChecked(cakes[index]),
                value: cakes[index].checked,
              ),
              contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              onTap: () {
                // Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => CakeDetailsPage()));
                // final data = Navigator.pushNamed(context, 'cakeDetails',
                //     arguments: cakes[index]);

                goToDetails(cakes[index]);
              },
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 5,
            ),
        itemCount: cakes.length);
  }
}
