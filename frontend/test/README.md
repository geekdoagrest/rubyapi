# Ambiente de Testes
Para os testes de aceitação utilizamos o [Cucumber JS](https://github.com/cucumber/cucumber-js) e [Selenium Web Driver](https://www.npmjs.com/package/selenium-webdriver) e [Capybara](https://github.com/teamcapybara/capybara), caso precise incluir novos testes, procure a pasta [/test/features](/test/features). Para rodar os testes em ambiente de desenvolvimento, entre na pasta [/test](/test) e rode docker compose com o comando abaixo:

#### Para subir o Ambiente de Testes basta rodar o comando a baixo:
```
docker-compose up --abort-on-container-exit
```

# Processo para criar a imagem manualmente

A imagem é criada manualmente para que o processo de CI seja mais rápido. Este processo acabava demorando muito e foi resolvido com o ticket #65.

#### 1. Login
Para acesso faça login no registry do git lab
```
docker login registry.gitlab.com
```

#### 2. Build
Compile a imagem
```
docker build -t registry.gitlab.com/sitevagalume/www/frontend/tests/ruby-cucumber .
```

#### 3. Push
Publique manualmente no Gitlab

```
docker push registry.gitlab.com/sitevagalume/www/frontend/tests/ruby-cucumber
```