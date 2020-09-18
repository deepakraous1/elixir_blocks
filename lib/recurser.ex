defmodule Recurser do
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
   
    @doc "[ {hash_0:data_0},{hash_1:data_1},{hash_n:data_n} ]"
    def block do
  
      block = %{
        meta: "one_text",
        timestamp: "naive_datetime",
        prev_hash: "hash_of_the_previous_block",
        hash: "hash_of_the_current_block",
        data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]"
      }
  
    end
    #Genesis block
  
    # Source:MASS65*
    # Sha256:232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3
    @doc "Genesis block def"
    defp genesis_block do 
  
      genesis_block = %{
        meta: "one_text",
        timestamp: "Elixir_Date_Time",
        prev_hash: "232565FA051713BC8C67E58A38A34EBDE4B98AE2F168EFBA0A4BD16400E00CF3",
        hash: "NexrBlockHash",
        data: "[{k0,v0},{k1,v1},...,{Kn,Vn}]"
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
        iex> [_] = ElixirBlocks.insert("blockchain","newblockchain","txn")         
    """
    def insert(block_chain,new_block,txn) do
      block_chain
    end
    
    @doc ~S"""
    Valids a Block
    ## Examples
        iex> [_] = ElixirBlocks.valid( "blk","blk_chain" ) 
        "MASS:6.5"        
    """
    def valid(block,block_chain) do
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
    Inits a Genesis block.
    ## Examples
        iex> [_ ,_ ] = ElixirBlocks.init("x")         
    """
    def init(file_path) do
        # Blockchain 
        file_path = File.cwd!<>"/db"
        block_chain = %{  }
        {:ok, db} = CubDB.start_link(Data_dir: file_path)
        key = new_key()
        CubDB.put(db, key, genesis_block)
        [key, genesis_block]
      end
  end
 
