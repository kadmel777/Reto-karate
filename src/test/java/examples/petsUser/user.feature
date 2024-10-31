Feature: crear un usuario

  Scenario: Crear un nuevo usuario
    Given url 'https://petstore.swagger.io/v2/user/createWithList'
    And header accept = 'application/json'
    And header Content-Type = 'application/json'
    And request [{ "id": 100, "username": "sofkamilo", "firstName": "camilo", "lastName": "pruebas", "email": "camilo@prueba.com", "password": "hola", "phone": "3137777777", "userStatus": 0 }]
    When method post
    Then status 200
    And match response == { "code": 200, "type": "unknown", "message": "ok" }

  Scenario: Buscar el usuario creado
    Given url 'https://petstore.swagger.io/v2/user/sofkamilo'
    When method get
    Then status 200
    And match response.username == 'sofkamilo'
    And match response.firstName == 'camilo'
    And match response.lastName == 'pruebas'
    And match response.email == 'camilo@prueba.com'

  Scenario: Actualizar el nombre, correo y otros datos de un usuario existente
    Given url 'https://petstore.swagger.io/v2/user/sofkamilo'
    And header accept = 'application/json'
    And header Content-Type = 'application/json'
    And request {"id": 100,"username": "sofkamilo","firstName": "nuevoNombre","lastName": "nuevoApellido","email": "nuevoEmail@prueba.com","password": "nuevaPassword","phone": "3131111111","userStatus": 0}
    When method put
    Then status 200
    And  match response contains { "code": 200, "type": "unknown" }

  Scenario: Buscar el usuario actualizado
    Given url 'https://petstore.swagger.io/v2/user/sofkamilo'
    When method get
    Then status 200
    And match response.username == 'sofkamilo'
    And match response.firstName == 'nuevoNombre'
    And match response.lastName == 'nuevoApellido'
    And match response.email == 'nuevoEmail@prueba.com'

  Scenario: Eliminar el usuario creado
    Given url 'https://petstore.swagger.io/v2/user/sofkamilo'
    And header accept = 'application/json'
    When method delete
    Then status 200
    And match response ==  {"code":200,"type":"unknown","message":"sofkamilo"}
