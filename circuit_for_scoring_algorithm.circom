pragma circom 2.0.0;

template ScoringAlgorithm (num_verts) {
	signal input current_scores[num_verts];
	signal input edge_weights[num_verts*(num_verts-1)/2];
	signal output new_scores[num_verts];
	
  //scoring algorithm logic
}

component main = ScoringAlgorithm();
