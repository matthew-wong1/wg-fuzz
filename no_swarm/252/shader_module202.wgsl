struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_3 = Struct_3(vec4<u32>(4294967295u, 65367u, 19896u, 25140u), 0u, Struct_2(4294967295u, Struct_1(vec3<i32>(i32(-2147483648), -33097i, 2147483647i), vec3<i32>(13410i, i32(-2147483648), 0i), true, vec4<f32>(-719f, 1718f, 2155f, 277f), vec4<u32>(1u, 0u, 23923u, 56451u)), -2459f, vec2<bool>(false, true), Struct_1(vec3<i32>(1i, 1i, 31407i), vec3<i32>(-18477i, 72796i, 1i), false, vec4<f32>(-765f, -672f, 611f, 273f), vec4<u32>(12608u, 13889u, 21010u, 81981u))), 6526i, vec3<bool>(false, true, false));

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 1u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_2 {
    var var_0 = global1.c.b.b.x;
    return Struct_2(58906u, global1.c.e, global1.c.b.d.x, global0.zy, global1.c.b);
}

fn func_1() -> Struct_3 {
    return Struct_3(~(firstTrailingBit(vec4<u32>(global2.x, global2.x, u_input.a, 58263u)) & vec4<u32>(global1.a.x, _wgslsmith_mult_u32(global2.x, 0u), _wgslsmith_add_u32(u_input.a, 1u), 1u)), global2.x, func_2(), _wgslsmith_mult_i32(i32(-1i) * -global1.c.e.a.x, reverseBits(_wgslsmith_sub_i32(-global1.c.e.a.x, 2147483647i))), vec3<bool>(!any(vec2<bool>(false, false)), global0.x, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!(32634u != ~(global2.x ^ 4294967295u)), false, !global1.e.x);
    var var_0 = global1.c.e;
    global2 = ~abs(reverseBits(vec4<u32>(17005u, global2.x & u_input.a, var_0.e.x, 19067u)));
    var var_1 = global1.c.b.a.x;
    let var_2 = var_0.d.x;
    var var_3 = select(select(select(global1.e, select(global1.e, global1.e, true), var_0.c), !vec3<bool>(true, true, global1.c.e.c), !(2135i == global1.c.e.b.x) == var_0.c), !(!(!global1.e)), global1.e);
    var_1 = ~(~(-1i));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(0u, u_input.a, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, global1.a.x), _wgslsmith_mod_u32(1u, 15405u), ~var_0.e.x), _wgslsmith_mod_u32(1u, global1.c.a))));
}

