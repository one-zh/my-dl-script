export CUDA_VISIBLE_DEVICES='3,4'
FLAGS="
--num_gpus 2
--work_mode test 
--strategy ps 
"
single_dir="logs/single/"
log_path=${single_dir}train_ps_4g.log
touch ${log_path}
python imagenet_train.py ${FLAGS}  >${log_path} 2>&1 &
tail -f ${log_path}
