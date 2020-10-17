
import Poison
defmodule Cryp do

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


   @doc "Calculate and put the hash in the block"
    def new_hash(%{} = block) do
        %{ block | hash: sha_256(block) }
    end
    
    
end
