class SingletonExample {
  // Instancia privada estática
  static final SingletonExample _instance = SingletonExample._internal();


  factory SingletonExample() {
    return _instance;
  }

  // Constructor privado
  SingletonExample._internal();

  // Ejemplo de un método
  String getInfo() {
    return 'Este es un ejemplo de Singleton en Flutter';
  }
}
