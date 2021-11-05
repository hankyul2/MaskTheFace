source ~/.bashrc
python3 mask_the_face.py --path /home/hankyul/hdd_ext/face/jpg/CelebAMask-HQ/CelebA-HQ-img --mask_type surgical --verbose
cd /home/hankyul/hdd_ext/face/jpg
mv CelebA-HQ-img_masked full_masked
mv CelebA-HQ-img_masked_seg full_masked_seg
cd /home/hankyul/prive/MaskTheFace
python3 mask_the_face.py --path /home/hankyul/hdd_ext/face/jpg/CelebAMask-HQ/CelebA-HQ-img --mask_type kf94 --verbose
cd /home/hankyul/hdd_ext/face/jpg
mv CelebA-HQ-img_masked half_masked
mv CelebA-HQ-img_masked_seg half_masked_seg
gdrive upload -r full_masked
gdrive upload -r full_masked_seg
gdrive upload -r half_masked
gdrive upload -r half_masked_seg