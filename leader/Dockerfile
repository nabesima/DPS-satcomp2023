FROM dps-satcomp2023:common AS builder

# Copy DPS binary
FROM satcomp-infrastructure:leader
WORKDIR /
COPY --from=builder /DPS-1.4.3-sc2023 .

# COpy DPS script
COPY --chown=ecs-user /init-DPS.sh /competition
COPY --chown=ecs-user /run-DPS.sh /competition
COPY --chown=ecs-user /solver /competition
USER ecs-user
RUN chmod +x /competition/init-DPS.sh
RUN chmod +x /competition/run-DPS.sh
RUN chmod +x /competition/solver