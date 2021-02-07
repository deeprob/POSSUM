feattypes=(aac_pssm d_fpssm smoothed_pssm ab_pssm pssm_composition rpm_pssm s_fpssm dpc_pssm k_separated_bigrams_pssm tri_gram_pssm eedp tpc edp rpssm pse_pssm dp_pssm pssm_ac pssm_cc aadp_pssm aatp medp)

for i in "${feattypes[@]}"
do
  echo $i
  bash generatePSSMfeature.sh $i
done