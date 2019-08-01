export CUDA_VISIBLE_DEVICES='0,1,2,3'
TRAIN_FLAGS="
--strategy ps 
--task_index 0 
--worker_hosts snode1:1997,snode2:1997
--work_mode test 
--num_gpus 4 
--learning_rate 0.8
"
dist_dir="./logs/dist/"
python imagenet_train.py ${TRAIN_FLAGS} > ${dist_dir}allreduce_train_2g.log 2>&1 & 
