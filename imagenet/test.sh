export CUDA_VISIBLE_DEVICES='0,1,2,3'
TRAIN_FLAGS="
--strategy ps 
--task_index 0 
--worker_hosts snode1:1997,snode2:1997
--work_mode train 
--num_gpus 4 
--learning_rate 0.8
--optimizer sgd
--batch_size 128
"
python imagenet_train.py ${TRAIN_FLAGS} 
