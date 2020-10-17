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

 @doc "Block Header definition"
 def mine(block) do
  block
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

  @doc "New Key Generation"
  defp new_key() do
    rand_string = Cryp.gen_random()
    new_hash = Cryp.sha_256(rand_string)
    new_hash
  end


end

