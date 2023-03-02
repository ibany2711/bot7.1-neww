icon: https://apps.okteto.com/movies/icon.png
build:
  api:
    context: .
deploy:
  - helm upgrade --install app chart --set image=${OKTETO_BUILD_API_IMAGE}
dev:
  api:
    command: ["bash"]
    forward:
      - 8080:8080
      - 9229:9229
    sync:
      - .:/usr/src/app
