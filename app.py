import solver
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/solve")
async def solve():
    response = await solver.solver("https://modrinth.com/auth/sign-up","0x4AAAAAAAHWfmKCm7cUG869");
    return response;
