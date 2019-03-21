import sys
import cantera as ct

mech = sys.argv[1]
gas = ct.Solution(mech)

for specie in sorted(gas.species_names, key=lambda s: s.lower()):
    print(specie)
