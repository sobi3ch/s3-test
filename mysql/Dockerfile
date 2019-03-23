FROM mysql

# -- https://docs.docker.com/config/containers/multi-service_container/
COPY my_helper_process.sh my_helper_process.sh
COPY my_wrapper_script.sh my_wrapper_script.sh
CMD  ./my_wrapper_script.sh
