export timestamp=$(date +%Y%m%d_%H%M%S) && 
export T_DIR=tests && 
export T_FL=test-plan.jmx &&
export IMAGE=jmdocker/jmeter:5.1.1 && 
docker run -v ${PWD}:${PWD} ${IMAGE} -n -t ${PWD}/${T_DIR}/${T_FL} -l ${PWD}/${T_DIR}/result_${timestamp}.jtl -j ${PWD}/${T_DIR}/jmeter_${timestamp}.log
