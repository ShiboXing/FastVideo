
python -m build
# 卸载所有nvidia的pip产出
pip freeze | grep ^nvidia- | cut -d '=' -f 1 | xargs pip uninstall -y 
# 对cuda runtime有依赖的包全部卸载
pip uninstall xmlir torch torchvision torchaudio -y 


# 此步骤会顺带安装cu118的链接库, 注意看日志防止cu112相关包再次被安装
pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.5.1 --index-url https://download.pytorch.org/whl/cu118 
