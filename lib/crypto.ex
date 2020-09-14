defmodule Crypto do

    @doc ~S"""
     Generates Random 32 bits
     ## https://stackoverflow.com/questions/41735442
     ##  

      iex> [_] = ElixirBlocks.gen_random()
           
     """
    def gen_random() do
        length = 32
        :crypto.strong_rand_bytes(length) 
        |> Base.encode64 
        |> binary_part(0, length)
    end

    @doc ~S"""
     Generates Random 32 bits
     ## https://stackoverflow.com/questions/41735442
     
      iex> [_] = ElixirBlocks.hash("block")
           
     """
    def hash(%{}=block) do
        block
        |>Poison.encode16 # Convert to binary
        |>sha_256
    end

    @doc ~S"""
      Append the given block to an existing block
      iex> [_] = ElixirBlocks.add_block("newBlock")         
     """
    def add_block(%{}=block) do 
        %{block|hash: hash(block)}
    end

    @doc ~S"""     
       Sha256 Hash
       iex> [_] = ElixirBlocks.sha_256(<<101,102>>)          
     """
    def sha_256(data) do

        :crypto.hash(:sha256, <<101>>)
        |>Base.encode16
        
    end
    
end
