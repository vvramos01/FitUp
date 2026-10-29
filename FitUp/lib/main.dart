import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitUp',
      debugShowCheckedModeBanner: false,
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  // Bloco de estatística (ícone + valor + legenda)
  Widget _estatistica(IconData icone, Color cor, String valor, String legenda) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icone, color: cor, size: 32),
          const SizedBox(height: 8),
          Text(
            valor,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            legenda,
            style: const TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  // Item da lista de exercícios
  Widget _exercicio(String nome, String detalhe, IconData icone) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icone, color: Colors.deepOrange, size: 28),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  detalhe,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
          const Icon(Icons.check_circle_outline, color: Colors.green, size: 28),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F8),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'FitUp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bom dia, atleta!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Hoje é dia de superar seus limites.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),

              // Card principal: meta do dia
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Text(
                      'META DO DIA',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 16),
                    Icon(
                      Icons.local_fire_department,
                      size: 90,
                      color: Colors.white,
                    ),
                    SizedBox(height: 12),
                    Text(
                      '420 / 600 kcal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Falta pouco para bater a meta!',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.directions_run, color: Colors.white, size: 32),
                        Icon(Icons.fitness_center, color: Colors.white, size: 32),
                        Icon(Icons.self_improvement,
                            color: Colors.white, size: 32),
                        Icon(Icons.pool, color: Colors.white, size: 32),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              // Estatísticas
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _estatistica(
                      Icons.timer, Colors.blue, '45 min', 'Tempo ativo'),
                  _estatistica(Icons.directions_walk, Colors.green, '6.500',
                      'Passos'),
                  _estatistica(
                      Icons.favorite, Colors.redAccent, '72 bpm', 'Batimentos'),
                ],
              ),
              const SizedBox(height: 32),

              // Lista de exercícios
              const Text(
                'Treino de hoje',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              _exercicio('Corrida leve', '20 minutos', Icons.directions_run),
              _exercicio('Supino reto', '4 séries x 12', Icons.fitness_center),
              _exercicio('Alongamento', '10 minutos', Icons.self_improvement),
              _exercicio('Natação', '15 minutos', Icons.pool),
            ],
          ),
        ),
      ),
    );
  }
}
