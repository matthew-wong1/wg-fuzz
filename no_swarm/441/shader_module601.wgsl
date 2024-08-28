// {"0:0":[163,91,153,130,77,78,113,30,40,178,149,180,215,61,117,146,24,201,132,168,61,18,19,189]}
// Seed: 8787494071403797423

struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = -3612i;

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = -clamp(1i, -17884i, firstTrailingBit(u_input.c.x));
    var var_1 = floor(-(vec2<f32>(ceil(-1086f), global0.x / arg_0.x) / arg_0));
    let var_2 = -(~firstTrailingBit(-(vec3<i32>(-20497i, u_input.c.x, u_input.c.x) * vec3<i32>(u_input.c.x, -1i, 2147483647i))));
    let var_3 = Struct_3(~clamp(countOneBits(vec2<u32>(arg_1, 13760u) & vec2<u32>(u_input.b, u_input.b)), vec2<u32>(4553u, 5365u * u_input.d), vec2<u32>(~u_input.a, min(4294967295u, 18242u))));
    var var_4 = 24875u;
    return ~(~dot(abs(vec3<u32>(arg_1, 4294967295u, var_3.a.x)) >> (vec3<u32>(35795u, 9675u, u_input.b) / vec3<u32>(17967u, 1u, 0u)), vec3<u32>(0u + var_3.a.x, 4294967295u | 4294967295u, var_3.a.x)));
}

fn func_2() -> vec2<u32> {
    let var_0 = u_input.c.x;
    var var_1 = abs(ceil(global0.x));
    var_1 = abs(-913f + global0.x);
    let var_2 = vec3<i32>(~var_0 - var_0, 2147483647i, 0i);
    var var_3 = vec4<u32>(~0u * (u_input.d & abs(~u_input.b)), max(~(45257u + 42910u) << ~u_input.b, ~79515u | u_input.b), func_3(vec2<f32>(trunc(global0.x) * -258f, -122f), 12573u, Struct_2(!(false || true), Struct_1(vec3<bool>(true, true, true), -global0.x), Struct_1(vec3<bool>(true, true, false), -global0.x), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), 560f - global0.x), trunc(613f * -217f))), 61768u);
    return abs(var_3.yz);
}

fn func_1() -> vec2<bool> {
    var var_0 = ~((vec2<u32>(dot(vec2<u32>(u_input.b, u_input.b), vec2<u32>(45537u, 0u)), u_input.d) >> max(vec2<u32>(0u, u_input.b), func_2())) ^ abs(firstTrailingBit(vec2<u32>(4294967295u, u_input.d)) - vec2<u32>(10903u, 1u)));
    let var_1 = Struct_2(all(!vec3<bool>(-674f <= global0.x, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, false)))), Struct_1(select(!(!vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, true)), select(!vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), global0.x - max(-global0.x, trunc(global0.x))), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), !vec3<bool>(false, false, false)), select(-global0.x - -1000f, sign(global0.x), 74626u != ~var_0.x)), Struct_1(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), !vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), !vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), !vec3<bool>(true, true, false))), abs(global0.x)), max(1483f, global0.x));
    var var_2 = var_1.c;
    var_2 = Struct_1(var_2.a, var_2.b);
    global0 = select(vec3<f32>(global0.x, -1149f, -var_2.b), vec3<f32>(sign(957f), -555f, -(-var_2.b)), all(vec2<bool>(all(!vec4<bool>(var_2.a.x, false, var_2.a.x, false)), var_1.b.a.x)));
    return !(!select(!vec2<bool>(false, var_2.a.x), vec2<bool>(false, any(vec4<bool>(var_2.a.x, var_1.b.a.x, var_2.a.x, var_1.d.a.x))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(min(4294967295u, 4294967295u) - 85394u, u_input.d);
    global2 = array<vec2<bool>, 26>();
    let var_1 = ~vec3<u32>(u_input.a >> ~4294967295u, min(0u, 4294967295u), ~countOneBits(~var_0.x));
    let var_2 = u_input.c.x;
    let var_3 = vec3<bool>(all(!(!vec3<bool>(true, true, false))), all(select(!(!vec4<bool>(false, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), !vec4<bool>(true, false, true, true), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), !vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)))), !all(func_1()));
    global1 = u_input.c.x | ~(-u_input.c.x);
    let var_4 = Struct_1(var_3, floor(global0.x / (global0.x * global0.x)) * -620f);
    let var_5 = -(var_4.b - (-var_4.b + var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(-(45505i >> (4294967295u >> ~var_1.x)), ~(~var_0.x), -(ceil(select(vec4<f32>(global0.x, global0.x, 549f, var_5), vec4<f32>(-1852f, 1120f, var_5, 978f), vec4<bool>(false, true, var_3.x, false))) + -(-vec4<f32>(var_5, var_5, global0.x, 569f))), -(dot(-vec3<i32>(u_input.c.x, var_2, u_input.c.x), vec3<i32>(-8150i, 14989i, var_2) - vec3<i32>(var_2, i32(-2147483648), 1i)) >> var_0.x), min(var_1.yy, var_0) % var_1.zz);
}

