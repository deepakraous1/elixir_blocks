defmodule ElixirBlocks do
  @moduledoc """
  Documentation for ElixirBlocks.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirBlocks.hello()
      :world

  """
  import BloomFilter
  import Crypto

   @doc "Genesis block defenition"
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

  @doc "New key generation"
  defp new_key() do
    rand_string = Crypto.gen_random()
    new_hash = Crypto.sha_256(rand_string)
    new_hash
  end

   @doc "Build the initial block of the chain"
  def init do
    # Blockchain 
    block_chain = %{ "" => %{} }
    Map.put_new(block_chain,new_key(),genesis_block() )
  end

end
