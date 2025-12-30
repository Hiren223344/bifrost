FROM ubuntu:22.04

WORKDIR /app

RUN echo '#!/bin/sh\nwhile true; do echo "Running on 7860"; sleep 10; done' > app.sh \
 && chmod +x app.sh

EXPOSE 7860

CMD ["sh", "/app/app.sh"]
