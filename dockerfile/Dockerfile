FROM  trivadis/optuna-dashboard:0.4.2

COPY ./run.sh .
COPY ./app.py /usr/local/lib/python3.7/site-packages/optuna_dashboard/app.py
COPY ./bundle.js /usr/local/lib/python3.7/site-packages/optuna_dashboard/public/bundle.js
CMD ["bash","./run.sh"]
