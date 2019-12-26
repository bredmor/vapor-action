FROM bredmorg/laradocker:latest

LABEL repository="https://github.com/bredmor/vapor-action"
LABEL homepage="https://github.com/bredmor/vapor-action"
LABEL maintainer="Morgan Breden <morgan@bredenlabs.com>"

LABEL com.github.actions.name="Laravel Vapor Action"
LABEL com.github.actions.description="Use Laravel Vapor commands in your actions."
LABEL com.github.actions.icon="cloud-lightning"
LABEL com.github.actions.color="blue"

COPY vapor-entrypoint /usr/local/bin/vapor-entrypoint

ENTRYPOINT ["/usr/local/bin/vapor-entrypoint"]
