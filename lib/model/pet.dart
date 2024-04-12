class Pet {
  //para ser aceito valores nulos o ponto de interrogação é necessario
  //nulos
  String? name;
  String? image;

  Pet({
    this.image,
    this.name,
  });
}

//criando uma lista de dados, usando o List e o operador diamante<> com o nome =[];
List<Pet> myPets = [
  Pet(
    image:
        "https://png.pngtree.com/png-clipart/20230501/ourmid/pngtree-smiling-dogs-with-happy-expressions-png-image_7076852.png",
    name: "meu cachorro",
  ),
  Pet(
    image:
        "https://png.pngtree.com/png-clipart/20230511/ourmid/pngtree-isolated-cat-on-white-background-png-image_7094927.png",
    name: "meu gato",
  ),
  Pet(
    image:
        "https://png.pngtree.com/png-clipart/20230429/ourmid/pngtree-portrairt-rabbit-on-white-background-png-image_6744734.png",
    name: "my rabbit",
  ),
  Pet(
    image:
        "https://png.pngtree.com/png-vector/20230922/ourmid/pngtree-brown-and-white-dog-png-image_10146522.png",
    name: "my dog",
  ),
];
