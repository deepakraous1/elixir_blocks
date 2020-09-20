defmodule ElixirBlocks do
  @moduledoc """
  Toy Blockchain in Elixir to run through the concepts

  1.Genesis
  2.BlockHeader
  3.Adding a New Block
  4.Form a {K,V}
  5.RLP {K,V}
  6.Trie 

  """
  import BloomFilter
  import Crypto
  import Trie
  #import Recurser
 
  #Genesis Info

  # Source:MASS65*
  # Sha256:232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3
  @doc "Basic Block def"
  def block do

    block = %{
      meta: "one_text",
      address: "reciepient address of the block reward"
      timestamp: "naive_datetime",
      prev_hash: "hash_of_the_previous_block",
      hash: "hash_of_the_current_block",
      data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]",
      player: "hash(address(MASS65*))"
    }

  end

  @doc "Genesis block def"
  defp genesis_block do 

    genesis = %{
      meta: "MASS65*",
      address: "abc",
      timestamp: "0001 00:00:00",
      prev_hash: "232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3",
      hash: "hash(next(MASS65*)))",
      data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]",
      player: "hash(address(MASS65*))"
    
    }    

  end

  @doc "New Key Generation"
  defp new_key() do
    rand_string = Crypto.gen_random()
    new_hash = Crypto.sha_256(rand_string)
    new_hash
  end

  @doc "Block Header definition"
  def block_header(block) do
    block
  end
  
  @doc ~S"""
  Inits a Genesis block.
  ## Examples
      iex> [_ ,_ ] = ElixirBlocks.init("x")         
  """
  def init(file_path) do
    # Blockchain 
    file_path = File.cwd!<>"/db"
    block_chain = %{  }
    {:ok, db} = CubDB.start_link(data_dir: file_path)
    key = new_key()
    CubDB.put(db, key, genesis_block)
    [key, genesis_block]
  end

   
end
