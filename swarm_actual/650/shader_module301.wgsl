// {"0:0":[165,198,172,42]}
// Seed: 16619235907679181068

struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(19663i, vec4<bool>(true, true, false, false)), -1267f, Struct_1(2147483647i, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(-47122i, vec4<bool>(true, true, true, false)), -1442f, Struct_1(28553i, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(-7973i, vec4<bool>(true, true, true, false)), 1223f, Struct_1(-7432i, vec4<bool>(true, false, true, true))), Struct_2(Struct_1(53024i, vec4<bool>(false, false, true, false)), 843f, Struct_1(-1i, vec4<bool>(true, true, false, false))), Struct_2(Struct_1(0i, vec4<bool>(false, false, true, false)), -600f, Struct_1(0i, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(0i, vec4<bool>(false, false, true, true)), -174f, Struct_1(16059i, vec4<bool>(false, true, true, true))), Struct_2(Struct_1(-1i, vec4<bool>(false, false, false, false)), 1772f, Struct_1(24837i, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-31744i, vec4<bool>(false, false, false, true)), 1890f, Struct_1(0i, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, vec4<bool>(false, false, false, true)), 1556f, Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false)), 430f, Struct_1(-38581i, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(-1i, vec4<bool>(false, false, false, false)), -2318f, Struct_1(37211i, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(2147483647i, vec4<bool>(false, true, true, true)), 1582f, Struct_1(-27041i, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(1i, vec4<bool>(false, true, false, true)), -1688f, Struct_1(-1i, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(-29229i, vec4<bool>(true, true, false, true)), -137f, Struct_1(-3106i, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-52235i, vec4<bool>(true, true, false, false)), 565f, Struct_1(-20877i, vec4<bool>(true, false, false, true))), Struct_2(Struct_1(-3599i, vec4<bool>(false, true, false, false)), -1245f, Struct_1(12040i, vec4<bool>(false, false, false, true))), Struct_2(Struct_1(33183i, vec4<bool>(true, true, false, false)), -630f, Struct_1(-1i, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(-58660i, vec4<bool>(true, true, false, true)), -262f, Struct_1(24130i, vec4<bool>(true, true, false, false))));

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec2<bool> {
    global0 = array<Struct_2, 18>();
    var var_0 = abs(countOneBits((vec3<u32>(1u, 1u, 1124u) / vec3<u32>(37504u, 0u, 34681u)) * ~vec3<u32>(1u, 17865u, 7251u)) | vec3<u32>(reverseBits(0u) / (1u % 50736u), 1u, 85861u & (28064u ^ 10986u)));
    let var_1 = Struct_5(~2326i, any(arg_1.a), Struct_4(-(-round(vec2<f32>(-896f, arg_1.d.b))), Struct_3(!vec2<bool>(false, false), select(u_input.a, arg_0.c.a, arg_0.a.b.x) % -(i32(-2147483648)), Struct_2(arg_1.e, -1465f, arg_0.c), arg_0, arg_1.d.c), ~dot(firstLeadingBit(vec2<u32>(1u, 4294967295u)), max(var_0.xx, var_0.yx)), !vec3<bool>(false, false, false), arg_0.a), -min(-717f, -arg_0.b));
    let var_2 = vec4<u32>(4294967295u, var_0.x % 4294967295u, reverseBits(~select(clamp(var_0.x, 24375u, 1u), var_1.c.c << 21371u, select(var_1.b, arg_0.a.b.x, var_1.b))), ~dot(vec2<u32>(48850u, var_0.x) | ~var_0.yz, ~vec2<u32>(var_0.x, var_1.c.c) ^ vec2<u32>(1u, 31168u)));
    let var_3 = arg_1;
    return select(select(select(vec2<bool>(all(vec4<bool>(var_3.d.a.b.x, var_3.e.b.x, true, true)), !false), !(!vec2<bool>(arg_0.c.b.x, false)), all(!vec3<bool>(false, var_3.a.x, var_3.e.b.x))), !select(var_1.c.e.b.xz, var_1.c.d.xy, var_1.b & var_1.b), arg_0.c.b.yx), var_1.c.b.d.c.b.yz, !var_3.a);
}

fn func_2(arg_0: u32) -> f32 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_0 = true;
    var var_1 = Struct_3(!select(!func_3(Struct_2(Struct_1(u_input.a, vec4<bool>(true, true, true, var_0)), -1196f, Struct_1(u_input.a, vec4<bool>(true, true, var_0, var_0))), Struct_3(vec2<bool>(var_0, var_0), -1363i, Struct_2(Struct_1(58987i, vec4<bool>(true, true, var_0, var_0)), -546f, Struct_1(2147483647i, vec4<bool>(false, var_0, false, false))), Struct_2(Struct_1(u_input.a, vec4<bool>(var_0, var_0, true, true)), -962f, Struct_1(-23583i, vec4<bool>(false, true, false, var_0))), Struct_1(29525i, vec4<bool>(false, var_0, true, var_0)))), select(vec2<bool>(var_0, true), !vec2<bool>(var_0, false), func_3(Struct_2(Struct_1(2147483647i, vec4<bool>(var_0, true, var_0, var_0)), 931f, Struct_1(u_input.a, vec4<bool>(true, true, var_0, false))), Struct_3(vec2<bool>(var_0, false), u_input.a, global0[46298u], Struct_2(Struct_1(u_input.a, vec4<bool>(false, var_0, false, false)), 701f, Struct_1(u_input.a, vec4<bool>(var_0, var_0, var_0, false))), Struct_1(u_input.a, vec4<bool>(false, var_0, var_0, true))))), true), dot(vec4<i32>(1i, u_input.a, -(u_input.a / u_input.a), u_input.a), firstLeadingBit(vec4<i32>(u_input.a, i32(-2147483648), u_input.a, 0i) * vec4<i32>(u_input.a, u_input.a, 31553i, -1i)) >> select(select(vec4<u32>(19315u, arg_0, arg_0, 11143u), vec4<u32>(arg_0, 1u, 4294967295u, 27053u), true), vec4<u32>(arg_0, 1u, arg_0, 0u), !vec4<bool>(false, false, var_0, true))), global0[~(~(~arg_0)) - (abs(firstTrailingBit(arg_0)) - arg_0)], Struct_2(Struct_1(dot(vec2<i32>(u_input.a, i32(-2147483648)), select(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(u_input.a, u_input.a), vec2<bool>(var_0, true))), select(!vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(false, var_0, true, false), vec4<bool>(false, var_0, false, var_0))), step(abs(-1000f), step(-477f, -1929f) + min(1283f, 349f)), Struct_1(-(-22533i), !select(vec4<bool>(true, true, true, var_0), vec4<bool>(false, var_0, var_0, var_0), var_0))), Struct_1(u_input.a, vec4<bool>(true & any(vec2<bool>(var_0, var_0)), any(!vec4<bool>(var_0, var_0, var_0, false)), !false, !(u_input.a != 26210i))));
    global0 = array<Struct_2, 18>();
    return -(-1395f - var_1.c.b) - trunc(405f / 1120f);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> vec3<bool> {
    var var_0 = -(-floor((-661f * -941f) / 1000f));
    let var_1 = Struct_1(abs(0i), !(!vec4<bool>(true, arg_0.x, arg_0.x, !false)));
    var var_2 = -(floor(-(-1764f)) / -505f);
    let var_3 = max(1u, 0u);
    var_2 = step(539f * (((-1127f - 146f) + 1000f) / -trunc(1432f)), func_2(var_3) * -trunc(-1999f));
    return !arg_0;
}

fn func_4(arg_0: Struct_5) -> u32 {
    let var_0 = arg_0.c.b.d;
    global0 = array<Struct_2, 18>();
    let var_1 = -915f * var_0.b;
    global0 = array<Struct_2, 18>();
    let var_2 = -(-(max(-u_input.a, 2147483647i) - ~min(var_0.c.a, -10399i)));
    return ~countOneBits(2601u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(abs((10633i & 5799i) << 53560u), any(func_1(vec3<bool>(false, false, false), u_input.a)), Struct_4(exp2(vec2<f32>(-510f, -412f) * vec2<f32>(1159f, 815f)), Struct_3(func_1(vec3<bool>(true, true, false), 1i).xz, u_input.a - u_input.a, global0[dot(vec2<u32>(33512u, 28879u), vec2<u32>(4294967295u, 56713u))], Struct_2(Struct_1(u_input.a, vec4<bool>(false, true, false, true)), 1000f, Struct_1(u_input.a, vec4<bool>(true, true, false, true))), Struct_1(48437i, vec4<bool>(true, false, false, true))), ~16760u * abs(13885u), !(!vec3<bool>(false, false, true)), Struct_1(-u_input.a, vec4<bool>(false, false, true, false))), -(-(-334f + -446f))));
    var var_1 = true;
    global0 = array<Struct_2, 18>();
    let var_2 = Struct_2(Struct_1(~u_input.a, vec4<bool>(select(true, u_input.a >= i32(-2147483648), true), !(var_0 <= 34067u), !true, var_0 < dot(vec4<u32>(var_0, 37219u, var_0, var_0), vec4<u32>(4294967295u, var_0, 0u, var_0)))), 1000f, Struct_1(u_input.a & -u_input.a, !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true))));
    let var_3 = ~(-(-var_2.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec4<u32>(67001u, 4294967295u, 25502u, var_0), ~vec4<u32>(var_0, 1u, 4906u, var_0))), var_0);
}

