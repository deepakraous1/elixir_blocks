defmodule Crypto do
    
    # https://stackoverflow.com/questions/41735442
    def gen_random() do
        length = 32
        :crypto.strong_rand_bytes(length) 
        |> Base.encode64 
        |> binary_part(0, length)
    end

    # Hash a given block
    def hash(%{}=block) do
        block
        |>Poison.encode16 # Convert to binary
        |>sha_256
    end

    # Append the given block to an existing block
    def add_block(%{}=block) do 
        %{block|hash: hash(block)}
    end

    # Append the given block to an existing block
    def sha_256(binary_data) do
        binary_data
        |>:keccakf1600.sha3_256
        |>Base.encode16
    end
  
    
end
