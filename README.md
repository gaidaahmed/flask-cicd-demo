cat > README.md <<'EOF'
# Flask CI/CD Demo 🚀
App Flask minimale avec tests PyTest, Dockerfile et pipeline GitHub Actions.
Image publiée automatiquement sur GitHub Container Registry (GHCR).

## Local
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
python run.py

## Docker local
docker build -t flask-cicd-demo .
docker run -p 5000:5000 flask-cicd-demo

## Image publique
docker pull ghcr.io/gaidaahmed/flask-cicd-demo:latest
docker run -p 5000:5000 ghcr.io/gaidaahmed/flask-cicd-demo:latest
![CI/CD](https://github.com/gaidaahmed/flask-cicd-demo/actions/workflows/ci-cd.yml/badge.svg)
