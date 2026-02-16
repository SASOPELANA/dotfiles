# HTTPie - Guia rapida

## GET

```sh
http GET :5000/api/cars
http GET :5149/api/cars/1
```

## POST (crear un carro)

```sh
http POST :5149/api/cars \
    brand=Toyota \
    model=Corolla \
    price:=2000000 \
    year:=2024
```

## PUT

```sh
http PUT :5149/api/cars/1 \
    brand=Toyota \
    model=Corolla \
    price:=2000000 \
    year:=2024
```

## PATCH (actualizar parcialmente)

```sh
http PATCH :5149/api/cars/4 price:=3500000
```

## DELETE

```sh
http DELETE :5149/api/cars/4
```

## Con token

```sh
http GET :5149/api/cars \
    Authorization:"Bearer TU_TOKEN_FACHERO"
```

```sh
http POST :5149/api/cars \
    Authorization:"Bearer TU_TOKEN_FACHERO" \
    brand=Toyota \
    model=Corolla \
    price:=2000000 \
    year:=2024
```

```sh
http PUT :5149/api/cars/4 \
    Authorization:"Bearer TU_TOKEN_FACHERO" \
    brand=Ford \
    model=Focus \
    price:=3000000 \
    year:=2023
```

```sh
http DELETE :5149/api/cars/4 \
    Authorization:"Bearer TU_TOKEN_FACHERO"
```

## 🧩 Asignaciones en HTTPie y que significan

En HTTPie existen 3 tipos de asignaciones:

### `string =`

```text
brand=Toyota
model="Corolla X"
```

### JSON

```json
{"brand": "Toyota", "model": "Corolla X"}
```

### `campo:=valor`

Numeros, booleanos, null, objetos, arrays.

```text
price:=2000000
year:=2025
active:=true
data:='{"a":1,"b":2}'
tags:='["sedan","nuevo"]'
```

Equivalente a JSON:

```json
{"price": 2000000, "year": 2025, "active": true, "data": {"a":1,"b":2}, "tags": ["sedan","nuevo"]}
```

### `Header:Valor`

```text
Authorization:"Bearer TOKEN123"
Content-Type:application/json
Accept:application/json
```

## Ejemplo completo

```sh
http POST :5149/api/cars \
    Authorization:"Bearer TOKEN123" \
    brand="Toyota" \
    model="Corolla" \
    price:=2000000 \
    year:=2024 \
    active:=true \
    tags:='["nuevo","sedan"]'
```
