# encoding: utf-8
# language: pt

Funcionalidade: Login
  Objetivo de testar a integridade do frontend

  Cenário: Checando se a listagem está funcionando
    Dado que acesse "/"
    Quando clicar no elemento "#list"
    Então procure pelo elemento "#id"