# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: mempool.proto for package 'mempool'
# Original file comments:
# Copyright (c) The Libra Core Contributors
# SPDX-License-Identifier: Apache-2.0
#

require 'grpc'
require 'mempool_pb'

module Mempool
  module Mempool
    # -----------------------------------------------------------------------------
    # ---------------- Mempool Service Definition
    # -----------------------------------------------------------------------------
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'mempool.Mempool'

      # Adds a new transaction to the mempool with validation against existing
      # transactions in the mempool.  Note that this function performs additional
      # validation that AC is unable to perform. (because AC knows only about a
      # single transaction, but mempool potentially knows about multiple pending
      # transactions)
      rpc :AddTransactionWithValidation, AddTransactionWithValidationRequest, AddTransactionWithValidationResponse
      # Fetch ordered block of transactions
      rpc :GetBlock, GetBlockRequest, GetBlockResponse
      # Remove committed transactions from Mempool
      rpc :CommitTransactions, CommitTransactionsRequest, CommitTransactionsResponse
      # Check the health of mempool
      rpc :HealthCheck, HealthCheckRequest, HealthCheckResponse
    end

    Stub = Service.rpc_stub_class
  end
end
