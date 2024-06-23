import random
import requests
import json

scientific_projects = [
    {
        "title": "Genome Sequencing and Analysis",
        "field": "Genetics",
        "description": "Sequencing the DNA of various organisms to understand genetic makeup and variation.",
        "tools": ["Illumina Sequencers", "Python", "Biopython"],
        "duration": "1 year",
    },
    {
        "title": "Climate Change Impact Assessment",
        "field": "Environmental Science",
        "description": "Assessing the impact of climate change on local ecosystems using climate models and field data.",
        "tools": ["R", "ArcGIS", "QGIS"],
        "duration": "2 years",
    },
    {
        "title": "Quantum Computing Algorithms",
        "field": "Physics",
        "description": "Developing and testing algorithms for quantum computers to solve complex problems faster than classical computers.",
        "tools": ["Qiskit", "Python", "IBM Quantum Experience"],
        "duration": "6 months",
    },
    {
        "title": "Renewable Energy Solutions",
        "field": "Engineering",
        "description": "Designing and testing new renewable energy systems to improve efficiency and sustainability.",
        "tools": ["MATLAB", "Simulink", "AutoCAD"],
        "duration": "1.5 years",
    },
    {
        "title": "Artificial Intelligence in Medicine",
        "field": "Computer Science",
        "description": "Applying AI and machine learning techniques to diagnose diseases and predict patient outcomes.",
        "tools": ["TensorFlow", "Keras", "Python"],
        "duration": "1 year",
    },
    {
        "title": "Biodiversity Conservation Strategies",
        "field": "Biology",
        "description": "Developing strategies to protect endangered species and preserve biodiversity in various habitats.",
        "tools": ["R", "Python", "ArcGIS"],
        "duration": "2 years",
    },
    {
        "title": "Nanomaterials for Drug Delivery",
        "field": "Chemistry",
        "description": "Creating and testing nanomaterials to improve the delivery and effectiveness of pharmaceuticals.",
        "tools": ["ChemDraw", "MATLAB", "Python"],
        "duration": "1 year",
    },
    {
        "title": "Robotics and Automation",
        "field": "Engineering",
        "description": "Designing and programming robots for various applications in industry and everyday life.",
        "tools": ["ROS (Robot Operating System)", "Python", "C++"],
        "duration": "1.5 years",
    },
    {
        "title": "Astrophysical Simulations",
        "field": "Astronomy",
        "description": "Running simulations to understand the formation and evolution of celestial bodies and systems.",
        "tools": ["Python", "MATLAB", "Fortran"],
        "duration": "2 years",
    },
    {
        "title": "Behavioral Economics Studies",
        "field": "Economics",
        "description": "Studying the psychological factors that influence economic decision-making and market outcomes.",
        "tools": ["R", "Stata", "Python"],
        "duration": "1 year",
    },
    {
        "title": "Renewable Energy Integration",
        "field": "Environmental Science",
        "description": "Investigating the integration of renewable energy sources into the power grid.",
        "tools": ["HOMER Energy", "Python", "MATLAB"],
        "duration": "2 years",
    },
    {
        "title": "Neuroscience of Learning",
        "field": "Neuroscience",
        "description": "Studying the neural mechanisms underlying learning and memory.",
        "tools": ["fMRI", "EEG", "Python"],
        "duration": "1.5 years",
    },
    {
        "title": "Urban Heat Island Effect",
        "field": "Environmental Science",
        "description": "Analyzing the impact of urbanization on local climate and developing mitigation strategies.",
        "tools": ["ArcGIS", "ENVI", "Python"],
        "duration": "1 year",
    },
    {
        "title": "Bioinformatics Pipeline Development",
        "field": "Bioinformatics",
        "description": "Creating automated pipelines for analyzing large-scale genomic data.",
        "tools": ["Snakemake", "Python", "R"],
        "duration": "6 months",
    },
    {
        "title": "Microbial Fuel Cells",
        "field": "Microbiology",
        "description": "Exploring the use of bacteria to generate electricity from waste materials.",
        "tools": ["GC-MS", "Python", "MATLAB"],
        "duration": "1 year",
    },
    {
        "title": "Machine Learning for Drug Discovery",
        "field": "Chemistry",
        "description": "Applying machine learning techniques to accelerate the discovery of new pharmaceuticals.",
        "tools": ["TensorFlow", "Python", "RDKit"],
        "duration": "1.5 years",
    },
    {
        "title": "Human-Robot Interaction",
        "field": "Robotics",
        "description": "Studying the interaction between humans and robots to improve user experience and safety.",
        "tools": ["ROS (Robot Operating System)", "Python", "C++"],
        "duration": "1 year",
    },
    {
        "title": "Renewable Agriculture Practices",
        "field": "Agricultural Science",
        "description": "Developing sustainable farming practices to enhance crop yield and soil health.",
        "tools": ["R", "Python", "ArcGIS"],
        "duration": "2 years",
    },
    {
        "title": "Advanced Materials for Electronics",
        "field": "Materials Science",
        "description": "Creating and testing new materials with enhanced electrical properties for electronic devices.",
        "tools": ["COMSOL Multiphysics", "MATLAB", "Python"],
        "duration": "1.5 years",
    },
    {
        "title": "Ecosystem Services Valuation",
        "field": "Environmental Economics",
        "description": "Quantifying the economic value of ecosystem services provided by natural habitats.",
        "tools": ["R", "Stata", "Python"],
        "duration": "1 year",
    },
    {
        "title": "Cybersecurity Threat Analysis",
        "field": "Computer Science",
        "description": "Identifying and mitigating cybersecurity threats using advanced analytics and machine learning.",
        "tools": ["Splunk", "Python", "TensorFlow"],
        "duration": "1 year",
    },
    {
        "title": "Cognitive Behavioral Therapy Research",
        "field": "Psychology",
        "description": "Investigating the effectiveness of cognitive behavioral therapy in treating mental health disorders.",
        "tools": ["SPSS", "R", "Python"],
        "duration": "2 years",
    },
    {
        "title": "Space Weather Monitoring",
        "field": "Astronomy",
        "description": "Studying the impact of solar activity on Earth's magnetosphere and communication systems.",
        "tools": ["IDL", "Python", "MATLAB"],
        "duration": "1.5 years",
    },
    {
        "title": "Greenhouse Gas Emission Reduction",
        "field": "Environmental Science",
        "description": "Developing strategies to reduce greenhouse gas emissions in urban areas.",
        "tools": ["ArcGIS", "R", "Python"],
        "duration": "2 years",
    },
    {
        "title": "Biodegradable Plastics Development",
        "field": "Materials Science",
        "description": "Creating and testing new biodegradable plastics to reduce environmental impact.",
        "tools": ["FTIR", "SEM", "Python"],
        "duration": "1 year",
    },
]


