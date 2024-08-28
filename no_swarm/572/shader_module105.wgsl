// {"0:0":[194,168,140,11]}
// Seed: 5263176442282736785

struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

var<private> global1: array<Struct_4, 11>;

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = abs(-(~min(~vec3<i32>(u_input.a, u_input.a, arg_1), vec3<i32>(u_input.a, arg_1, arg_1))));
    let var_1 = abs(select(33913u, abs(51451u & ~1u), false));
    global1 = array<Struct_4, 11>();
    var var_2 = reverseBits(var_0.yy & (vec2<i32>(var_0.x, var_0.x) ^ var_0.zz)) >> ~vec2<u32>(~(~57724u), select(~arg_2.x, var_1, false));
    global1 = array<Struct_4, 11>();
    return !(!(!vec4<bool>(any(vec4<bool>(false, false, true, false)), !true, true, any(vec4<bool>(false, true, true, false)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~vec4<i32>(u_input.a, -3077i ^ arg_2.x, 2147483647i, -2298i);
    let var_1 = Struct_1(-1038f);
    global1 = array<Struct_4, 11>();
    let var_2 = ~(((countOneBits(vec4<u32>(1u, 59856u, 63701u, 0u)) ^ max(vec4<u32>(51635u, 0u, 1u, 65144u), vec4<u32>(36699u, 4294967295u, 4294967295u, 4294967295u))) | vec4<u32>(firstLeadingBit(4294967295u), dot(vec4<u32>(2609u, 20782u, 0u, 83876u), vec4<u32>(20167u, 0u, 29655u, 0u)), dot(vec3<u32>(49813u, 84432u, 43002u), vec3<u32>(1u, 4294967295u, 4294967295u)), 47360u)) / ~(~(vec4<u32>(4294967295u, 154621u, 0u, 654u) / vec4<u32>(4294967295u, 0u, 12186u, 2506u))));
    global1 = array<Struct_4, 11>();
    return var_1.a;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = max(2147483647i, 1i);
    var var_1 = func_4(-11078i, vec4<bool>(all(func_3(arg_0, u_input.a - 37187i, min(vec4<u32>(38318u, 4294967295u, arg_0, arg_0), vec4<u32>(0u, 4294967295u, arg_0, 4294967295u)))), !false, !(any(vec3<bool>(false, true, false)) || any(vec3<bool>(true, true, false))), arg_0 <= ~43606u), vec3<i32>(i32(-2147483648), dot(abs(select(vec2<i32>(u_input.a, -28437i), vec2<i32>(i32(-2147483648), var_0), true)), vec2<i32>(2147483647i, 1i & u_input.a)), -dot(vec2<i32>(u_input.a, 1i), vec2<i32>(-24839i, var_0)) << arg_0), -round(vec2<f32>(sign(180f), 270f)));
    let var_2 = Struct_4(Struct_2(~(~vec4<u32>(arg_0, 13823u, 4294967295u, arg_0)) * vec4<u32>(29404u, 25076u % arg_0, ~2565u, reverseBits(arg_0)), clamp(abs(firstTrailingBit(vec3<u32>(arg_0, 4353u, 54445u))), ~reverseBits(vec3<u32>(1u, 4294967295u, arg_0)), vec3<u32>(arg_0, ~0u, abs(arg_0))), Struct_1(func_4(i32(-2147483648), vec4<bool>(true, true, true, false), vec3<i32>(2147483647i, 0i, var_0), vec2<f32>(-1059f, 365f)) / (-1365f + 434f)), vec4<u32>(0u << ~arg_0, (0u - arg_0) << (6947u ^ 1u), 0u, arg_0)), -(vec3<f32>(-1000f * 382f, -2102f, -1000f - -962f) - -(-vec3<f32>(-836f, -527f, 551f))), select(!select(!vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), !vec4<bool>(false, false, true, true)), vec4<bool>(any(func_3(57697u, u_input.a, vec4<u32>(arg_0, 51326u, 1u, arg_0))), !all(vec3<bool>(false, false, false)), !(!false), func_3(0u, u_input.a - var_0, vec4<u32>(4294967295u, 0u, arg_0, arg_0) % vec4<u32>(arg_0, arg_0, 27364u, arg_0)).x), vec4<bool>(true, all(!vec3<bool>(false, false, false)), !(!true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))), dot(vec3<i32>(firstTrailingBit(u_input.a) | abs(i32(-2147483648)), -2147483647i - ~var_0, (var_0 & 2147483647i) >> 75259u), max(abs(vec3<i32>(2147483647i, var_0, 14777i)) >> abs(vec3<u32>(0u, arg_0, 4294967295u)), vec3<i32>(2147483647i, min(u_input.a, var_0), dot(vec3<i32>(var_0, var_0, u_input.a), vec3<i32>(u_input.a, -7360i, u_input.a))))));
    let var_3 = var_2;
    var var_4 = ~select(vec4<u32>(1u, 89471u, ~(4294967295u * 0u), var_2.a.b.x), vec4<u32>(firstTrailingBit(~var_2.a.b.x), 0u, var_3.a.a.x, abs(dot(var_3.a.d.ww, var_3.a.b.yy))), select(var_3.c, var_3.c, all(select(var_2.c.yz, vec2<bool>(var_3.c.x, false), true))));
    return false;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(!(!true), func_2(~4294967295u) & false);
    var var_1 = firstLeadingBit(~4294967295u | 4294967295u);
    var var_2 = firstTrailingBit(1u);
    var var_3 = arg_0.a;
    let var_4 = round((ceil(arg_0.a) + -248f) / -(-997f));
    return Struct_1(var_4);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 11>();
    var var_0 = Struct_3(func_1(Struct_1(2124f)));
    var var_1 = firstLeadingBit(firstLeadingBit(reverseBits(select(~vec4<u32>(56848u, 117900u, 1u, 54785u), vec4<u32>(0u, 12924u, 4294967295u, 23947u) + vec4<u32>(0u, 44401u, 43368u, 1u), vec4<bool>(false, true, false, false)))));
    var var_2 = -49506i;
    global0 = array<Struct_4, 27>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(select(~var_1.x, var_1.x, false) / 0u), vec3<f32>(-(-var_0.a.a + (-1180f + -1392f)), -(-var_0.a.a), var_0.a.a), -31586i);
}

