// {"0:0":[180,143,127,13,201,57,126,207,142,44,52,242,102,165,78,26,86,92,30,88,145,34,40,216,83,145,28,202,141,65,171,90]}
// Seed: 17080352385868156216

struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = false | !any(select(!vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true));
    let var_1 = (step(-(vec3<f32>(-976f, arg_3, arg_3) / vec3<f32>(-301f, arg_3, arg_3)), floor(vec3<f32>(-1315f, arg_3, arg_3) / vec3<f32>(arg_3, arg_3, arg_3))) / vec3<f32>(144f, arg_3 / -221f, exp2(-(-1962f)))) * select(-max(vec3<f32>(arg_3, 379f, arg_3), vec3<f32>(arg_3, 1619f, arg_3)), vec3<f32>(trunc(-(-1000f)), arg_3, arg_3), select(!(!false), true, (i32(-2147483648) << arg_2) < (arg_0.x * u_input.d.x)));
    let var_2 = Struct_1(-max(sign(-1000f), 2232f) + max(round(arg_3), -1000f), vec4<bool>(all(vec4<bool>(select(var_0, true, true), 21138i > -15374i, all(vec2<bool>(var_0, var_0)), any(vec4<bool>(var_0, var_0, true, var_0)))), all(!vec2<bool>(var_0, var_0)), !var_0, (all(vec2<bool>(var_0, var_0)) == var_0) && false), vec3<u32>(clamp(~49034u, u_input.b << (74499u << arg_2), dot(countOneBits(vec3<u32>(arg_2, arg_2, arg_2)), vec3<u32>(1u, arg_2, u_input.b) - vec3<u32>(arg_2, u_input.b, 4294967295u))), u_input.c, arg_2), (-arg_0.x << u_input.a.x) ^ countOneBits(0i & min(-23871i, i32(-2147483648))));
    let var_3 = vec2<f32>(var_1.x, var_2.a);
    var var_4 = Struct_2(!var_2.b.zy, Struct_1(var_2.a, select(select(select(var_2.b, var_2.b, var_2.b), !var_2.b, !true), var_2.b, any(vec4<bool>(var_0, false, true, false))), vec3<u32>(var_2.c.x, 1u >> (0u - 21171u), 9289u / (1u ^ var_2.c.x)), ~abs(-29272i)), var_2, Struct_1(-299f, var_2.b, ~(~vec3<u32>(u_input.a.x, var_2.c.x, var_2.c.x)), dot(vec3<i32>(-1i, var_2.d, -47611i) - ~arg_0, arg_0 - arg_0)), (sign(var_2.a / -316f) + min(round(var_2.a), var_3.x * 1000f)) + min(var_3.x, var_3.x));
    return dot(min(vec4<u32>(43626u << var_2.c.x, 0u | 30308u, abs(0u), ~var_4.b.c.x), vec4<u32>(var_4.c.c.x | arg_1.x, 4294967295u + u_input.a.x, arg_1.x - 88211u, var_2.c.x)), vec4<u32>(var_2.c.x, var_2.c.x % (var_2.c.x - var_2.c.x), 81722u, (4294967295u << 37369u) / abs(arg_2))) ^ 79547u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0.a;
    let var_1 = Struct_1(arg_3.a + 350f, !(!(!(!arg_3.b))), (reverseBits(vec3<u32>(4294967295u, 4294967295u, 1u)) % arg_0.a.xzy) & vec3<u32>(var_0.x, (u_input.a.x ^ 47606u) << func_3(vec3<i32>(2147483647i, 0i, -40879i), arg_0.a.xw, u_input.c, arg_0.c.x), dot(u_input.a, u_input.a)), -1i);
    var_0 = select(select(reverseBits(min(arg_0.a, vec4<u32>(42822u, var_1.c.x, 48611u, var_1.c.x))), vec4<u32>(4294967295u, 22569u, 4294967295u, arg_3.c.x) ^ ~arg_0.a, var_1.b), (arg_0.a | arg_0.a) ^ vec4<u32>(~arg_3.c.x, select(var_1.c.x, var_1.c.x, true), firstTrailingBit(30631u), select(u_input.b, 1u, false)), select(all(vec2<bool>(true, arg_2)), true, arg_3.d == 36077i) && (select(arg_2, true, arg_3.b.x) | true)) - ((firstLeadingBit(arg_0.a * vec4<u32>(arg_3.c.x, 1u, u_input.b, 9664u)) ^ (arg_0.a - vec4<u32>(24031u, u_input.a.x, 1u, arg_0.a.x))) / vec4<u32>(1u, ~abs(0u), u_input.a.x - (1u / var_0.x), max(var_0.x, func_3(u_input.d, arg_0.a.yw, 4294967295u, 469f))));
    let var_2 = dot(~u_input.d.xx * (u_input.d.zy % u_input.d.yz), vec2<i32>(~arg_3.d, i32(-2147483648))) / (-firstTrailingBit(arg_0.b + arg_3.d) - (1i * ~(-arg_3.d)));
    var var_3 = !(!(!vec3<bool>(false || var_1.b.x, select(arg_2, arg_2, var_1.b.x), !true)));
    return -(~(min(0i, u_input.d.x >> var_1.c.x) ^ var_1.d));
}

fn func_1() -> vec2<bool> {
    return !vec2<bool>(select(!(u_input.d.x < u_input.d.x), !any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true)) | true), (func_2(Struct_3(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 4294967295u), u_input.d.x, vec4<f32>(1633f, 1341f, 275f, 536f)), 1216f, true, Struct_1(-644f, vec4<bool>(false, true, true, false), vec3<u32>(4294967295u, u_input.c, 0u), -7885i)) < 4920i) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 980f;
    var var_1 = min(vec3<i32>(~dot(u_input.d.yz, vec2<i32>(i32(-2147483648), -1i)), u_input.d.x, ~abs(u_input.d.x)), u_input.d) + vec3<i32>(2147483647i - (firstLeadingBit(-92179i) | -(-3842i)), u_input.d.x, ~(u_input.d.x & u_input.d.x) * -45181i);
    var_1 = select(u_input.d, firstTrailingBit(vec3<i32>(51644i, abs(-31609i), clamp(var_1.x, u_input.d.x, i32(-2147483648)))), true) | max(vec3<i32>(23019i, -(var_1.x / u_input.d.x), -countOneBits(var_1.x)), clamp(vec3<i32>(~var_1.x, var_1.x, -7263i * -262i), u_input.d, u_input.d));
    var var_2 = (u_input.a.x * u_input.a.x) >> u_input.a.x;
    var_1 = u_input.d;
    let var_3 = select(func_1(), select(vec2<bool>(69263i >= 25854i, false), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), true), func_1()), all(vec4<bool>(false, false, any(vec3<bool>(true, false, true)), u_input.d.x >= -41437i)) & any(!(!vec4<bool>(true, false, false, false))));
    var var_4 = ~var_1.x;
    let var_5 = -235f;
    var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1.x);
}

