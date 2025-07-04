from fastapi import FastAPI

app = FastAPI(
    title="Spoorthy FastAPI App",
    description="An example app with Swagger & ReDoc",
    version="1.0.0"
)

@app.get("/")
def home():
    return {"message": "Hello from FastAPI!"}

@app.get("/about")
def about():
    return {"info": "This is a demo app built by Spoorthy using FastAPI."}
