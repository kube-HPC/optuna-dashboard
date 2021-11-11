
INGRESS_PREFIX
sed -i "s/\/hkube/${INGRESS_PREFIX}\/hkube/g"  /usr/local/lib/python3.7/site-packages/optuna_dashboard/public/bundle.js
sed -i "s/<BOARD_REFERENCE>/${BOARD_REFERENCE}/g"  /usr/local/lib/python3.7/site-packages/optuna_dashboard/public/bundle.js
if [[ (-z "${OPTUNADB}") ]]; then
    echo "Must supply dbpath."
else 
  optuna-dashboard sqlite:///${OPTUNADB} \
  --port 8080 \
  --host 0.0.0.0
fi
