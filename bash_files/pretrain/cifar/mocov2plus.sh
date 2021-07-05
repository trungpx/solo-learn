python3 ../../../main_contrastive.py \
    --dataset $1 \
    --encoder resnet18 \
    --data_folder ../datasets \
    --max_epochs 1000 \
    --gpus 0 \
    --precision 16 \
    --optimizer sgd \
    --scheduler cosine \
    --lr 0.03 \
    --classifier_lr 0.03 \
    --weight_decay 1e-4 \
    --batch_size 256 \
    --num_workers 4 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.4 \
    --hue 0.1 \
    --min_scale_crop 0.2 \
    --name mocov2plus-$1 \
    --project solo-learn \
    --entity unitn-mhug \
    --wandb \
    --method mocov2plus \
    --proj_hidden_dim 512 \
    --queue_size 32768 \
    --temperature 0.07 \
    --base_tau_momentum 0.999 \
    --final_tau_momentum 0.999 \
    --momentum_classifier
