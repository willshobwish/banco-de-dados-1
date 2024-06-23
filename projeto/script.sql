DROP DATABASE IF EXISTS projeto;

CREATE DATABASE projeto;

USE projeto;

CREATE TABLE departamento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    acronimo varchar(255)
);

CREATE TABLE area_do_conhecimento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE evento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    edicao INT
);

CREATE TABLE escola (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255)
);

CREATE TABLE estudante (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    ano INT NOT NULL,
    escola INT NOT NULL,
    FOREIGN KEY (escola) REFERENCES escola (id)
);

CREATE TABLE projeto (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    estudante INT NOT NULL,
    resumo VARCHAR(255),
    area_do_conhecimento INT,
    evento INT,
    FOREIGN KEY (estudante) REFERENCES estudante (id),
    FOREIGN KEY (area_do_conhecimento) REFERENCES area_do_conhecimento (id),
    FOREIGN KEY (evento) REFERENCES evento (id)
);

CREATE TABLE avaliador (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    departamento INT NOT NULL,
    area_do_conhecimento INT NOT NULL,
    FOREIGN KEY (departamento) REFERENCES departamento (id),
    FOREIGN KEY (area_do_conhecimento) REFERENCES area_do_conhecimento (id)
);

CREATE TABLE nota (
    projeto INT,
    avaliador INT,
    nota FLOAT,
    PRIMARY KEY (projeto, avaliador),
    FOREIGN KEY (projeto) REFERENCES projeto (id),
    FOREIGN KEY (avaliador) REFERENCES avaliador (id)
);
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Ciências Agrárias", "DCA");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Ciências Biológicas", "DCB");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Ciências da Saúde", "DCS");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Ciências Exatas e da Terra", "DCET");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Engenharias", "DE");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Ciências Humanas", "DCH");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Ciências Sociais Aplicadas", "DCSA");
INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de Linguistica, Letras e Artes", "DLLA");
INSERT INTO area_do_conhecimento (nome) VALUES ("Ciências Agrárias");
INSERT INTO area_do_conhecimento (nome) VALUES ("Ciências Biológicas");
INSERT INTO area_do_conhecimento (nome) VALUES ("Ciências da Saúde");
INSERT INTO area_do_conhecimento (nome) VALUES ("Ciências Exatas e da Terra");
INSERT INTO area_do_conhecimento (nome) VALUES ("Engenharias");
INSERT INTO area_do_conhecimento (nome) VALUES ("Ciências Humanas");
INSERT INTO area_do_conhecimento (nome) VALUES ("Ciências Sociais Aplicadas");
INSERT INTO area_do_conhecimento (nome) VALUES ("Linguistica, Letras e Artes");
INSERT INTO escola (nome, endereco) VALUES ("Escola Dr. Harmony Carroll V", "Rua Dr. Abdul Brown");
INSERT INTO escola (nome, endereco) VALUES ("Escola Clarissa Hyatt", "Rua Miss Deja Stanton MD");
INSERT INTO escola (nome, endereco) VALUES ("Escola Laurianne Moore", "Rua Alexys Tromp");
INSERT INTO escola (nome, endereco) VALUES ("Escola Mrs. Liliana Crooks", "Rua Flavio Pouros");
INSERT INTO escola (nome, endereco) VALUES ("Escola Mr. Pierre Erdman III", "Rua King Lubowitz");
INSERT INTO escola (nome, endereco) VALUES ("Escola Antonette Kertzmann", "Rua Elda Schoen");
INSERT INTO escola (nome, endereco) VALUES ("Escola Mr. Dion Ziemann", "Rua Raymond Kassulke II");
INSERT INTO escola (nome, endereco) VALUES ("Escola Devante Schmitt", "Rua Domingo Grimes");
INSERT INTO escola (nome, endereco) VALUES ("Escola Deven Daniel", "Rua Caterina Upton");
INSERT INTO escola (nome, endereco) VALUES ("Escola Dr. Jordi Willms DVM", "Rua Dr. Abel Wiegand");
INSERT INTO escola (nome, endereco) VALUES ("Escola Jed Koss", "Rua Tianna Lehner");
INSERT INTO escola (nome, endereco) VALUES ("Escola Aiden Treutel II", "Rua Mr. Trent King");
INSERT INTO escola (nome, endereco) VALUES ("Escola Lonie Bode", "Rua Prof. Elbert Jacobs");
INSERT INTO escola (nome, endereco) VALUES ("Escola Susanna Beahan", "Rua Robin Fadel PhD");
INSERT INTO escola (nome, endereco) VALUES ("Escola Marcel Weber", "Rua Jamarcus Champlin");
INSERT INTO escola (nome, endereco) VALUES ("Escola Nola Kautzer", "Rua Miss Tania Bernhard");
INSERT INTO escola (nome, endereco) VALUES ("Escola Carolyne Gerlach", "Rua Jonatan Rutherford Jr.");
INSERT INTO escola (nome, endereco) VALUES ("Escola Felipa Kozey", "Rua Taryn Wehner");
INSERT INTO escola (nome, endereco) VALUES ("Escola Lionel Boyer", "Rua Ms. Nellie Anderson");
INSERT INTO escola (nome, endereco) VALUES ("Escola Dr. Bernard Shanahan", "Rua Mr. Brendan King");
INSERT INTO estudante (nome, ano, escola) VALUES ("Eusebio O'Kon", 7, 20);
INSERT INTO estudante (nome, ano, escola) VALUES ("Lilyan Zieme V", 7, 12);
INSERT INTO estudante (nome, ano, escola) VALUES ("Karelle Lakin", 5, 7);
INSERT INTO estudante (nome, ano, escola) VALUES ("Enoch Gaylord", 2, 3);
INSERT INTO estudante (nome, ano, escola) VALUES ("Luis Stark", 2, 20);
INSERT INTO estudante (nome, ano, escola) VALUES ("Ms. Mariana Rowe Sr.", 1, 2);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mr. Jaylin Howe", 3, 10);
INSERT INTO estudante (nome, ano, escola) VALUES ("Amaya Purdy", 7, 5);
INSERT INTO estudante (nome, ano, escola) VALUES ("Florencio Funk Jr.", 9, 15);
INSERT INTO estudante (nome, ano, escola) VALUES ("Donny Abbott", 5, 19);
INSERT INTO estudante (nome, ano, escola) VALUES ("Ms. Dorris Treutel", 6, 18);
INSERT INTO estudante (nome, ano, escola) VALUES ("Jolie Hyatt", 9, 7);
INSERT INTO estudante (nome, ano, escola) VALUES ("Prof. Adalberto Douglas I", 1, 4);
INSERT INTO estudante (nome, ano, escola) VALUES ("Kristian Zboncak V", 8, 9);
INSERT INTO estudante (nome, ano, escola) VALUES ("Ms. Alycia Larkin III", 9, 1);
INSERT INTO estudante (nome, ano, escola) VALUES ("Monique Treutel", 6, 13);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mrs. Alana Lynch", 8, 18);
INSERT INTO estudante (nome, ano, escola) VALUES ("Prof. Tatum Feest", 1, 13);
INSERT INTO estudante (nome, ano, escola) VALUES ("Tracy Okuneva", 5, 11);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mrs. Cleta Rau", 7, 5);
INSERT INTO estudante (nome, ano, escola) VALUES ("Khalid Ward", 1, 9);
INSERT INTO estudante (nome, ano, escola) VALUES ("Osbaldo Rohan", 4, 11);
INSERT INTO estudante (nome, ano, escola) VALUES ("Dr. Cade Crona II", 5, 6);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mr. Solon Brakus", 7, 16);
INSERT INTO estudante (nome, ano, escola) VALUES ("Dr. Lisa Hills", 2, 1);
INSERT INTO estudante (nome, ano, escola) VALUES ("Maryam Ritchie", 6, 13);
INSERT INTO estudante (nome, ano, escola) VALUES ("Garnet Hodkiewicz", 3, 11);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mr. Oliver O'Kon I", 3, 18);
INSERT INTO estudante (nome, ano, escola) VALUES ("Ransom Hamill", 1, 4);
INSERT INTO estudante (nome, ano, escola) VALUES ("Joshua Barrows", 4, 14);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mr. Ubaldo Hintz V", 9, 4);
INSERT INTO estudante (nome, ano, escola) VALUES ("Daniella Monahan", 1, 3);
INSERT INTO estudante (nome, ano, escola) VALUES ("Jaquelin Gleason", 6, 12);
INSERT INTO estudante (nome, ano, escola) VALUES ("Sanford Donnelly", 2, 19);
INSERT INTO estudante (nome, ano, escola) VALUES ("Miss Jacinthe Blick", 1, 13);
INSERT INTO estudante (nome, ano, escola) VALUES ("Enola Yost", 3, 5);
INSERT INTO estudante (nome, ano, escola) VALUES ("Prof. Francisco Hegmann III", 6, 19);
INSERT INTO estudante (nome, ano, escola) VALUES ("Maureen Langworth", 6, 9);
INSERT INTO estudante (nome, ano, escola) VALUES ("Wyman Muller", 6, 14);
INSERT INTO estudante (nome, ano, escola) VALUES ("Prof. Wilson Kris", 5, 2);
INSERT INTO estudante (nome, ano, escola) VALUES ("Ms. Carmela Ryan", 7, 20);
INSERT INTO estudante (nome, ano, escola) VALUES ("Aleen Crooks", 7, 6);
INSERT INTO estudante (nome, ano, escola) VALUES ("Flossie O'Conner", 1, 14);
INSERT INTO estudante (nome, ano, escola) VALUES ("Ms. Verlie Hayes", 4, 17);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mrs. Ima Homenick", 4, 18);
INSERT INTO estudante (nome, ano, escola) VALUES ("Juliana Goodwin PhD", 9, 10);
INSERT INTO estudante (nome, ano, escola) VALUES ("Tyra Torphy", 2, 10);
INSERT INTO estudante (nome, ano, escola) VALUES ("Myra Kling DDS", 4, 16);
INSERT INTO estudante (nome, ano, escola) VALUES ("Mr. Anderson Mosciski IV", 8, 20);
INSERT INTO estudante (nome, ano, escola) VALUES ("Thomas Bergstrom", 4, 16);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 1);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 2);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 3);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 4);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 5);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 6);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 7);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 8);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 9);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 10);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 11);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 12);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 13);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 14);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 15);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 16);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 17);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 18);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 19);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 20);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 21);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 22);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 23);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 24);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 25);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 26);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 27);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 28);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 29);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 30);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 31);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 32);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 33);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 34);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 35);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 36);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 37);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 38);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 39);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 40);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 41);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 42);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 43);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 44);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 45);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 46);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 47);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 48);
INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", 49);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Astrophysical Simulations", 10, "Running simulations to understand the formation and evolution of celestial bodies and systems.", "2", 14);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cybersecurity Threat Analysis", 39, "Identifying and mitigating cybersecurity threats using advanced analytics and machine learning.", "8", 40);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Advanced Materials for Electronics", 3, "Creating and testing new materials with enhanced electrical properties for electronic devices.", "5", 31);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cognitive Behavioral Therapy Research", 5, "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.", "6", 14);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Nanomaterials for Drug Delivery", 15, "Creating and testing nanomaterials to improve the delivery and effectiveness of pharmaceuticals.", "6", 45);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Renewable Agriculture Practices", 25, "Developing sustainable farming practices to enhance crop yield and soil health.", "7", 3);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Quantum Computing Algorithms", 49, "Developing and testing algorithms for quantum computers to solve complex problems faster than classical computers.", "4", 40);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Renewable Agriculture Practices", 22, "Developing sustainable farming practices to enhance crop yield and soil health.", "5", 31);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Neuroscience of Learning", 4, "Studying the neural mechanisms underlying learning and memory.", "6", 37);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Renewable Agriculture Practices", 15, "Developing sustainable farming practices to enhance crop yield and soil health.", "8", 9);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Robotics and Automation", 36, "Designing and programming robots for various applications in industry and everyday life.", "6", 31);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Robotics and Automation", 29, "Designing and programming robots for various applications in industry and everyday life.", "6", 7);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Space Weather Monitoring", 6, "Studying the impact of solar activity on Earth's magnetosphere and communication systems.", "8", 10);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Renewable Agriculture Practices", 27, "Developing sustainable farming practices to enhance crop yield and soil health.", "2", 3);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Advanced Materials for Electronics", 10, "Creating and testing new materials with enhanced electrical properties for electronic devices.", "8", 26);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Artificial Intelligence in Medicine", 50, "Applying AI and machine learning techniques to diagnose diseases and predict patient outcomes.", "2", 11);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Quantum Computing Algorithms", 1, "Developing and testing algorithms for quantum computers to solve complex problems faster than classical computers.", "4", 48);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cognitive Behavioral Therapy Research", 48, "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.", "4", 36);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Biodiversity Conservation Strategies", 33, "Developing strategies to protect endangered species and preserve biodiversity in various habitats.", "6", 32);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cognitive Behavioral Therapy Research", 18, "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.", "6", 5);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Robotics and Automation", 41, "Designing and programming robots for various applications in industry and everyday life.", "3", 22);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cognitive Behavioral Therapy Research", 13, "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.", "2", 30);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Machine Learning for Drug Discovery", 12, "Applying machine learning techniques to accelerate the discovery of new pharmaceuticals.", "3", 24);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Biodegradable Plastics Development", 44, "Creating and testing new biodegradable plastics to reduce environmental impact.", "1", 5);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cybersecurity Threat Analysis", 29, "Identifying and mitigating cybersecurity threats using advanced analytics and machine learning.", "2", 35);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Artificial Intelligence in Medicine", 36, "Applying AI and machine learning techniques to diagnose diseases and predict patient outcomes.", "5", 20);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Behavioral Economics Studies", 14, "Studying the psychological factors that influence economic decision-making and market outcomes.", "1", 1);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Nanomaterials for Drug Delivery", 29, "Creating and testing nanomaterials to improve the delivery and effectiveness of pharmaceuticals.", "5", 7);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Climate Change Impact Assessment", 12, "Assessing the impact of climate change on local ecosystems using climate models and field data.", "7", 28);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Urban Heat Island Effect", 11, "Analyzing the impact of urbanization on local climate and developing mitigation strategies.", "5", 6);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Robotics and Automation", 26, "Designing and programming robots for various applications in industry and everyday life.", "8", 11);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Advanced Materials for Electronics", 44, "Creating and testing new materials with enhanced electrical properties for electronic devices.", "8", 30);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cybersecurity Threat Analysis", 4, "Identifying and mitigating cybersecurity threats using advanced analytics and machine learning.", "5", 42);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Artificial Intelligence in Medicine", 24, "Applying AI and machine learning techniques to diagnose diseases and predict patient outcomes.", "6", 23);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Machine Learning for Drug Discovery", 2, "Applying machine learning techniques to accelerate the discovery of new pharmaceuticals.", "4", 14);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Neuroscience of Learning", 15, "Studying the neural mechanisms underlying learning and memory.", "2", 21);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Urban Heat Island Effect", 23, "Analyzing the impact of urbanization on local climate and developing mitigation strategies.", "5", 5);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Neuroscience of Learning", 17, "Studying the neural mechanisms underlying learning and memory.", "3", 45);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Urban Heat Island Effect", 2, "Analyzing the impact of urbanization on local climate and developing mitigation strategies.", "8", 17);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Behavioral Economics Studies", 42, "Studying the psychological factors that influence economic decision-making and market outcomes.", "6", 10);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Human-Robot Interaction", 13, "Studying the interaction between humans and robots to improve user experience and safety.", "6", 38);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Artificial Intelligence in Medicine", 6, "Applying AI and machine learning techniques to diagnose diseases and predict patient outcomes.", "1", 10);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cognitive Behavioral Therapy Research", 24, "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.", "6", 29);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Human-Robot Interaction", 4, "Studying the interaction between humans and robots to improve user experience and safety.", "6", 17);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Bioinformatics Pipeline Development", 28, "Creating automated pipelines for analyzing large-scale genomic data.", "7", 39);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Artificial Intelligence in Medicine", 8, "Applying AI and machine learning techniques to diagnose diseases and predict patient outcomes.", "8", 5);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Cognitive Behavioral Therapy Research", 29, "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.", "5", 37);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Climate Change Impact Assessment", 15, "Assessing the impact of climate change on local ecosystems using climate models and field data.", "8", 6);
INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("Robotics and Automation", 21, "Designing and programming robots for various applications in industry and everyday life.", "8", 39);
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Rahul McKenzie DVM", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Gwen Wisoky", "8", "8");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mr. Chelsey Langworth", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Maurice Carter", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mrs. Dianna O'Kon", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mrs. Alayna Wolff", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Moses Heathcote", "6", "6");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Jacinto Corwin", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Dr. Ubaldo Ondricka", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Miss Brigitte Hills", "2", "2");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Prof. Zechariah Lesch V", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Alexis Ondricka", "4", "4");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Philip Ferry", "6", "6");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Davin McCullough", "8", "8");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Waldo Kovacek", "8", "8");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Adrianna Koss", "1", "1");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Prof. Flavio Shanahan", "1", "1");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mrs. Dandre Schuppe Jr.", "2", "2");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Jennifer Morar Jr.", "8", "8");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Camren O'Kon PhD", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Stuart Bode", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Yessenia Satterfield", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Annie Erdman II", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mrs. Brielle Stokes", "8", "8");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Dr. Susie Will V", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Lucious Emard", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mr. Kaleigh Kovacek", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Jolie Harris V", "6", "6");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Delphia Kassulke", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Lindsey Runolfsdottir", "5", "5");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Myrtie Zieme", "6", "6");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Viva Treutel", "2", "2");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Prof. Oma Moen", "2", "2");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Anabel Bergstrom I", "5", "5");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Euna Predovic", "5", "5");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Albert Zieme Jr.", "4", "4");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Prof. Scotty Kessler", "3", "3");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Aliya Steuber", "1", "1");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mr. Axel King", "4", "4");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Israel Robel", "7", "7");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Joy Wilkinson", "8", "8");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Prof. Royal Schiller Jr.", "1", "1");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Dr. Pierre Breitenberg", "5", "5");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Ethan Balistreri", "2", "2");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Ms. Cora Wehner I", "5", "5");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Mrs. Lauryn Toy III", "1", "1");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Millie Langosh", "2", "2");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Elton Hickle", "4", "4");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Dina Heathcote", "4", "4");
INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("Erich Rohan", "3", "3");
INSERT INTO nota (projeto, avaliador, nota) VALUES (1, 1, 8.509);
INSERT INTO nota (projeto, avaliador, nota) VALUES (2, 19, 0.902);
INSERT INTO nota (projeto, avaliador, nota) VALUES (3, 21, 2.252);
INSERT INTO nota (projeto, avaliador, nota) VALUES (4, 15, 1.734);
INSERT INTO nota (projeto, avaliador, nota) VALUES (5, 10, 1.507);
INSERT INTO nota (projeto, avaliador, nota) VALUES (6, 3, 8.989);
INSERT INTO nota (projeto, avaliador, nota) VALUES (7, 18, 4.772);
INSERT INTO nota (projeto, avaliador, nota) VALUES (8, 47, 8.173);
INSERT INTO nota (projeto, avaliador, nota) VALUES (9, 33, 0.015);
INSERT INTO nota (projeto, avaliador, nota) VALUES (10, 8, 0.029);
INSERT INTO nota (projeto, avaliador, nota) VALUES (11, 26, 5.745);
INSERT INTO nota (projeto, avaliador, nota) VALUES (12, 33, 0.364);
INSERT INTO nota (projeto, avaliador, nota) VALUES (13, 28, 6.936);
INSERT INTO nota (projeto, avaliador, nota) VALUES (14, 1, 6.717);
INSERT INTO nota (projeto, avaliador, nota) VALUES (15, 26, 3.777);
INSERT INTO nota (projeto, avaliador, nota) VALUES (16, 22, 3.691);
INSERT INTO nota (projeto, avaliador, nota) VALUES (17, 3, 5.376);
INSERT INTO nota (projeto, avaliador, nota) VALUES (18, 46, 1.725);
INSERT INTO nota (projeto, avaliador, nota) VALUES (19, 35, 1.456);
INSERT INTO nota (projeto, avaliador, nota) VALUES (20, 40, 7.23);
INSERT INTO nota (projeto, avaliador, nota) VALUES (21, 18, 6.589);
INSERT INTO nota (projeto, avaliador, nota) VALUES (22, 17, 5.582);
INSERT INTO nota (projeto, avaliador, nota) VALUES (23, 39, 3.781);
INSERT INTO nota (projeto, avaliador, nota) VALUES (24, 42, 0.256);
INSERT INTO nota (projeto, avaliador, nota) VALUES (25, 45, 8.568);
INSERT INTO nota (projeto, avaliador, nota) VALUES (26, 15, 7.033);
INSERT INTO nota (projeto, avaliador, nota) VALUES (27, 21, 3.973);
INSERT INTO nota (projeto, avaliador, nota) VALUES (28, 29, 5.212);
INSERT INTO nota (projeto, avaliador, nota) VALUES (29, 10, 9.3);
INSERT INTO nota (projeto, avaliador, nota) VALUES (30, 24, 9.721);
INSERT INTO nota (projeto, avaliador, nota) VALUES (31, 46, 3.291);
INSERT INTO nota (projeto, avaliador, nota) VALUES (32, 42, 5.345);
INSERT INTO nota (projeto, avaliador, nota) VALUES (33, 43, 0.145);
INSERT INTO nota (projeto, avaliador, nota) VALUES (34, 33, 5.737);
INSERT INTO nota (projeto, avaliador, nota) VALUES (35, 40, 4.909);
INSERT INTO nota (projeto, avaliador, nota) VALUES (36, 5, 9.677);
INSERT INTO nota (projeto, avaliador, nota) VALUES (37, 48, 8.817);
INSERT INTO nota (projeto, avaliador, nota) VALUES (38, 49, 1.033);
INSERT INTO nota (projeto, avaliador, nota) VALUES (39, 27, 3.661);
INSERT INTO nota (projeto, avaliador, nota) VALUES (40, 25, 8.715);
INSERT INTO nota (projeto, avaliador, nota) VALUES (41, 24, 9.042);
INSERT INTO nota (projeto, avaliador, nota) VALUES (42, 43, 7.004);
INSERT INTO nota (projeto, avaliador, nota) VALUES (43, 29, 5.243);
INSERT INTO nota (projeto, avaliador, nota) VALUES (44, 33, 6.694);
INSERT INTO nota (projeto, avaliador, nota) VALUES (45, 36, 0.744);
INSERT INTO nota (projeto, avaliador, nota) VALUES (46, 41, 5.072);
INSERT INTO nota (projeto, avaliador, nota) VALUES (47, 41, 4.087);
INSERT INTO nota (projeto, avaliador, nota) VALUES (48, 12, 3.473);
INSERT INTO nota (projeto, avaliador, nota) VALUES (49, 33, 1.547);
