// {"0:0":[146,132,133,174,59,75,33,79,239,227,231,78,38,4,68,113]}
// Seed: 5359954565821823290

struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = 1306f * trunc(-exp2(-850f) * -1273f);
    var var_1 = ~vec3<i32>(-clamp(u_input.a, u_input.b.x, 8877i), u_input.b.x, min(select(u_input.a, u_input.a, true), 4270i)) << (vec3<u32>(max(~33873u, ~1u), dot(abs(vec2<u32>(58116u, 25734u)), abs(vec2<u32>(9486u, 47627u))), 60065u) + (~countOneBits(vec3<u32>(27074u, 24403u, 0u)) >> ~vec3<u32>(0u, 37471u, 1u)));
    var var_2 = Struct_1(vec3<i32>(i32(-2147483648), ~dot(min(u_input.b, vec2<i32>(var_1.x, var_1.x)), firstTrailingBit(var_1.xy)), var_1.x), ~(~var_1.x), vec2<i32>(max(-(u_input.a >> 4294967295u), -var_1.x), 0i), 57829i, u_input.b);
    let var_3 = !select(select(vec3<bool>(any(vec4<bool>(true, false, false, false)), false, !true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), all(!vec4<bool>(false, false, true, false))), vec3<bool>(!(69941u > 4294967295u), !false & (true || false), false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), !vec3<bool>(false, false, false), vec3<bool>(true, false, false)));
    let var_4 = vec3<bool>(var_3.x, var_3.x == false, ~(~dot(vec2<u32>(4294967295u, 104815u), vec2<u32>(1u, 0u))) != ~4590u);
    return !(!var_3);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = ~4294967295u;
    return Struct_2(!(!select(func_3(arg_0.x), select(vec3<bool>(arg_1, false, true), vec3<bool>(false, true, arg_1), false), false)), Struct_1(~abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) << vec3<u32>(4294967295u, var_0, var_0)), clamp(31313i, -(u_input.a * u_input.a), ~u_input.b.x), u_input.b & -vec2<i32>(2147483647i, 0i), ~countOneBits(-109009i), u_input.b / (vec2<i32>(u_input.a, u_input.b.x) ^ ~vec2<i32>(2147483647i, u_input.b.x))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec3<u32>(4294967295u >> 4294967295u, arg_0.x, 13237u ^ (~(20626u & arg_0.x) ^ 0u));
    var var_1 = ~(~firstLeadingBit(vec3<u32>(~0u, arg_0.x, 1u)));
    var_0 = min(arg_0.yxy, firstLeadingBit(arg_0.xxy));
    let var_2 = func_2(round(-vec3<f32>(step(-1061f, 1179f), 1291f / -3151f, -227f)), !(u_input.a < (-1i << ~42302u)));
    return Struct_1(vec3<i32>(0i, u_input.a + (-var_2.b.e.x | 22718i), -(~var_2.b.e.x / (-23066i / -1i))), (-28599i << var_1.x) + 20092i, var_2.b.a.yx, 1i, var_2.b.a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-(vec3<i32>(0i - u_input.a, max(u_input.a, i32(-2147483648)), 0i) - ~select(vec3<i32>(-16979i, 1969i, 2147483647i), vec3<i32>(1i, 1i, u_input.a), vec3<bool>(true, false, false))), 2147483647i, vec2<i32>(-(-u_input.b.x), abs(u_input.a * -26153i) - firstLeadingBit(abs(9239i))), i32(-2147483648), ~(vec2<i32>(abs(u_input.b.x), clamp(-20804i, u_input.b.x, -36198i)) % u_input.b));
    var var_1 = ~(~max(vec3<u32>(34535u, 58514u, 1319u) / ~vec3<u32>(1u, 33807u, 27459u), vec3<u32>(~0u, ~8202u, ~1u)));
    var_1 = vec3<u32>(dot(countOneBits(vec4<u32>(var_1.x / 0u, firstTrailingBit(var_1.x), var_1.x | 28205u, 36695u)), countOneBits(abs(~vec4<u32>(18106u, 13250u, var_1.x, 24897u)))), abs(dot(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(1u, 4294967295u, var_1.x, 0u))) % max(var_1.x, abs(dot(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(0u, 56134u, 67836u)))), ~(var_1.x / clamp(4294967295u + var_1.x, var_1.x, ~0u)));
    var_0 = func_1(~vec4<u32>(4294967295u, var_1.x * max(7024u, var_1.x), ~var_1.x, var_1.x));
    var var_2 = vec2<f32>(abs(min(1307f, 1387f)) - exp2(-778f - exp2(-943f)), trunc(-372f));
    var var_3 = 169f;
    var var_4 = func_2(-(max(-vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(932f, 394f, -184f)) / -ceil(vec3<f32>(var_2.x, var_2.x, var_2.x))), all(func_3(var_2.x).xx) & false).a;
    var_1 = reverseBits(countOneBits(firstLeadingBit(vec3<u32>(var_1.x, var_1.x, 1u))) >> max(vec3<u32>(6213u, 1u, var_1.x) ^ vec3<u32>(4294967295u, 40571u, var_1.x), abs(vec3<u32>(0u, 0u, var_1.x)))) % select(~abs(vec3<u32>(7704u, 27352u, 4294967295u) | vec3<u32>(28104u, var_1.x, var_1.x)), firstTrailingBit(countOneBits(reverseBits(vec3<u32>(20897u, 26167u, var_1.x)))), all(!select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(var_4.x, var_4.x, false), true)));
    var_1 = firstLeadingBit(vec3<u32>(max(21995u, 87161u) << select(~var_1.x, abs(var_1.x), !true), (~var_1.x ^ ~var_1.x) / (4294967295u * ~var_1.x), 14553u));
    let x = u_input.a;
    s_output = StorageBuffer(0u >> ~1u, ~(-(-vec4<i32>(u_input.a, i32(-2147483648), 0i, u_input.b.x)) ^ vec4<i32>(var_0.d / u_input.a, reverseBits(i32(-2147483648)), 48150i, abs(-1i))), var_1.zy);
}

