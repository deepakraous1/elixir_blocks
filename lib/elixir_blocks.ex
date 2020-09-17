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
 
  @doc "Basic Block definition"
  def block do

    block = %{
      meta: "one_text",
      timestamp: "naive_datetime",
      prev_hash: "hash_of_the_previous_block",
      hash: "hash_of_the_current_block",
      data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]"
    }

  end

  @doc "Genesis block def"
  defp genesis_block do 

    genesis_block = %{
      parentHash: "cd7bd64fba4cc782fe5474d3640882afece5887180591e72f80ce6916cf73526",
      ommersHash: "1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
      beneficiary: "f927a40c8b7f6e07c5af7fa2155b4864a4112b13",
      stateRoot: "30430d24554454b251003be3d027dea94397bf45cd34c6a06abcfec662242046",
      transactionRoot: "56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
      receiptsRoot: "56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
      logsBloom: BloomFilter.init,
      difficulty: "3b32b8463f",
      number: 1780,
      gasLimit: 1388,
      gasUsed: "",
      timestamp: "55ba9f2d",
      extraData: "Geth/v1.0.0/linux/go1.4.2",
      mixHash: "437fa41b15c73334a947241ec885423a487d4401a0c3ec7c30550c1e039bccd7",
      nonce: "c5317acb884dfc49"
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

