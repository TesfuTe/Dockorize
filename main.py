from fastapi import FastAPI


app = FastAPI()


@app.get("/add_numbers")
def add_numbers(a: int, b: int):
    return {f"Sum of {a} and {b} is": a + b}


@app.get("/subtract_numbers")
def subtract_numbers(a: int, b: int):
    return {f"Difference of {a} and {b} is": a - b}
