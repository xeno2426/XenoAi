FROM node:20-slim
RUN npm i -g opencode-ai
CMD ["tail", "-f", "/dev/null"]
