export CUDA_VISIBLE_DEVICES='2,3'
TRAIN_FLAGS="
--strategy ps 
--task_index 0 
--worker_hosts snode1:19977,snode2:19978
--work_mode train 
--num_gpus 2 
--learning_rate 0.01
--optimizer rmsprop
--batch_size 128
"
dist_dir="./logs/dist/"
python imagenet_train.py ${TRAIN_FLAGS} > ${dist_dir}ps_train_2g_rmsp.log 2>&1 & 
