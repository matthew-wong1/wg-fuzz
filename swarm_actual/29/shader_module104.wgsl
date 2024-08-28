// {"0:0":[65,73,165,204,35,192,183,64,12,103,42,102,162,240,167,198,218,31,156,155,134,23,166,104,89,113,10,141,211,129,13,202,251,248,179,103,240,122,164,36,69,234,136,59,38,122,99,120]}
// Seed: 13625868650268324177

struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> vec3<u32> {
    var var_0 = step(-(-(-(-664f))), -(-1000f));
    let var_1 = !(reverseBits(~1u | u_input.c.x) == u_input.a.x);
    var var_2 = -534f;
    var var_3 = Struct_3(trunc(323f) / -(-(-371f)));
    let var_4 = 0i;
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(-arg_1.a, func_3()), -(-(2156f / 637f)) < (step(-(-326f), -652f) + (-arg_1.a - sign(1012f))));
    var_0 = Struct_2(Struct_1(min(min(-(-501f), -886f), var_0.a.a), ~(vec3<u32>(var_0.a.b.x, 110729u, u_input.d.x) << u_input.a) << ~countOneBits(vec3<u32>(var_0.a.b.x, var_0.a.b.x, 16720u))), !false | (-var_0.a.a >= (var_0.a.a * -361f)));
    var_0 = Struct_2(Struct_1(-(-671f), u_input.a), -307f > (-(-arg_1.a) - var_0.a.a));
    let var_1 = func_3().x;
    var var_2 = 1u;
    return select(ceil(-exp2(round(vec2<f32>(-1857f, -199f)))), -vec2<f32>(-317f / arg_1.a, -317f) + -select(vec2<f32>(761f, arg_1.a) - vec2<f32>(-1000f, var_0.a.a), -vec2<f32>(var_0.a.a, -154f), !var_0.b), !vec2<bool>((-339f + -1000f) <= (178f - var_0.a.a), var_0.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = min(vec2<f32>(trunc(max(-1158f, 513f)), 2188f) + (-vec2<f32>(-423f, -1099f) - vec2<f32>(-354f * 1697f, -(-775f))), step((func_2(u_input.b, Struct_3(481f), 2147483647i) + -vec2<f32>(513f, -570f)) + -(-vec2<f32>(306f, 529f)), ceil(ceil(vec2<f32>(-1069f, 543f)))));
    let var_1 = u_input.d.x;
    var_0 = -(-vec2<f32>(-var_0.x, -1605f));
    var_0 = abs(-(-vec2<f32>(max(var_0.x, 1440f), step(-991f, var_0.x))));
    var var_2 = firstLeadingBit(max(u_input.b.zxz, abs(u_input.b.wyz))) >> (u_input.a % u_input.a);
    return Struct_2(Struct_1(-(-365f) - var_0.x, u_input.a), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = 0u & reverseBits(countOneBits(u_input.a.x));
    var var_1 = func_1(~vec2<i32>(~u_input.b.x, 2147483647i), 66136u <= 4294967295u);
    let var_2 = -((-select(vec2<f32>(var_1.a.a, var_1.a.a), vec2<f32>(var_1.a.a, var_1.a.a), var_1.b) / vec2<f32>(var_1.a.a, -365f)) - -vec2<f32>(-var_1.a.a, var_1.a.a));
    var_0 = ~(~(~dot(vec4<u32>(4294967295u, 4294967295u, 55932u, 1u), vec4<u32>(0u, 0u, 13891u, 4294967295u))));
    let var_3 = func_1(u_input.b.yx, false);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>((u_input.b.x - u_input.b.x) | (u_input.b.x * u_input.b.x), ~u_input.b.x, firstLeadingBit(u_input.b.x)));
}

