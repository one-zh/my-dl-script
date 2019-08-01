export CUDA_VISIBLE_DEVICES='0,1'
FLAGS="
--num_gpus 2
--work_mode train
--strategy ps 
--staged_vars True
"
single_dir="logs/single/"
log_path=${single_dir}staged_train_ps_4g.log
touch ${log_path}
python imagenet_train.py ${FLAGS}  >${log_path} 2>&1 &
tail -f ${log_path}
