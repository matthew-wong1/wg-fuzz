// {"0:0":[38,223,242,16,59,171,215,32,57,232,7,84,115,113,200,183,176,225,17,240,173,125,152,207,229,163,247,67,111,211,219,96]}
// Seed: 4033802890695570283

struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: bool = false;

fn func_3() -> vec3<bool> {
    var var_0 = u_input.c;
    var var_1 = Struct_1(select(vec3<bool>((u_input.b - -22006i) < countOneBits(0i), !all(vec2<bool>(true, global0[47097u])), false), !(!(!vec3<bool>(global0[1u], false, true))), select(vec3<bool>(global0[min(u_input.c, u_input.a.x)], global0[0u] | global0[u_input.a.x], any(vec2<bool>(false, global0[14693u]))), vec3<bool>(true, !true, !global0[1u]), !global0[u_input.c & u_input.a.x])), ((-494f - (-1338f - 185f)) / min(2281f - 1060f, -239f)) - step(floor(floor(-181f)), -1000f + -1061f));
    let var_2 = Struct_1(var_1.a, var_1.b + (-max(-2952f, var_1.b) / -var_1.b));
    let var_3 = var_2;
    let var_4 = var_3.b;
    return !(!vec3<bool>(true, !(!var_1.a.x), false));
}

fn func_2() -> vec3<i32> {
    global1 = !true;
    var var_0 = Struct_1(select(select(select(vec3<bool>(global0[u_input.c], global0[u_input.a.x], false), !vec3<bool>(true, global0[43345u], global0[u_input.a.x]), !global0[u_input.c]), !(!vec3<bool>(global0[u_input.a.x], true, true)), true), !func_3(), vec3<bool>(any(vec2<bool>(false, false)) != global0[2583u ^ u_input.c], global0[32649u], !any(vec4<bool>(true, global0[4294967295u], true, false)))), 1024f);
    global0 = array<bool, 5>();
    let var_1 = Struct_1(var_0.a, -582f);
    var var_2 = -(~u_input.b) * ~(i32(-2147483648));
    return firstLeadingBit(reverseBits(select(-vec3<i32>(0i, u_input.b, -1000i), vec3<i32>(u_input.b, u_input.b, u_input.b), !var_0.a) << max(~vec3<u32>(u_input.c, u_input.c, u_input.a.x), u_input.a)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> u32 {
    global0 = array<bool, 5>();
    let var_0 = clamp(vec3<i32>((u_input.b + (1i * -1i)) * dot(select(vec3<i32>(u_input.b, 1i, -1i), vec3<i32>(17452i, -14799i, i32(-2147483648)), false), vec3<i32>(i32(-2147483648), u_input.b, -28528i)), 2147483647i, u_input.b), -(~func_2()), abs(select(firstLeadingBit(vec3<i32>(15911i, u_input.b, u_input.b)), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -26135i)), all(vec4<bool>(arg_1.x, true, true, global0[u_input.a.x])))));
    let var_1 = global0[~(select(u_input.c, 0u, reverseBits(var_0.x) != ~u_input.b) + (4294967295u >> ~firstLeadingBit(u_input.a.x)))];
    let var_2 = -(~(-2147483647i));
    let var_3 = select(-1191f, 136f, arg_1.x);
    return 38983u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(global0[~(~8450u)], true, select(true, any(vec4<bool>(false, global0[54875u], global0[u_input.a.x], global0[u_input.c])), global0[97789u << u_input.a.x])), select(!vec3<bool>(global0[u_input.c], true, global0[u_input.c]), select(vec3<bool>(global0[u_input.c], global0[u_input.c], true), !vec3<bool>(false, global0[6371u], global0[u_input.c]), any(vec2<bool>(global0[u_input.c], global0[0u]))), !vec3<bool>(global0[u_input.c], true, global0[u_input.c])), !select(select(vec3<bool>(true, global0[41729u], global0[81154u]), vec3<bool>(false, true, false), true), vec3<bool>(true, true, global0[66620u]), 24017i >= 23422i)), abs(floor(404f)));
    var var_1 = ~vec3<i32>(~u_input.b, min(dot(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), abs(u_input.b)) / 2147483647i, (u_input.b - -2147483647i) * ((-11313i * 1i) * ~u_input.b));
    let var_2 = floor(-836f);
    global1 = all(select(vec2<bool>(~u_input.a.x == func_1(vec2<bool>(var_0.a.x, true), var_0.a.yz), !(!true)), var_0.a.xy, !func_3().x));
    global0 = array<bool, 5>();
    let var_3 = -((select(-vec4<f32>(var_2, 2755f, -213f, -810f), -vec4<f32>(-495f, var_0.b, 569f, -263f), select(vec4<bool>(false, global0[u_input.a.x], true, var_0.a.x), vec4<bool>(false, false, false, true), var_0.a.x)) + vec4<f32>(-(-1055f), var_0.b, 1641f, -var_2)) - (select(vec4<f32>(530f, var_0.b, var_2, 102f) - vec4<f32>(-1140f, 550f, var_2, -2216f), vec4<f32>(342f, var_2, 2075f, var_2), !vec4<bool>(global0[u_input.c], global0[1u], true, true)) + (round(vec4<f32>(var_2, 1809f, var_0.b, -1138f)) + -vec4<f32>(var_2, var_2, var_0.b, -1699f))));
    global0 = array<bool, 5>();
    let var_4 = Struct_1(var_0.a, -(-(var_2 * var_0.b) / exp2(var_0.b)));
    var_1 = firstTrailingBit(vec3<i32>(u_input.b, ~var_1.x, (~0i << (u_input.c ^ u_input.a.x)) & (reverseBits(2147483647i) * u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>((26218i - u_input.b) << clamp(u_input.c, u_input.c, 144u), (i32(-2147483648) << 49331u) * (var_1.x >> 34736u), dot(select(vec3<i32>(0i, -29041i, -38271i), vec3<i32>(-40461i, 18841i, 1i), true), vec3<i32>(var_1.x, -45975i, 1i)), abs(var_1.x)), vec4<i32>(var_1.x >> select(u_input.a.x, u_input.a.x, var_4.a.x), firstLeadingBit(var_1.x ^ u_input.b), -abs(u_input.b), var_1.x), select(!vec4<bool>(false, true, var_0.a.x, var_0.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, var_0.a.x), vec4<bool>(false, var_4.a.x, global0[u_input.a.x], var_4.a.x), vec4<bool>(var_4.a.x, true, false, var_4.a.x)), !vec4<bool>(var_0.a.x, var_0.a.x, true, false)), !select(vec4<bool>(var_4.a.x, global0[0u], var_0.a.x, false), vec4<bool>(false, true, true, global0[1u]), var_0.a.x))), -var_4.b);
}

