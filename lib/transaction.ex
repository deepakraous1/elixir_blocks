defmodule Transaction do
  @moduledoc """
  Recursive state machine named "Recurser"

  1.Block
  2.BlockHeader
  3.Genesis Block
  4.Form a {K,V}
  5.BloomFilter
  5.RLP {K,V}
  6.Trie 

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
      s: "s-tbd>"
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
  defp get_type() do
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
      iex> [_] = ElixirBlocks.insert("blockchain","newblockchain","txn")         
  """
  def insert(block,new_block,txn) do
    new_block
  end
  
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def valid(block) do
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
 
  @doc ~S"""
  Valids a Block
  ## Examples
      iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
      "MASS:6.5"        
  """
  def next(state) do
    next(fn -> IO.puts("MASS65*"+"NextState") end)
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
      {:ok, db} = CubDB.start_link(Data_dir: file_path)
      key = Crypto.gen_random()
      CubDB.put(db, key, block)
      [key, block]
    end
end
