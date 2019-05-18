# README

* Database
 
> Caso precise gerar registros rodar o comando a baixo:
```shell
$ rails db:seed
```
* TDD/BDD/ANALYTICS
Para os testes unitários escolhi o RSpec, e para os testes de aceitação o Capybara.

> Para rodar os testes rode o comando a baixo:
```shell
docker-compose run web rake spec
```

> Para rodar o rubocop:
```shell
docker-compose run web rubocop -a
```

## Deploy
* Desenvolvimento

Para o desenvolvimento da aplicação utilizei uma instancia do [code-server](https://github.com/cdr/code-server) e todo o ambiente foi montando com o docker.
* Staging

Para o ambiente de staging escolhi uma instancia [EC2 na AWS](https://aws.amazon.com/pt/ec2/), por questões de custo/tempo não identifiquei a nescessidade de configurar as polices do [AWS WAF](https://aws.amazon.com/pt/waf/), [CloudFront](https://aws.amazon.com/pt/cloudfront/) e etc. Porem para produção os mesmos se fazem indispensáveis.
* Produção

Para o ambiente de produção o mais correto seriamos utilizar o [TerraForm](https://www.terraform.io/), e deixar as configurações de infra junto do repositório, isso facilitaria as migrações entre os provedores. 
Em caso de escala horizontal procurei manter um nginx configurado, e a aplicação em uma imagem docker separada, assim podemos escalar a aplicação independentimente do banco ou proxy.

## API
A documentação da a API é feita automaticamente pela Gen *apipie*, para consultar acesse a url: /doc

## Frontend
Para os testes de aceitação utilizamos o [Cucumber JS](https://github.com/cucumber/cucumber-js), [Selenium Web Driver](https://www.npmjs.com/package/selenium-webdriver) e [Capybara](https://github.com/teamcapybara/capybara), caso precise incluir novos testes, procure a pasta [/test/features](/test/features). Para rodar os testes em ambiente de desenvolvimento, entre na pasta [/test](/test) e rode docker compose com o comando abaixo:
Acesse a pasta: /frontend/test e rode o comando a baixo:
```
docker-compose up --abort-on-container-exit
```