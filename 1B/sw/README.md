# Prize 1b: End-to-End Proof Acceleration for Poseidon-Merkle Tree Circuit

## Bench

To run build and run the bench, run `cargo bench --bench zprize_bench`.

### Runtime requirements

  1. Xilinx host-memory access of (at least) 1GB needs to be enabled.
     `sudo xbutil configure --host-mem enable -s 1G`

### Compile requirements

  1. Rust
  2. XRT runtime
  3. GMP library (libgmp-dev)

## Summary
This track focuses on end-to-end hardware acceleration for Poseidon-Merkle circuit using the BLS12-381 curve. Hashing is one of the most critical operations in state-of-the-art zero-knowledge applications. The Poseidon-Merkle algorithm is considered a zero-knowledge friendly cryptographic hash function.

The choice of SNARK in this case is PLONK instantiated with the BLS12-381 curve and the KZG polynomial commitment scheme. The target library is the [zkGarage](https://github.com/ZK-Garage/plonk).

## Optimization Objective
Generate a PLONK proof for the circuit C:
  - with the KZG polynomial commitment instantiated using the BLS12-381 curve 
  - with the lowest latency

The circuit C is defined as: Compute a Merkle tree of height 15, where the intermediate gate is the Poseidon Hash H with hardcoded width 3 (using the winner of [Open Division Prize 6, ZPrize 2022](https://github.com/ZK-Garage/plonk/pull/164)). The input to the Poseidon hash on the leaf node is an element from the scalar field of BLS12-381.

## Constraints 
  - Sufficient documentation must be provided along with the implementation.
  - Only a single GPU/FPGA may be used; the problem may not be parallelized across multiple hardware instances.
  - Submissions may be written in any language. The provided test harness, however, will be in Rust. So competitors submitting solutions using other languages will be required to create their own Rust bindings.

The [test harness repo](https://github.com/cysic-labs/ZPrize-23-Prize1/tree/main/Prize%201B) consists of the following:
  - The CPU implementation of both the prover and verifier. 
  - A baseline FPGA implementation provided by Cysic around mid Feburary.
  - A baseline GPU implementation provided by Trapdoor Tech around mid Feburary.

## Timeline
  - April 15 – Competition begins.
  - May 30 – Mid-competition IPR.
  - September 30 – Deadline for submission.
  - Beginning of October  – Winner(s) announced.

## Judging
Submissions will be checked for correctness and ranked by performance. In addition, documentation (in English) must be provided along with the implementation. The documentation can be written in-line or as a separate document. It should be thorough and explanatory enough to provide an understanding of the techniques used in the submitted implementation without requiring an associated verbal explanation.

### Correctness
The final correctness of the submission will be tested using randomly sampled test inputs/outputs that are not disclosed to the competitors during the competition and the verifier program provided by the architect. Your submission needs to pass the verifier specified in the test harness to be eligible for winning the prize. Submissions that fail any test cases will be judged as incorrect and lose the opportunity to win the prize.

### Performance
Given an input vector consisting of X field elements, participants will compute a PLONK proof for the above circuit G, using KZG polynomial commitment and BLS12-381 curve. For scoring, performance will be measured in latency relative to the energy consumed in the proof generation process. The winning submission will be the one with the best scores across ten trials.

The committee understands that accelerating every part of the proof generation process for the above circuit is challenging in the competition period. Therefore, please use your time wisely in the engineering process. It is acceptable that your work is built upon the results of ZPrize 2022.

## Hardware and Benchmarks 
Competitors will be given access to one of the following:
  - A dedicated instance of baseline image consisting of 8 cores of AMD EPYC 75F3, an RTX 6000 Ada GPU and 128 GB memory.
  - A dedicated instance of baseline image consisting of 8 cores of AMD EPYC 7742, an U250 FPGA card and 128 GB memory.

## Prize Allocation
The total prize award is $400k + 250k Aleo credits. The GPUs and FPGAs will be scored in a unified way, using performance related to the energy consumption. More specicially, the score is calulcated based as the joules needed to generated 10 such proofs. The prize will be divided into FPGA and GPU track, where the prize for each track is proportional to the number of eligible submissions. The first place takes 65% of the award, while the second and third place take 25% and 10% respectively. For instance, in a competition with X GPU teams and Y FPGA teams, if a team wins the first prize in GPU track, then the prize the team gets is X/(X + Y) * 500k * 65%.

Prizes will be awarded in good faith and at the sole discretion of the prize committee members.

## Notes
All submission code must be open-sourced at the time of submission. Code and documentation must be dual-licensed under both the MIT and Apache-2.0 licenses

If you have any questions, please contact Leo at Cysic: leo@cysic.xyz or use the [Discord channel](https://discord.gg/sCGyGxTEX5).
