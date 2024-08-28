struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<Struct_3, 21>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(global3.b.x)), ~firstLeadingBit(-_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), global0.b);
    return _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -1i >> (min(var_0.c.c.x ^ global0.c.a, global0.a.c.x ^ var_0.c.c.x) % 32u)), -43882i & ~(~(var_0.b | 0i)));
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.d;
    let var_1 = 0i;
    global3 = global0.a;
    let var_2 = func_3();
    return Struct_4(1f, u_input.b.x, Struct_1(_wgslsmith_div_u32(global3.a, 18969u), _wgslsmith_f_op_vec4_f32(floor(global0.a.b)), select(u_input.e, ~u_input.a.xy, vec2<bool>(true, true)), ~(~_wgslsmith_div_vec4_u32(global3.d, vec4<u32>(0u, 0u, global3.d.x, global0.b.d.x)))));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = vec4<bool>(false, global0.d.x, all(select(global0.d, global0.d, global0.d)), true);
    let var_1 = global0.e.yz;
    var var_2 = func_2();
    global2 = array<Struct_3, 21>();
    var_2 = func_2();
    return ~49058u != _wgslsmith_mult_u32(36031u, _wgslsmith_clamp_u32(~var_2.c.d.x, ~abs(66379u), 68475u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.b.ww)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2684f, global3.b.x))))));
    let var_1 = global3.b;
    global1 = global0.d.x;
    global1 = func_1(_wgslsmith_mult_i32(select(_wgslsmith_mod_i32(-6164i, -2147483647i), u_input.d, u_input.c.x != countOneBits(0i)), _wgslsmith_sub_i32(u_input.d, i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, u_input.e.x, 0u), reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 26497i, 27054i, 25786i), vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x) ^ vec4<i32>(-1i, u_input.b.x, u_input.c.x, u_input.d))), vec2<i32>(u_input.d, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-9572i, -u_input.d), _wgslsmith_sub_i32(~u_input.d, ~u_input.b.x))));
}

