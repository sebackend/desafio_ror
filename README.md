# Desafío Cumplo

Para consultar el TMC de un monto y fecha, se utiliza el endpoint donde se aloja el proyecto (Heroku)

[https://cumplocl.herokuapp.com/api/v1/credit_queries/tmc](https://cumplocl.herokuapp.com/api/v1/credit_queries/tmc)

Los parámetros que recibe son

* **uf_amount**: Monto en UF
* **term_days**: plazo en días
* **target_date**: fecha por la cual se desea consulta el valor de la TMC
* **code_type** (OPCIONAL): Tipo de operación, si no se incluye, se tomará el primer resultado que entregue la SBIF

Ejemplo:
[https://cumplocl.herokuapp.com/api/v1/credit_queries/tmc?uf_amount=1000&term_days=90&target_date=2020-02-20&code_type=45](https://cumplocl.herokuapp.com/api/v1/credit_queries/tmc?uf_amount=1000&term_days=90&target_date=2020-02-20&code_type=45)

La respuesta que entrega será un JSON con el detalle de la consulta y entre ellos, el valor del TMC (**tmc_val**)

    {"uf_amount": "1000.0","term_days": 90,"target_date": "2020-02-20","tmc_val": "34.82","code_type": 45}

Adicionalmente, se agregaron test básicos para validación de modelo y de requests con rspec, shoulda_matchers, factory_bot, para ello basta con ejecutar en la terminal:

    $ bundle exec rspec
