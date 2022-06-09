pragma solidity ^0.7.0;

contract SimpleZKrollup {
    uint48 public lastIdx;
    uint32 public lastForgedBatch;
    mapping(uint32 => uint256) public stateRootMap;
    mapping(uint32 => uint256) public exitRootsMap;
    mapping(uint32 => bytes32) public l1L2TxsDataHashMap;
    mapping(uint32 => mapping(uint48 => bool)) public exitNullifierMap;
    mapping(uint32 => bytes) public mapL1TxQueue;
    uint64 public lastL1L2Batch;
    uint32 public nextL1ToForgeQueue;
    uint32 public nextL1FillingQueue;

    constructor() {
    }

    function forgeBatch(
            uint48 newLastIdx,
            uint256 newStRoot,
            uint256 newExitRoot,
            bytes calldata encodedL1CoordinatorTx,
            bytes calldata l1L2TxsData,
            bytes calldata feeIdxCoordinator,
            uint8 verifierIdx,
            bool l1Batch,
            uint256[2] calldata proofA,
            uint256[2][2] calldata proofB,
            uint256[2] calldata proofC
        ) external {


    function addL1Transaction(
        uint48 fromIdx,
        uint40 loadAmountF,
        uint40 amountF,
        uint32 tokenID,
        uint48 toIdx,
        bytes calldata permit
    ) external {


    function withdrawMerkleProof(
        uint32 tokenID,
        uint192 amount,
        uint32 numExitRoot,
        uint256[] memory siblings,
        uint48 idx,
        bool instantWithdraw
    ) external {

    function withdrawCircuit(
        uint256[2] calldata proofA,
        uint256[2][2] calldata proofB,
        uint256[2] calldata proofC,
        uint32 tokenID,
        uint192 amount,
        uint32 numExitRoot,
        uint48 idx,
        bool instantWithdraw
    ) external {
