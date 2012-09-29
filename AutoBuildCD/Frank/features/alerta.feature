Feature: Alerta de bem-vindo

Scenario: Ao clicar no botao de ola um alerta deve ser exibido
Given I launch the app
Then I should see a button

When I touch the button marked "Ola"
Then I should see an alert view titled "Bem vindo"