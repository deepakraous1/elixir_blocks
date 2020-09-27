defmodule Transaction do
  @moduledoc """
  Module to hold all Transaction related info

  """
  import BloomFilter
  import Crypto
  import Trie
  import ElixirBlocks
 
  
  @doc ~S"""
  Inits a Genesis block.
  # [ {hash_0:data_0},{hash_1:data_1},{hash_n:data_n} ]
  ## Examples
      iex> [_] = ElixirBlocks.block("blockchain","newblockchain","txn")         
  """
  # Source:MASS65*
  # Sha256:232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3
  @doc "Basic Block def"
  def transaction do

    transaction = %{
      meta: "Acryonym*",
      address: "reciepient address of the block reward",
      nonce: "Nonce/a large number",
      gas_price: "A unit price for a contract",
      gas_limit: "Max unit price for this contract",
      To: "Reciepient Address of the current Block reward",
      Value: "Value of the Txn in Wei",
      v: "v->tbd",
      r: "r->tbd",
      s: "s->tbd"
    }

  end
  #Genesis block

  # Source:MASS65*
  # Sha256:232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3
  @doc "Genesis block def"
  def transaction_type do 

    genesis = %{
      meta: "MASS65*",
      address: "abc",
      timestamp: "0001 00:00:00",
      prev_hash: "232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3",
      hash: "hash(next(MASS65*)))",
      data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]",
      player: "hash(address(MASS65*))"
    }   
    ElixirBlocks.Crypto.hash(genesis) 

  end

  @doc "Get type"
  def get_type() do
    rand_string = Crypto.gen_random()
    new_hash = Crypto.sha_256(rand_string)
    new_hash
  end

  @doc "Block Header definition"
  def send(recvr_address) do
    recvr_address
  end
  
  
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def valid(address) do
      address
  end
  
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def view(state,depth) do 
    state+depth
  end


end
