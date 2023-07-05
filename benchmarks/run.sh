BENCHMARK_NAME=$1
AGENT_TYPE=$2
BENCH=$3
OS=$(lsb_release -cs)

start_time=$(date +%s)
echo "Started $BENCHMARK_NAME at $start_time"

bash ${BENCH}

finish_time=$(date +%s)
echo "Finished $BENCHMARK_NAME at $finish_time"

duration=$((finish_time - start_time))
echo "Duration of $BENCHMARK_NAME=$duration seconds"

metric="benchmarks,agent=$AGENT_TYPE,os=$OS,benchmark=$BENCHMARK_NAME duration=${duration}"
echo "Publishing $metric with value $duration"
