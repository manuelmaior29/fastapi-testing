from fastapi import FastAPI
app = FastAPI(title="Test FastAPI application")

@app.get('/')
def index():
    return {'message': "Just a test FastAPI application."}