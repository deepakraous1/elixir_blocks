import Cryp
import Trie

defmodule Pow do
  @moduledoc """
  Simple Proof of work"

  1.Block
  2.BlockHeader
  3.Genesis Block
  4.Form a {K,V}
  5.BloomFilter
  5.RLP {K,V}
  6.Trie 

  """

 
  @doc ~S"""
  Inits a Genesis block.
  # [ {hash_0:data_0},{hash_1:data_1},{hash_n:data_n} ]
  ## Examples
      iex> [_] = ElixirBlocks.block("blockchain","newblockchain","txn")         
  """
  # Source:MASS65*
  # Sha256:232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3
  @doc "Basic Block def"


  @doc "New Key Generation"
  def new_hash() do
    rand_string = Cryp.gen_random()
    new_hash = Cryp.sha_256(rand_string)
    new_hash
  end

  @doc "Block Header definition"
  def block_header(block) do
    block
  end
  
  
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  defp isvalid(block,block_chain) do
      block
  end
  
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def extracte_pattern(state_0,state_1) do 
    state_0
  end

  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def compose(state_0,state_1) do 
    state_1
  end

  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def add_state(state_0,state_1) do 
    state_1
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
  
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def get_type(state) do 
     type(state)
  end

  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def type(state) do 
    state
  end

  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def spawn_block(state) do
    spawn(fn -> IO.puts("hello world") end)
  end


end



