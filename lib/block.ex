defmodule Block do
    @moduledoc """
    Toy Blockchain in Elixir to run through the concepts
  
    1.Genesis
    2.BlockHeader
    3.Adding a New Block
    4.Create Wallet,Address
    5.Transactions
    4.Form {K,V}
    5.RLP {K,V}
    6.Trie 
    7.Persist {k:v} using PMT(Patricia Merkel Trie)
    8.Node Comm
    9.Test Test Test
  
    """
  
    import Poison

    def genesis_block do

      genesis = %{
        data: "MASS65*",
        timestamp: DateTime.utc_now(),
        prev_hash: "232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3",
        hash: "242565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF", #"hash(next(MASS65*)))",
      } 
     genesis

    end
  
    @doc "New Key Generation"
    defp new_key() do
      rand_string = Crypto.gen_random()
      new_hash = Crypto.sha_256(rand_string)
      new_hash
    end
 
     
     @doc "Build a new block for given data and previous hash"
  def new(data, prev_hash) do
    new_block = %{
      data: data,
      prev_hash: prev_hash,
      timestamp: NaiveDateTime.utc_now,
    }
  end


    @doc "Block Header definition"
    def block_header(block) do
      block
    end

    @doc "Block Header definition"
    def block_body(blockHeader) do
      blockHeader
    end
    
    @doc ~S"""
    Inits a Genesis block and stores the result to a k,v
    database
  
    ## Examples
        iex> [_x ,_y ] = ElixirBlocks.init("x")         
    """
    def init(file_path) do
      # Blockchain 
      file_path = File.cwd!<>"/db"
      block = %{  }
      block = genesis_block()
      {:ok, db} = CubDB.start_link(data_dir: file_path)
      key = new_key()
      CubDB.put(db, key, block)
      [ [key, block] ]
    end
 
    end
  
