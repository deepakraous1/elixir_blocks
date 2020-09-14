 defmodule BloomFilter do

    @doc ~S"""
    Init Bloom Filter set to all 00000000
    ## Examples
      iex> [_] = ElixirBlocks.init()         
    """
    def init do
        _ethBloomLst = "00000000"               
    end               

    @doc ~S"""
    Add to Bloom
    ## Examples
      iex> [_] = ElixirBlocks.add("data")         
    """
    @doc 
    def add(data) do
        hash(data)
    end
    
    @doc ~S"""
    Hash Function
    ## Examples
      iex> [_] = ElixirBlocks.hash_function("data")         
    """
    def hash_function(data) do 
         data 
    end
  
    @doc ~S"""
    First Order of 3 bytes
    ## Examples
      iex> [_] = ElixirBlocks.hash_function("data")         
    """
    def first_order_3bytes(hashed_data) do
        hashed_data 
        |> String.slice(0..5)
    end
  
    @doc "First order 3bytes"
    def has(data) do
        data
    end
    
    @doc "First order 3bytes"
    def xor(hash) do
       hash
    end

    @doc "First order 3bytes"
    defp max() do
        2048
    end
  
    @doc "First order 3bytes"
    defp hash(data) do
       data
    end

end
