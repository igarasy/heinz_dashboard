import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatórios'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Escolha a linha de produção'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Maionese'),
              onTap: () {
                // TODO: implementar navegação para tela de produtos
              },
            ),
            ListTile(
              title: Text('Ketchup'),
              onTap: () {
                // TODO: implementar navegação para tela de relatórios
              },
            ),
            ListTile(
              title: Text('Mostarda'),
              onTap: () {
                // TODO: implementar navegação para tela de relatórios
              },
            ),
            ListTile(
              title: Text('Maionese especial'),
              onTap: () {
                // TODO: implementar navegação para tela de relatórios
              },
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Taxa de uso sustentável',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _buildMetricCard('Água', '50%', Icons.opacity),
                          _buildMetricCard('Energia', '50%', Icons.power),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _buildMetricCard('Reciclagem', '75%', Icons.delete),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                child: ListView.builder(
                  itemCount: 10, // quantidade de alertas a serem exibidos
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.warning),
                      title:
                          Text('Alerta ${index + 1}, Consumo de energia alto'),
                      subtitle: Text('15/06/2023 14:53:10'),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard(String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text(value,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
