// {"0:0":[104,41,41,88,250,26,82,181,195,208,156,205,20,166,240,152]}
// Seed: 356378495741338769

struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, false, false, false, true, false, true, false, false, false, true, true, false, false, false, true, true, true, false, true, true, true, false, false, true, true, true, false, true);

var<private> global1: u32;

var<private> global2: array<i32, 15>;

var<private> global3: vec2<f32>;

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = u_input.a;
    global3 = arg_1.a;
    let var_1 = -27530i;
    let var_2 = firstTrailingBit(u_input.b);
    let var_3 = arg_0;
    return vec2<f32>(min(arg_1.a.x, ceil(-var_3.a.c.a.x)), -round(-485f));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(global3.x, -588f)), vec4<i32>(i32(-2147483648), global2[0u], -1i, global2[4294967295u]), Struct_1(vec2<f32>(859f, -347f)), vec4<u32>(42870u, u_input.a, 20306u, u_input.a)), global3.x, vec3<i32>(global2[u_input.a], i32(-2147483648), 2147483647i), global0[u_input.a], u_input.a), Struct_1(vec2<f32>(949f, 1076f)), false)), max(~(~vec4<i32>(u_input.b.x, global2[20159u], 2147483647i, global2[4294967295u])), -(~vec4<i32>(global2[1u], global2[u_input.a], 1i, -50237i))), Struct_1(min(-vec2<f32>(global3.x, global3.x), -vec2<f32>(-1394f, 2394f))), ~(~vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)) ^ min(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) + vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), -trunc(global3.x), vec3<i32>(select(reverseBits(global2[u_input.a]), ~2147483647i, !global0[u_input.a]), -34683i, global2[clamp(u_input.a >> 0u, select(u_input.a, u_input.a, global0[u_input.a]), 4294967295u)]) - max(select(~vec3<i32>(u_input.b.x, -1i, -13425i), ~vec3<i32>(-1673i, u_input.b.x, 1i), select(vec3<bool>(true, false, global0[13578u]), vec3<bool>(global0[1u], global0[u_input.a], false), global0[4294967295u])), ~(-vec3<i32>(i32(-2147483648), 30361i, 1i))), true, firstTrailingBit(u_input.a) + (select(u_input.a, ~56588u, global0[u_input.a]) - ~u_input.a));
    let var_1 = Struct_3(var_0.a, global3.x, vec3<i32>(45079i, -27859i, ~u_input.b.x), all(!(!vec2<bool>(true, global0[var_0.a.d.x]))), clamp(u_input.a, min(countOneBits(min(90293u, 9096u)), ~dot(vec4<u32>(var_0.a.d.x, 6683u, 3784u, u_input.a), vec4<u32>(30093u, 0u, 1u, 29400u))), (u_input.a % u_input.a) % var_0.e));
    var var_2 = 1u;
    let var_3 = (-(vec4<f32>(1218f, global3.x, var_0.a.a.a.x, -458f) + (vec4<f32>(var_1.b, var_1.a.c.a.x, -1842f, var_1.a.c.a.x) * vec4<f32>(526f, var_0.b, var_1.a.a.a.x, -1604f))) - (((vec4<f32>(-329f, -1000f, var_0.b, 167f) - vec4<f32>(-539f, var_0.a.a.a.x, -1471f, var_1.a.a.a.x)) - -vec4<f32>(var_1.a.c.a.x, var_1.a.a.a.x, var_0.a.a.a.x, global3.x)) + -(-vec4<f32>(283f, 670f, -435f, -311f)))) - trunc(vec4<f32>(sign(-var_1.a.c.a.x), min(908f, -594f), -(-1286f + 1149f), var_1.b));
    global0 = array<bool, 32>();
    return ~(firstTrailingBit(vec4<i32>(-34512i, abs(11867i), -11901i, var_1.c.x)) & (vec4<i32>(-(-54872i), abs(global2[1u]), global2[85867u] | var_1.a.b.x, var_0.c.x) - vec4<i32>(var_1.a.b.x, 5251i, select(8098i, -10767i, true), min(global2[1u], var_1.c.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> i32 {
    global2 = array<i32, 15>();
    let var_0 = func_3();
    let var_1 = Struct_1(-(trunc(vec2<f32>(-334f, 392f) + vec2<f32>(1218f, -738f)) - vec2<f32>(-1330f, -291f)));
    global2 = array<i32, 15>();
    global3 = -(-var_1.a / var_1.a);
    return reverseBits(func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = Struct_2(Struct_1(max(step(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(376f, global3.x)), vec4<i32>(global2[u_input.a], -1i, global2[1u], global2[9006u]), Struct_1(vec2<f32>(-427f, global3.x)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 170f, vec3<i32>(u_input.b.x, global2[u_input.a], 0i), global0[u_input.a], u_input.a), Struct_1(vec2<f32>(global3.x, global3.x)), global0[u_input.a]), vec2<f32>(global3.x, -359f)), (vec2<f32>(global3.x, 861f) - vec2<f32>(global3.x, -1090f)) / (vec2<f32>(1000f, -543f) - vec2<f32>(-405f, global3.x)))), vec4<i32>((global2[24541u] / 7603i) << 42189u, abs(global2[43620u]) / dot(vec3<i32>(2147483647i, global2[1u], 26850i), vec3<i32>(global2[1u], i32(-2147483648), 47480i)), func_2(u_input.b, vec3<u32>(0u, u_input.a, u_input.a)) / (-56530i >> 23645u), 2147483647i << ~44157u) >> vec4<u32>(u_input.a, 4294967295u * ~30490u, ~u_input.a, abs(0u)), Struct_1(vec2<f32>(global3.x, -(1168f - 1177f))), ~(~(vec4<u32>(u_input.a, 137450u, u_input.a, u_input.a) - abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)))));
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<f32>(739f, -1228f)), clamp(firstTrailingBit(min(var_0.b, var_0.b)), select(var_0.b, select(var_0.b, var_0.b, vec4<bool>(global0[var_0.d.x], true, global0[var_0.d.x], global0[0u])), global0[var_0.d.x]), vec4<i32>(u_input.b.x * u_input.b.x, var_0.b.x, global2[102760u] + 72561i, i32(-2147483648) << u_input.a)), var_0.c, var_0.d), global3.x, vec3<i32>(9668i - (var_0.b.x % u_input.b.x), ~(-38864i + -6277i), ~dot(var_0.b, vec4<i32>(1i, 12918i, -1729i, -25997i))) / -var_0.b.ywy, dot(abs(firstLeadingBit(vec2<u32>(0u, 4294967295u))), ~vec2<u32>(u_input.a, 52975u)) > firstLeadingBit(firstLeadingBit(u_input.a)), var_0.d.x);
    var var_2 = Struct_3(Struct_2(var_1.a.c, firstTrailingBit(var_1.a.b), var_0.c, (var_1.a.d >> ~var_0.d) & (~vec4<u32>(127942u, 4294967295u, var_1.e, 1u) % vec4<u32>(var_1.e, 68743u, var_1.e, 1u))), -(-804f * -var_0.a.a.x), max(var_1.a.b.yyw, var_0.b.wyw) / ~vec3<i32>(38081i, -37036i, -32001i % -39400i), global0[dot(var_1.a.d.ww, vec2<u32>(~0u | var_0.d.x, 4294967295u))], var_0.d.x);
    var_0 = var_2.a;
    let var_3 = (1u / 1u) / (10651u << ~var_0.d.x);
    let var_4 = ~(firstTrailingBit(vec4<u32>(countOneBits(0u), ~var_0.d.x, u_input.a ^ 1u, ~var_2.a.d.x)) / var_1.a.d);
    var var_5 = var_4;
    let var_6 = Struct_3(var_1.a, var_0.c.a.x, vec3<i32>(global2[12969u], (35650i << (28399u >> var_5.x)) + -17533i, (var_1.a.b.x | 2147483647i) - (-6998i * -10350i)), true, ~(((3531u << var_4.x) - var_5.x) & var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(floor(min(-(vec2<f32>(var_1.b, global3.x) * vec2<f32>(var_2.b, var_0.c.a.x)), (vec2<f32>(var_2.a.a.a.x, global3.x) + vec2<f32>(412f, 1014f)) / trunc(var_0.a.a))), vec4<i32>(abs(abs(var_2.c.x)), -var_2.c.x ^ var_0.b.x, u_input.b.x, -1i) * ~vec4<i32>(global2[var_2.e] ^ 1i, -var_6.a.b.x, abs(i32(-2147483648)), -27533i ^ var_0.b.x), 650f, var_1.a.d.zy, ~(firstTrailingBit(~vec4<u32>(var_2.a.d.x, 3404u, var_0.d.x, var_4.x)) + ~max(vec4<u32>(var_0.d.x, var_2.e, 95301u, var_5.x), var_2.a.d)));
}

