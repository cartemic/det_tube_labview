import sys
import cantera as ct

# parse inputs
mech, fuel, oxidizer, diluent, dil_by, phi, dil_frac = sys.argv[1:8]
phi = float(phi)
dil_frac = float(dil_frac)

# set gas object
gas = ct.Solution(mech)
gas.set_equivalence_ratio(phi, fuel, oxidizer)


# dilute the mixture
def dilute():
    return '{0}: {1} {2}: {3} {4}: {5}'.format(
        diluent,
        dil_frac,
        fuel,
        new_fuel_fraction,
        oxidizer,
        new_oxidizer_fraction)


if 'none' not in diluent.lower() and dil_frac > 0:
    if dil_by.lower() == 'mole':
        mole_fractions = gas.mole_fraction_dict()
        new_fuel_fraction = (1 - dil_frac) * mole_fractions[fuel]
        new_oxidizer_fraction = (1 - dil_frac) * mole_fractions[oxidizer]
        gas.X = dilute()
    else:
        mass_fractions = gas.mass_fraction_dict()
        new_fuel_fraction = (1 - dil_frac) * mass_fractions[fuel]
        new_oxidizer_fraction = (1 - dil_frac) * mass_fractions[oxidizer]
        gas.Y = dilute()

mole_fractions = gas.mole_fraction_dict()
print(mole_fractions[fuel])
print(mole_fractions[oxidizer])
if diluent in mole_fractions:
    print(mole_fractions[diluent])
else:
    print(0)
