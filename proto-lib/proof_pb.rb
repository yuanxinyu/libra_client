# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proof.proto

require 'google/protobuf'

require 'transaction_info_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("proof.proto", :syntax => :proto3) do
    add_message "types.AccumulatorProof" do
      optional :bitmap, :uint64, 1
      repeated :non_default_siblings, :bytes, 2
    end
    add_message "types.SparseMerkleProof" do
      optional :leaf, :bytes, 1
      optional :bitmap, :bytes, 2
      repeated :non_default_siblings, :bytes, 3
    end
    add_message "types.SignedTransactionProof" do
      optional :ledger_info_to_transaction_info_proof, :message, 1, "types.AccumulatorProof"
      optional :transaction_info, :message, 2, "types.TransactionInfo"
    end
    add_message "types.AccountStateProof" do
      optional :ledger_info_to_transaction_info_proof, :message, 1, "types.AccumulatorProof"
      optional :transaction_info, :message, 2, "types.TransactionInfo"
      optional :transaction_info_to_account_proof, :message, 3, "types.SparseMerkleProof"
    end
    add_message "types.EventProof" do
      optional :ledger_info_to_transaction_info_proof, :message, 1, "types.AccumulatorProof"
      optional :transaction_info, :message, 2, "types.TransactionInfo"
      optional :transaction_info_to_event_proof, :message, 3, "types.AccumulatorProof"
    end
  end
end

module Types
  AccumulatorProof = Google::Protobuf::DescriptorPool.generated_pool.lookup("types.AccumulatorProof").msgclass
  SparseMerkleProof = Google::Protobuf::DescriptorPool.generated_pool.lookup("types.SparseMerkleProof").msgclass
  SignedTransactionProof = Google::Protobuf::DescriptorPool.generated_pool.lookup("types.SignedTransactionProof").msgclass
  AccountStateProof = Google::Protobuf::DescriptorPool.generated_pool.lookup("types.AccountStateProof").msgclass
  EventProof = Google::Protobuf::DescriptorPool.generated_pool.lookup("types.EventProof").msgclass
end
