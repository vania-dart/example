# Use latest stable channel SDK.
FROM dart:stable AS build


# Install the Vania cli from pub.dev
RUN dart pub global activate vania_cli

# Resolve app dependencies.
WORKDIR /www


# Copy app source code (except anything in .dockerignore) and AOT compile app.
COPY . .


# Get dependencies
RUN dart pub get

# 📦 Create a production build
RUN vania build

# Build minimal serving image from AOT-compiled `/server`
# and the pre-built AOT-runtime in the `/runtime/` directory of the base image.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /www/bin/server /bin/

# Expose the server port (useful for binding)
EXPOSE 8000

# Start server.
CMD ["/bin/server"]