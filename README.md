## PToPI – A Research Compedium of
# Multi-Perspective Analysis of Binary-Classification Performance Evaluation Instruments

[![Last-changedate](https://img.shields.io/badge/last%20change-2019--06--20-brightgreen.svg)](https://github.com/gurol/ptopi) [![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)  [![ORCiD](https://img.shields.io/badge/ORCiD-0000--0002--9337--097X-green.svg)](https://orcid.org/0000-0002-9337-097X)

This platform is a research compedium of our academic publication below.

> [Gürol Canbek](http:gurol.canbek.com/Publications), Tugba Taskaya Temizel, and Seref Sagiroglu (2020). Multi-Perspective Analysis of Binary-Classification Performance Evaluation Instruments, *Information Processing & Management*, Elsevier (Submitted).

The platform provides the following materials:
- **PToPI.xlsx**: Periodic Table of (Binary-Classification) Performance (Evaluation) Instruments (open with Microsoft Excel™)
- **PToPI.dot**, **PToPI_NonRedundantMetricsOnly.dot**, and **BicPiT.pdf**: Dependency graph codes and outputs for 49 performance measures and metrics ([Graphviz file](https://www.graphviz.org)). You can try dot files online at (https://edotor.net)
- **accbarrier.R**: Open-source R script for calculating the new classification **performance indicator called Accuracy Barrier (*ACCBAR*)** ([R](https://www.r-project.org) file)

![](images/PToPI_v3_3.png)

An exploratory table (PToPI) presents the novel concepts introduced from multi-perspective analysis of **50 binary-classification performance instruments** (measures, metrics, and indicators). It is like a "periodic table of elements" in chemisstry.
The indicator is proposed in the article above to identify whether the classification performance is close to random classifier's performance.
PToPI.xlsx file also provides a sheet to calculate Accuracy Barrier (*ACCBAR*) indicator values and categories interactively.

Please, refer to http://dx.doi.org/10.17632/5c442vbjzg.2 for the Mendeley Data (**Binary-Classification Performance Evaluation Reporting Survey Data with the Findings**) providing comprehensive findings related to binary-classification performance evaluation reporting issues of **78 academic studies** within the last 7 years (2012–2018) that model some machine learning based **Android malware detection classifiers** and report their performance evaluation using some metrics.

**Note**: Please, cite our article if you would like to use and/or adapt the code, datasets, methodology, and other materials provided and let us know. Thank you for your interest. Be aware that **the exploratory table PToPI is a copyrighted material** and all rights are reserved by Gürol Canbek. You can use PToPO for personal purposes or academical studies by giving a citation to the article above.

The following measures/metrics are presented in PToPI: BIAS: Bias, CKc: Cohen's Kappa Chance, DET: Determinant, DPR: D Prime, LRN: Likelihood Ratio Negative, LRP: Likelihood Ratio Positive, NER: Null Error Rate, NIR: No Information Rate (non-information rate), PREV: Prevalence, SKEW: (Class) Skew, DP: Discriminant Power, HC: Class Entropy, HO: Outcome Entropy, OR: Odds Ratio, ACC: Accuracy (efficiency, rand index), AUC: Area Under Curve, CRR: (Correct) Rejection Rate, DR: Detection Rate, FDR: False Discovery Rate, FNR: False Negative Rate, FOR: False Omission Rate (imprecision), FPR: False Positive Rate, HOC: Joint Entropy, MCR: Misclassification Rate, MI: Mutual Information, NPV: Negative Predictive Value, PPV: Positive Predictive Value (precision, confidence), TNR: True Negative Rate (inverse recall, specificity), TPR: True Positive Rate (recall, sensitivity, hit rate, recognition rate), BACC: Balanced Accuracy (strength), CK: Cohen's Kappa (Heidke skill score, quality index), Fm: F-metrics, F1: F1 (F-score, F-measure, positive specific agreement), G: G-metric (G-mean, Fowlkes-Mallows index), INFORM: Informedness (Youden’s index, delta P', Peirce skill score), MARK: Markedness (delta P, Clayton skill score, predictive summary index), nMI: Normalized Mutual Information, WACC: Weighted Accuracy, MCC: Matthews Correlation Coefficient (Phi correlation coefficient, Cohen’s index, Yule phi)
