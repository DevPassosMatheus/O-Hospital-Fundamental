# O_Hospital_Fundamental

<h1 align='center'><i>Olá, é um prazer tê-lo(a) aqui!</i></h1>
<h3 align='center'>Esse repositório foi criado quando eu iniciei meus estudos em banco de dados, vou detalhar tudo para você!</h3>

<h1 align='center'>Um banco de dados fundamental, para um hospital fundalmental</h1>

<h2 align='center'>▹ Modelagem de dados ◃</h2>

<p>  A primeira etapa para a criação de um banco de dados é a modelagem. Existem três tipos de modelagem, conceitual, lógica e física, geralmente elas são feitas em ordem: conceitual, lógica e física. Vou te explicar sobre cada uma delas!</p>

<h3>Modelagem conceitual</h3>

<p> Alguns profissionais mais avançados costumam ir direto para a modelagem lógica e em seguida, para a física. No entanto, a modelagem conceitual é um passo muito importante e vai ajudar muito caso você seja iniciante. <br> <br> O que a modelagem conceitual faz é ajudar a entender melhor como as coisas se relacionam. É como montar um quebra-cabeça, onde você cria diagramas e identifica as partes principais e como elas se conectam. Você também pode identificar a necessidade de criar novas "tabelas" e estabelecer essas conexões, por isso essa parte é tão importante. <br> <br> Fazer a modelagem conceitual te dá uma base bem sólida para seguir em frente. É aí que você define as estruturas e os vínculos mais importantes do banco, entendendo bem o que ele precisa fazer antes de entrar nos detalhes técnicos. </p>

- <h3>Como fazer a modelagem conceitual?</h3>
<p>
 Para fazer a modelagem conceitual, utilizamos diagramas. Os retângulos representam as entidades (ou seja, as tabelas), os triângulos indicam os relacionamentos entre essas entidades, os pequenos círculos representam os atributos das entidades (como as colunas das tabelas) e os números entre parênteses são usados para representar a cardinalidade.

A cardinalidade descreve a quantidade de objetos que estão relacionados entre duas entidades. Ela nos ajuda a entender se a relação é de um para um, um para muitos ou muitos para muitos. Por exemplo, em um banco de dados hospitalar, a cardinalidade poderia mostrar quantos pacientes estão associados a cada convênio e a quantos convênios cada paciente possuí.
</p>

Abaixo, segue a modelagem conceitual do banco de dados do nosso hospital. Como o exemplo acima, você notará que a cardinalidade é de 01 para muitos, isso porque um paciente possuirá somente umn convênio, mas podem haver mais pacientes que possuem o mesmo convênio, por isso o muitos para um.

![Untitled (1)](https://github.com/DevPassosMatheus/O-Hospital-Fundamental/assets/125465372/a4e71611-4603-4ac2-abc2-8b7c61c08963)

<h3>Modelagem lógica</h3>

<p> Depois da modelagem conceitual, tudo fica mais fácil e prático, agora vamos para a modelagem lógica! A modelagem lógica nada mais é do especificar os tipos primitivos das colunas, e fazer as ligações através de chaves primárias e estrangeiras. Toda "entidade" que você fez na modelagem conceitual, agora se tornará uma tabela, os atributos, se tornarão colunas. 

![image](https://github.com/DevPassosMatheus/O-Hospital-Fundamental/assets/125465372/44577c4d-0e02-46d6-8328-e74a8ff5ac7e)

</p>
