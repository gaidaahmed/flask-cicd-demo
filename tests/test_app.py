from app import create_app

def test_home():
    app = create_app()
    client = app.test_client()
    resp = client.get("/")
    assert resp.status_code == 200
    assert b"Hello from Flask CI/CD Demo" in resp.data
