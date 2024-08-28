// {"0:0":[122,64,142,123,130,190,188,205,44,1,172,119,171,56,214,234,86,214,94,203,202,28,248,130,241,196,14,222,126,142,237,238,210,92,152,25,131,72,242,188,80,243,187,9,133,158,128,253,175,134,250,177,217,213,29,113,150,251,5,247,207,192,167,192]}
// Seed: 11824590712657339601

struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn func_3(arg_0: i32) -> f32 {
    global0 = array<Struct_2, 32>();
    var var_0 = u_input.d;
    var var_1 = ~firstTrailingBit(i32(-2147483648));
    var var_2 = Struct_2(round(-trunc(1073f + -323f)), Struct_1(-(u_input.b.xx % vec2<i32>(-8174i, u_input.b.x)) / (-u_input.b.yx / vec2<i32>(3266i, 2846i)), u_input.a.x, u_input.b.x, (true || (-702f <= -334f)) && any(!vec2<bool>(true, true)), 77974i), 398f * (exp2(step(-2208f, -1000f)) - 270f), ~(~firstLeadingBit(1u / u_input.c.x)));
    var var_3 = global0[33639u];
    return -860f - (-var_2.a + var_3.c);
}

fn func_2() -> vec2<u32> {
    let var_0 = vec3<bool>(!(u_input.a.x <= (-17328i + -47271i)), false, (-220f / -1734f) != round(-func_3(u_input.b.x)));
    global0 = array<Struct_2, 32>();
    var var_1 = clamp(clamp(69214u * u_input.d, firstTrailingBit(u_input.d) ^ reverseBits(u_input.c.x), 9330u), u_input.c.x + 4294967295u, firstTrailingBit(1u + (0u & (u_input.d >> u_input.d))));
    var var_2 = Struct_3(800f, select(vec3<bool>((-662f * -2047f) == (615f + -401f), var_0.x, var_0.x), var_0, var_0), !var_0, global0[1u]);
    let var_3 = any(vec4<bool>(true, !any(!vec4<bool>(var_0.x, var_0.x, var_2.b.x, true)), var_2.d.b.d, all(var_0.yx)));
    return u_input.c.ww;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = vec4<i32>(reverseBits(1i), ~(-1i << arg_0.d.d), -27235i, u_input.a.x + ~dot(u_input.a, vec4<i32>(arg_0.d.b.b, u_input.b.x, arg_0.d.b.e, 1i))) >> u_input.c;
    let var_1 = ~(arg_0.d.d ^ 26621u);
    let var_2 = u_input.c.x << (u_input.d ^ arg_0.d.d);
    var var_3 = arg_0;
    let var_4 = var_3.d.d;
    return (vec2<u32>(0u, ~var_1) & func_2()) << vec2<u32>(0u, arg_1.d.d * (50589u >> arg_0.d.d));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    let var_0 = any(select(!(!(!vec2<bool>(true, true))), vec2<bool>(any(!vec2<bool>(false, true)), 4294967295u <= func_1(Struct_3(-980f, vec3<bool>(false, true, false), vec3<bool>(true, true, true), global0[1u]), Struct_3(350f, vec3<bool>(false, false, true), vec3<bool>(true, false, false), Struct_2(256f, Struct_1(u_input.a.zw, i32(-2147483648), 0i, true, arg_0), 137f, u_input.d))).x), false));
    let var_1 = false;
    let var_2 = max(vec4<f32>(select(-step(-967f, 1498f), sign(241f) * 501f, select(!false, true, all(vec3<bool>(var_1, var_1, var_0)))), -(-min(-263f, 1315f)), step(213f, 1143f * -758f) * -(-(-243f)), -228f), vec4<f32>(-(-1037f / -105f), -trunc(-(-1000f)), 1625f, -(abs(1818f) + -(-1000f))));
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    return -max(arg_0, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = u_input.d - ~755u;
    var var_1 = dot(u_input.a.wyy, firstTrailingBit(vec3<i32>(~u_input.b.x, u_input.a.x, func_4(abs(u_input.b.x), func_1(Struct_3(-695f, vec3<bool>(false, true, true), vec3<bool>(false, true, true), Struct_2(2647f, Struct_1(vec2<i32>(i32(-2147483648), u_input.b.x), 12370i, 1i, true, u_input.b.x), -2205f, u_input.c.x)), Struct_3(-1000f, vec3<bool>(false, false, true), vec3<bool>(true, false, true), Struct_2(938f, Struct_1(vec2<i32>(1i, u_input.b.x), u_input.b.x, 34282i, true, 1i), -336f, 103031u)))))));
    let var_2 = -1000f;
    let var_3 = Struct_1(abs(vec2<i32>(36483i ^ u_input.a.x, u_input.a.x)) & vec2<i32>(firstTrailingBit(-u_input.b.x), u_input.a.x), u_input.b.x, -u_input.b.x, !(((58058u | 4294967295u) ^ (67047u << u_input.d)) > u_input.d), -23702i);
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(~0u, ~u_input.c.x, ~1u) % u_input.c.wyx) - u_input.c.wyz, ~max(~u_input.a.wz | vec2<i32>(2147483647i, var_3.e), ~(-vec2<i32>(-1i, -58001i))), u_input.d);
}

