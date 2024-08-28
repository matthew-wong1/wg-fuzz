// {"0:0":[227,219,169,57,27,232,65,135]}
// Seed: 14822171227387193791

struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1469f;

var<private> global1: array<bool, 2>;

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: bool = true;

var<private> global4: array<bool, 1> = array<bool, 1>(true);

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(Struct_1(-4795i, abs(~(~vec3<u32>(0u, 14415u, 14370u))), 207f), !vec4<bool>(false, false, false, any(!vec4<bool>(false, global4[1u], global1[1u], false))), Struct_1((u_input.a.x + -1i) / reverseBits(u_input.a.x), vec3<u32>(reverseBits(19341u), 1u, ~91360u | 15445u), -(-trunc(422f))));
    global4 = array<bool, 1>();
    return 3178u;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(max(32003i, max(91286i, u_input.a.x) % (u_input.a.x / u_input.a.x)), vec3<u32>(max(4294967295u, 0u), 25742u, ~73551u) >> vec3<u32>(~4294967295u, abs(7347u), 1u * 4294967295u), arg_2), select(vec4<bool>(false, false, true, func_3(global4[4294967295u]) >= clamp(12599u, 0u, 4294967295u)), vec4<bool>(!false, !true, !select(false, false, false), all(arg_1)), vec4<bool>(any(!arg_1), 4294967295u == ~8169u, true, 36855u > (3021u * 0u))), Struct_1(u_input.a.x, select(~firstTrailingBit(vec3<u32>(0u, 15311u, 32953u)), reverseBits(~vec3<u32>(4294967295u, 42582u, 4294967295u)), true), -arg_2));
    var var_1 = Struct_2(var_0.a, !var_0.b, Struct_1(39596i, var_0.a.b, abs(-(-var_0.a.c))));
    let var_2 = var_1.a.a;
    global4 = array<bool, 1>();
    let var_3 = vec3<i32>(reverseBits(var_0.c.a), firstTrailingBit(~firstTrailingBit(var_0.c.a)) | ~var_0.a.a, abs(-dot(vec4<i32>(2147483647i, 2147483647i, -9499i, var_1.c.a), vec4<i32>(u_input.a.x, 16383i, var_0.a.a, 1i)) + (-29016i - min(2147483647i, -20492i))));
    return var_1.a.a;
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec3<i32>(-(2147483647i << 0u), u_input.a.x, -1i % func_2(!global1[4294967295u], vec2<bool>(true, global4[4294967295u]), -(-624f)));
    global1 = array<bool, 2>();
    var var_1 = firstLeadingBit(min(~vec4<i32>(-6844i, var_0.x, var_0.x, var_0.x) / vec4<i32>(var_0.x, i32(-2147483648), 1i, u_input.a.x), -(-vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a.x))) + (vec4<i32>(-u_input.a.x, -33210i, 2147483647i & var_0.x, var_0.x) - (~vec4<i32>(-1i, var_0.x, var_0.x, u_input.a.x) / (vec4<i32>(u_input.a.x, u_input.a.x, 3150i, var_0.x) & vec4<i32>(-747i, u_input.a.x, var_0.x, 27574i)))));
    var var_2 = true;
    let var_3 = vec3<u32>(firstLeadingBit(firstTrailingBit(max(0u, 4294967295u)) / min(~0u, 1u)), ~(((0u | 0u) ^ dot(vec4<u32>(4294967295u, 2967u, 13904u, 4975u), vec4<u32>(0u, 29489u, 0u, 0u))) << dot(abs(vec4<u32>(1u, 0u, 4294967295u, 33779u)), vec4<u32>(4931u, 1u, 5774u, 0u) / vec4<u32>(10468u, 4294967295u, 53127u, 4294967295u))), min(~(countOneBits(1u) & ~1u), ~(~0u) * ~(4294967295u % 1u)));
    return Struct_2(Struct_1(~var_0.x, ~var_3, -1262f), !select(vec4<bool>(!true, !false, global1[22381u] || false, global1[var_3.x]), vec4<bool>(global1[var_3.x], true || global1[var_3.x], true, all(vec4<bool>(true, false, false, true))), select(vec4<bool>(global1[4294967295u], global1[var_3.x], true, global1[var_3.x]), !vec4<bool>(global1[var_3.x], true, false, false), !true)), Struct_1(~(55192i ^ (-20711i * 85059i)), max(~(~var_3), ~vec3<u32>(4294967295u, 0u, var_3.x) | var_3), select(trunc(-682f * -134f), -596f + -833f, select(!false, false || false, !global4[49720u]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = 1103f * abs(-(-1063f));
    global4 = array<bool, 1>();
    var var_1 = !(!(!(!global2[var_0.c.b.x / var_0.c.b.x])));
    var var_2 = abs(~(~vec4<i32>(max(var_0.a.a, i32(-2147483648)), u_input.a.x, firstTrailingBit(var_0.a.a), var_0.c.a)));
    let var_3 = 0u;
    let var_4 = vec3<bool>(!(!true), !false, true);
    var var_5 = (var_3 & 1u) << ~(countOneBits(abs(var_0.c.b.x)) * abs(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~abs(var_2.x))), vec3<f32>(var_0.a.c, round(var_0.c.c), -var_0.a.c), -(-vec2<f32>(round(var_0.a.c), -1263f)), vec2<i32>(~var_2.x, -62579i));
}

