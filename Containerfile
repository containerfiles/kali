FROM kalilinux/kali-rolling

# Core metapackage only - extend with specific tools as needed
RUN apt-get update && apt-get install -y kali-linux-core

CMD ["/bin/zsh"]