FROM ghcr.io/turbot/steampipe
ARG PLUGINS

# Setup prerequisites (as root)
USER root:0
RUN apt-get update -y \
 && apt-get install -y git
# Install the aws and steampipe plugins for Steampipe (as steampipe user).
USER steampipe:0
RUN  steampipe plugin install steampipe ${PLUGINS}
# Install Mods
RUN git clone --depth 1 https://github.com/turbot/steampipe-mod-aws-insights.git ~/steampipe-mod-aws-insights
RUN git clone --depth 1 https://github.com/turbot/steampipe-mod-aws-compliance.git ~/steampipe-mod-aws-compliance