tree_knoledge = [
    "Ciências Agrárias",
    "Ciências Biológicas",
    "Ciências da Saúde",
    "Ciências Exatas e da Terra",
    "Engenharias",
    "Ciências Humanas",
    "Ciências Sociais Aplicadas",
    "Linguistica, Letras e Artes",
]
# department = [
#     "Departamento de Ciências Agrárias",
#     "Departamento de Ciências Biológicas",
#     "Departamento de Ciências da Saúde",
#     "Departamento de Ciências Exatas e da Terra",
#     "Departamento de Engenharias",
#     "Departamento de Ciências Humanas",
#     "Departamento de Ciências Sociais Aplicadas",
#     "Departamento de Linguistica, Letras e Artes",]


def extract_uppercase(text):
    lines = text.split("\n")
    uppercase_letters = []

    for line in lines:
        uppercase_line = "".join([char for char in line if char.isupper()])
        uppercase_letters.append(uppercase_line)

    return uppercase_letters


def generate_avaliador():
    random_number = random.randint(1, len(tree_knoledge))
    nome = json.loads(requests.get("https://api.namefake.com/").text)["name"]
    return f'INSERT INTO avaliador (nome, departamento, area_do_conhecimento) VALUES ("{nome}", "{random_number}", "{random_number}");\n'


def generate_escola():
    nome = json.loads(requests.get("https://api.namefake.com/").text)["name"]
    nome2 = json.loads(requests.get("https://api.namefake.com/").text)["name"]
    return f'INSERT INTO escola (nome, endereco) VALUES ("Escola {nome}", "Rua {nome2}");\n'


def generate_evento(edicao):
    return f'INSERT INTO evento (nome, edicao) VALUES ("Feira de ciência e tecnologia", {edicao});\n'


def generate_projeto():
    projeto = random.choice(scientific_projects)
    return f'INSERT INTO projeto (titulo, estudante, resumo, area_do_conhecimento, evento) VALUES ("{projeto["title"]}", {random.randint(1,50)}, "{projeto["description"]}", "{random.randint(1,len(tree_knoledge))}", {random.randint(1,49)});\n'


def generate_estudante():
    nome = json.loads(requests.get("https://api.namefake.com/").text)["name"]
    return f'INSERT INTO estudante (nome, ano, escola) VALUES ("{nome}", {random.randint(1,9)}, {random.randint(1,20)});\n'


def generate_notas(number, avaliador):
    return f"INSERT INTO nota (projeto, avaliador, nota) VALUES ({number}, {avaliador}, {round(random.uniform(0,10),3)});\n"


f = open("script2.sql", "w", encoding="utf8")
# [
#     f.write(
#         f'INSERT INTO departamento (nome, acronimo) VALUES ("Departamento de {x}", "D{extract_uppercase(x)[0]}");\n'
#     )
#     for x in tree_knoledge
# ]
# [
#     f.write(f'INSERT INTO area_do_conhecimento (nome) VALUES ("{x}");\n')
#     for x in tree_knoledge
# ]
# [f.write(generate_escola()) for x in range(0, 20, 1)]
# [f.write(generate_estudante()) for x in range(0, 50, 1)]
# [f.write(generate_evento(x)) for x in range(1, 50, 1)]
# [f.write(generate_projeto()) for x in range(1, 50, 1)]
# [f.write(generate_avaliador()) for i in range(0, 50, 1)]

for i in range(1, 50, 1):
    avaliador = random.randint(1, 49)
    f.write(generate_notas(i, avaliador))
f.close()
