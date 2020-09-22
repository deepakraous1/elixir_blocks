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
  import Recurser
 
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
    block = %{  }
    {:ok, db} = CubDB.start_link(data_dir: file_path)
    key = new_key()
    CubDB.put(db, key, block)
    [key, genesis_block]
  end

   
end
