# The script show examples to run svm classifier using both; lexical and acoustic features

# This scipt is an example showing how to train svm classifier using the bigram lexical features.

# build SVM classifier using word sequence

./scripts/svm_multiclass_learn -c 1000 data/vardial2018/train.embedding_SVM data/vardial2018/model > data/vardial2018/log.learn
./scripts/svm_multiclass_classify data/vardial2018/dev.embedding_SVM data/vardial2018/model data/vardial2018/hypothesis > data/vardial2018/log.classify
./scripts/eval.py data/vardial2018/dev.embedding_SVM data/vardial2018/hypothesis > data/vardial2018/log.eval




