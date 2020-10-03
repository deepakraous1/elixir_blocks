import Trie
import Poison
defmodule Crypto do

    @doc ~S"""
     Generates Random 32 bits
     ## https://stackoverflow.com/questions/41735442
     ##  

      iex> r = Crypto.gen_random()
      iex> r
           
     """
    def gen_random() do
        length = 32
        :crypto.strong_rand_bytes(length) 
        |> Base.encode64 
        |> binary_part(0, length)
    end

    @doc ~S"""
     Returns a hash
     ## https://stackoverflow.com/questions/41735442
     
      iex> _random_hash = Crypto.hash("abcde")
           
     """
    def hash(block) do
        block
        |>Poison.encode16 # Convert to binary
        |>sha_256
    end

    @doc ~S"""
      Append the given block to an existing block
      iex> [_] = Crypto.add_block("newBlock")         
     """
    def add_block(%{}=block) do 
        %{block|hash: hash(block)}
    end

    @doc ~S"""     
       Sha256 Hash
       iex> [_] = Crypto.sha_256(<<101,102>>)          
     """
    def sha_256(data) do

        :crypto.hash(:sha256, <<101>>)
        |>Base.encode16
        
    end

    @doc ~S"""     
       address
       iex> [_] = Crypto.address(address)          
     """
     def address(data) do
        :crypto.hash(data)
        |>Base.encode16
        
    end
    
    
end
