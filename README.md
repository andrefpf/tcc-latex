# Instruções

Pra facilitar a vida e não instalar (quase) nada, crie uma imagem do docker.

    docker build -t tcc:doc -f Dockerfile .

E execute o que quiser com um ./dock no início. Exemplo:

    ./dock make src/proposta.tex
    ./dock make clean
    ./dock ...