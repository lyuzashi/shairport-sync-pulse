FROM mikebrady/shairport-sync

COPY asoundrc /root/.asoundrc

ENV PULSE_SERVER unix:/run/pulse/native
ENV PULSE_COOKIE /run/pulse/cookie

RUN apk add alsa-plugins-pulse

ENTRYPOINT [ "/init", "with-contenv", "/usr/local/bin/shairport-sync" ]
