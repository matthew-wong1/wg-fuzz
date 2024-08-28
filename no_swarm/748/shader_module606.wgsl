// {"0:0":[131,25,17,68,236,116,176,69,168,250,90,49,255,65,250,4,35,119,68,147,75,111,211,219,214,128,236,220,158,67,37,149,107,112,34,123,198,120,97,117,37,64,152,164,4,192,22,45]}
// Seed: 15810088116997121194

struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 14041i;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(1i, -43697i, -5488i, -5341i), vec4<i32>(i32(-2147483648), -35782i, 27030i, i32(-2147483648)), vec4<i32>(0i, 1i, -1i, 1i), vec4<i32>(-11123i, -1i, i32(-2147483648), 25688i), vec4<i32>(-359i, 1916i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), -13464i, 0i, 68732i), vec4<i32>(0i, 37701i, -15321i, i32(-2147483648)), vec4<i32>(28858i, -24029i, -24308i, 1i), vec4<i32>(1i, -1i, -2118i, -26455i), vec4<i32>(9500i, i32(-2147483648), 1i, 1i), vec4<i32>(-10238i, 0i, 70612i, 1i), vec4<i32>(-14886i, 1i, i32(-2147483648), -29326i), vec4<i32>(-94644i, i32(-2147483648), -1i, -43070i), vec4<i32>(0i, -1i, i32(-2147483648), 1i), vec4<i32>(-1i, 1i, 0i, i32(-2147483648)));

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    let var_0 = (-25612i * i32(-2147483648)) & arg_1.a.x;
    let var_1 = abs(ceil(-(-vec2<f32>(arg_1.b, -1726f)))) / (sign(max(vec2<f32>(arg_1.b, 2745f), vec2<f32>(arg_1.b, -1000f)) + max(vec2<f32>(arg_1.b, 210f), vec2<f32>(817f, -823f))) + round((vec2<f32>(arg_1.b, 884f) * vec2<f32>(arg_1.b, 1244f)) / vec2<f32>(arg_1.b, arg_1.b)));
    let var_2 = Struct_1(u_input.d, abs(arg_1.b * (min(-1234f, arg_1.b) / -var_1.x)), arg_1.c);
    global1 = array<vec4<i32>, 15>();
    global1 = array<vec4<i32>, 15>();
    return ~18589u * 0u;
}

fn func_2(arg_0: vec4<bool>) -> vec3<u32> {
    return vec3<u32>(u_input.b, 1u, (select(func_3(Struct_2(u_input.b), Struct_1(vec2<i32>(1i, -1i), -172f, vec3<bool>(arg_0.x, false, arg_0.x)), vec4<bool>(true, false, arg_0.x, true), false), ~u_input.e.x, !false) + ~abs(9325u)) & u_input.e.x);
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = u_input.d.x;
    let var_1 = ~func_2(!vec4<bool>(u_input.d.x < u_input.c, u_input.b == u_input.e.x, !false, false | false));
    var var_2 = 95952u;
    var var_3 = -vec3<f32>(2010f, -sign(1086f), 1011f) + -(-((vec3<f32>(-382f, -2574f, -168f) * vec3<f32>(889f, 211f, 1000f)) / abs(vec3<f32>(806f, 1407f, 739f))));
    let var_4 = select(!vec3<bool>(false, all(!vec4<bool>(false, false, false, true)), !false && !false), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), vec3<bool>(!(!true), false, all(!vec3<bool>(false, true, false))), !false), select(select(select(!vec3<bool>(true, true, true), !vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(!true, any(vec2<bool>(true, true)), true), all(!vec2<bool>(false, false))), !(!vec3<bool>(true, true, false)), select(!vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), !true), vec3<bool>(!true, select(false, false, false), false && false))));
    return global1[~arg_0.x];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false | !false;
    let var_1 = -global1[u_input.b] | -func_1(~vec3<u32>(4294967295u, 1u, 0u));
    var_0 = true;
    global0 = var_1.x;
    let var_2 = Struct_2(u_input.b + ((~u_input.b ^ (46372u % 36549u)) + ~(40824u | u_input.b)));
    var var_3 = !vec4<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false)), all(!vec3<bool>(true, true, false)), false, all(vec4<bool>(!false, !false, false | true, !true)));
    var_3 = !select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(var_3.x, var_3.x, true, false), true), select(vec4<bool>(false, false, var_3.x, true), select(vec4<bool>(var_3.x, true, false, false), vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(var_3.x, false, var_3.x, true)), !false), !(!vec4<bool>(false, var_3.x, false, var_3.x))), select(!(!vec4<bool>(false, false, false, var_3.x)), vec4<bool>(!var_3.x, false, -621f > 460f, var_3.x), vec4<bool>(false, !false, false, var_3.x)), select(!vec4<bool>(var_3.x, var_3.x, true, true), !(!vec4<bool>(var_3.x, false, false, var_3.x)), false));
    let x = u_input.a;
    s_output = StorageBuffer((((u_input.e.zz - vec2<u32>(61011u, 49266u)) >> ~u_input.e.yz) * (u_input.e.xz - countOneBits(vec2<u32>(0u, 4294967295u)))) + (~vec2<u32>(4294967295u, 47846u) + abs(u_input.e.xx)), ~(~clamp(98419u, 1u, 40439u)) & (u_input.b % countOneBits(u_input.e.x)), 36436u, vec4<u32>(dot(vec4<u32>(var_2.a, var_2.a, var_2.a, 1u) >> (vec4<u32>(1u, u_input.e.x, 30685u, 98875u) | vec4<u32>(u_input.e.x, var_2.a, u_input.b, 0u)), min(vec4<u32>(1u, var_2.a, u_input.b, var_2.a) - vec4<u32>(4294967295u, var_2.a, var_2.a, 0u), firstLeadingBit(vec4<u32>(0u, var_2.a, 57312u, u_input.e.x)))), 4294967295u % countOneBits(0u), ~(~var_2.a), (1u >> ~u_input.b) - var_2.a), min(u_input.e.zx, ~vec2<u32>(u_input.b, u_input.b)));
}

