// {"0:0":[159,77,40,113]}
// Seed: 12868876833329954106

struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_3.a & arg_3.a;
    var_0 = !((4294967295u == 38260u) | !arg_0.a);
    let var_1 = countOneBits((vec3<u32>(arg_1.x, ~30515u, 4294967295u % 1u) + arg_1.wwx) | arg_1.zyx);
    var var_2 = ~countOneBits(0u);
    var_0 = any(!select(select(select(vec2<bool>(arg_3.a, false), vec2<bool>(false, arg_3.a), vec2<bool>(false, arg_0.a)), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_3.a, arg_0.a), true), vec2<bool>(false, false)), vec2<bool>(!true, all(vec3<bool>(arg_3.a, true, false))), vec2<bool>(arg_3.a && arg_3.a, -1i < arg_2)));
    return select(select(vec4<bool>(arg_0.a | (arg_3.a | arg_0.a), -1000f != step(-1140f, -180f), all(vec4<bool>(arg_3.a, arg_3.a, arg_0.a, arg_3.a)), arg_3.a), vec4<bool>(!(1u >= arg_1.x), 18823u <= 0u, !(-1134f >= -1555f), !arg_3.a | !true), any(!vec3<bool>(true, false, arg_3.a)) || false), select(!vec4<bool>(706f >= 466f, !arg_0.a, arg_0.a, false), !(!vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a)), arg_3.a), select(vec4<bool>(!true, select(false, true, arg_3.a) && false, true, true), select(!select(vec4<bool>(false, false, arg_3.a, false), vec4<bool>(arg_3.a, arg_0.a, false, true), true), vec4<bool>(arg_0.a, false, var_1.x != 1u, all(vec3<bool>(arg_3.a, arg_3.a, true))), !select(vec4<bool>(arg_3.a, arg_3.a, false, arg_0.a), vec4<bool>(true, true, false, false), vec4<bool>(true, arg_3.a, false, false))), !(!true) && (-1195f <= ceil(-1778f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> i32 {
    let var_0 = ~vec2<u32>(u_input.a, abs(1u));
    let var_1 = Struct_1(true);
    let var_2 = !select(arg_0, select(select(func_3(Struct_1(false), vec4<u32>(34897u, u_input.a, 56201u, 30646u), arg_1, Struct_1(false)), vec4<bool>(false, false, arg_0.x, arg_0.x), false & arg_0.x), select(arg_0, arg_0, vec4<bool>(true, arg_0.x, arg_0.x, false)), !select(vec4<bool>(var_1.a, var_1.a, true, arg_0.x), arg_0, arg_0.x)), arg_0.x);
    let var_3 = vec3<bool>(false, any(func_3(Struct_1(var_1.a), countOneBits(vec4<u32>(4294967295u, 0u, 378u, u_input.a)) | ~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), 1i, Struct_1(var_1.a)).wyy), !any(!select(vec3<bool>(false, false, var_2.x), vec3<bool>(true, var_2.x, true), var_2.x)));
    var var_4 = ~0u;
    return dot(vec4<i32>(dot(vec4<i32>(41063i, arg_1, arg_1, arg_1), vec4<i32>(arg_1, -1i, 0i, -1i)) & ~1i, arg_1, arg_1, 1i - (arg_1 - arg_1)) & vec4<i32>(-23648i, -22104i >> var_0.x, -34273i, reverseBits(dot(vec4<i32>(-1i, 0i, 0i, arg_1), vec4<i32>(1i, 0i, arg_1, i32(-2147483648))))), vec4<i32>(select(arg_1, 2147483647i, !var_1.a), 2147483647i, 1i, arg_1));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = -(vec2<i32>(i32(-2147483648) % -23438i, i32(-2147483648)) | vec2<i32>(-34546i, func_4(func_3(arg_0, vec4<u32>(u_input.a, 44950u, 57330u, 0u), 22912i, arg_0), 0i)));
    let var_1 = var_0.x;
    let var_2 = arg_0.a;
    let var_3 = Struct_1(all(vec4<bool>(!arg_0.a, false, any(vec2<bool>(arg_0.a, false)), abs(219f) >= -264f)));
    var var_4 = arg_0;
    return abs(-25923i);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(false);
    var var_1 = select(vec2<i32>(dot(vec2<i32>(-57149i, -1i) + vec2<i32>(-8617i, 1670i), -vec2<i32>(1i, 1i)), -1i), -(vec2<i32>(15988i, -16308i) - vec2<i32>(0i, -91470i)) & ~(~vec2<i32>(i32(-2147483648), 1i)), select(var_0.a, func_2(var_0) < ~2147483647i, all(vec3<bool>(false, true, var_0.a)))) + ((~(vec2<i32>(0i, 4141i) + vec2<i32>(-33108i, 21846i)) ^ vec2<i32>(5605i, firstLeadingBit(-1i))) ^ vec2<i32>(firstLeadingBit(57552i % 22369i), max(min(0i, 14356i), select(-28189i, -1i, var_0.a))));
    var var_2 = max(11641u, u_input.a);
    var var_3 = Struct_1(!(0i == var_1.x));
    let var_4 = ~0u;
    return vec4<u32>(var_4, ~u_input.a, ~(~u_input.a), (u_input.a & 0u) << (~var_4 / (var_4 << u_input.a))) + ~vec4<u32>(~0u, reverseBits(var_4) ^ ~var_4, 1u, var_4);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = false;
    var_0 = false;
    var_0 = (((arg_2 & clamp(32648u, 5764u, u_input.a)) * (~arg_2 / (6839u & u_input.a))) * (4294967295u + ~arg_0.x)) >= ~4294967295u;
    var var_1 = arg_0.yw;
    var_1 = ~vec2<u32>(1u, 4294967295u);
    return Struct_1(firstTrailingBit((var_1.x + var_1.x) - arg_0.x) != 64258u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), select(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false)), vec3<bool>(any(vec3<bool>(true, false, false)), !(0u >= u_input.a), reverseBits(1i) == (-4426i + 20389i)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), 88999u, Struct_1(1i < dot(clamp(vec3<i32>(11831i, 1i, 1i), vec3<i32>(14976i, -1i, 27222i), vec3<i32>(2147483647i, -37924i, -1i)), max(vec3<i32>(0i, 2147483647i, 18240i), vec3<i32>(10420i, 1i, 2147483647i)))));
    var var_1 = reverseBits((vec3<u32>(27483u, select(u_input.a, u_input.a, false), select(u_input.a, 2316u, false)) ^ (~vec3<u32>(u_input.a, 49478u, u_input.a) / ~vec3<u32>(4294967295u, 112001u, u_input.a))) - ~(~vec3<u32>(u_input.a, u_input.a, 1u)));
    let var_2 = -(-(-(min(vec2<f32>(-315f, -1438f), vec2<f32>(-245f, 1507f)) + -vec2<f32>(747f, 181f))));
    var var_3 = step(-var_2.x, var_2.x);
    var var_4 = max(~(~(~(-(-1i)))), max(abs(abs(43533i) >> ~11970u), dot(~vec4<i32>(9156i, 0i, -9487i, 4819i), vec4<i32>(-48810i, i32(-2147483648), 2147483647i, 1i) & vec4<i32>(-29960i, i32(-2147483648), i32(-2147483648), 0i)) + i32(-2147483648)));
    var_4 = -9659i;
    let x = u_input.a;
    s_output = StorageBuffer(824f);
}

