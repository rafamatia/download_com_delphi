# download_com_delphi
Este repositório contém uma aplicação responsável para realizar o downloads de arquivos, conforme a URL informada pelo usuário.
Esta aplicação foi desenvolvida com Delphi 10.2, com interação com o banco de dados SQLite.
Esta aplicação é totalmente desktop, e sem componentes de terceiro.
Esta é a versão 1.0, da aplicação, da qual precisa de uma grande melhoria.

## Começando
Para executar o projeto, será necessário instalar os seguintes programas:
- Delphi 10.2 ou superior
- SQLite

## Desenvolvimento
Para iniciar o desenvolvimento, é necessário clonar o projeto do GitHub num diretório de sua preferência:

cd "diretorio de sua preferencia"
git clone https://github.com/rafamatia/download_com_delphi

## Configuração
No Delphi há a necessidade de alterar as opções:
- Project > Options > Delphi Compiler > Output Directory: "caminho da pasta exe" exemplo: "C:\download_com_delphi\exe\";
- Project > Options > Delphi Compiler > Output Directory: "caminho da pasta dcu" exemplo: "C:\download_com_delphi\dcu\";

O banco SQLite encontrado-se em "download_com_delphi\db\banco.db";
Para executar o projeto, é necessário configurar o arquivo "config.ini", localizado na pasta exe:
- No arquivo "config.ini" no campo "DATABASE=" informar o local do banco SQLite. Exemplo: DATABASE=C:\download_com_delphi\db\banco.db

## Usabilidade da aplicação
- O usuário deve informar uma URL no campo "Informe uma URL:", e logo após clicar no botão "Iniciar Download" ou utilizar a tecla de atalho "ALT+D";
- Abaixo das informações citadas acima, contém uma grid, onde será listado o histórico de downloads e o progresso do download iniciado;
- Após iniciado o download do arquivo desejado, o mesmo será apresentado na grid citada acima, onde o mesmo poderá acompanha o progresso do seu download, pelo campo "% Dados Processados";
- Após a conclusão do download no registro na grid, será setado a "Data de Término" do download e seu progresso será atualizado para 100%.

## Features
- O projeto pode ser utilizado como estudo.
- O mesmo será atualizado conforme estudos a serem concluídos sobre alguns conceitos.
- O mesmo também será atualizado conforme necessário, como já dito a versão da aplicação é 1.0, e precisa de uma grande melhoria.

## Informações Adicionais do Desenvolvimento
- No projeto foi tentado aplicar o conceito de Thread.
- Algumas partes foram desenvolvidas utilizando o conceito de POO.
- Creio que ainda pode ser muito melhorado, utilizando os conceitos de: Interface e Observer, além de uma refatoração assim aplicando melhor o conceito de Clean Code.


## Desenvolvido
- Data de início dos estudos: 31/07/2020 - Sexta-feiras às 19horas
- Estudos realizado no período de: 31/07/2020 - até o momento
- Desenvolvido iniciado em: 01/08/2020
- Versão 1.1 concluída em: 04/08/2020




