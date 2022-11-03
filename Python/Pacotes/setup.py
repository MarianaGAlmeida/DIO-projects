from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="modelos_dea",
    version="0.0.2",
    author="Mariana G Almeida",
    author_email="marianamgda@gmail.com",
    description="Modelos DEA 'envelope' e 'dos multiplicadores' com variados números de insumos e produtos",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="https://github.com/MarianaGAlmeida/DIO-Python/tree/main/modelos_DEA"
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.0',
)