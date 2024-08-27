struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<bool>(true, true), vec2<u32>(58524u, 71812u)), 62794u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> u32 {
    return ~_wgslsmith_add_u32(u_input.c.x, _wgslsmith_sub_u32(global0.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0.a.b.x, 12052u), u_input.c.yyx)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = true;
    var var_1 = arg_2.x;
    var_1 = -u_input.d;
    var var_2 = arg_2.x;
    var var_3 = vec3<f32>(874f, -107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-375f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 304f)))));
    return arg_3.a;
}

fn func_1() -> vec2<u32> {
    global0 = Struct_3(global0.a, global0.a.b.x);
    let var_0 = _wgslsmith_clamp_u32(0u, abs(global0.a.b.x), ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -948f))));
    global0 = Struct_3(Struct_2(!vec2<bool>(all(vec4<bool>(global0.a.a.x, global0.a.a.x, false, global0.a.a.x)), !global0.a.a.x), global0.a.b >> (global0.a.b % vec2<u32>(32u))), 4294967295u);
    var var_1 = 1564f;
    global0 = Struct_3(Struct_2(select(!select(vec2<bool>(global0.a.a.x, true), vec2<bool>(global0.a.a.x, false), vec2<bool>(false, false)), func_3(_wgslsmith_clamp_vec2_u32(global0.a.b, vec2<u32>(var_0, 26986u), vec2<u32>(116795u, global0.a.b.x)), vec2<u32>(var_0, global0.b), max(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(u_input.a.x, 26628i, u_input.a.x)), global0.a), !(!vec2<bool>(global0.a.a.x, true))), reverseBits(select(vec2<u32>(1u, global0.b), ~vec2<u32>(var_0, 48580u), global0.a.a.x))), _wgslsmith_add_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1595f)), global0.a.b.x), ~(~var_0)));
    return global0.a.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_div_f32(-295f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1564f))), 726f)));
    var var_1 = ~_wgslsmith_add_u32(arg_1.x >> (_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, global0.a.b.x), global0.b) % 32u), _wgslsmith_clamp_u32(4294967295u, 1u, ~4294967295u));
    global0 = Struct_3(global0.a, ~global0.a.b.x);
    var var_2 = true;
    var_2 = true;
    return true;
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = vec4<bool>(true, true, arg_0 || !((true & global0.a.a.x) == func_3(vec2<u32>(global0.a.b.x, 0u), vec2<u32>(1u, 1u), vec3<i32>(49955i, -35713i, u_input.d), global0.a).x), false);
    var var_1 = ~(~u_input.b);
    global0 = Struct_3(global0.a, func_1().x);
    global0 = Struct_3(global0.a, (_wgslsmith_mod_u32(~var_1.x, func_2(301f)) >> ((~6836u >> (var_1.x % 32u)) % 32u)) & 1u);
    var_1 = _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(0u, 9743u, ~abs(_wgslsmith_mult_u32(1u, 1u))), countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 1u, u_input.c.x), u_input.b, vec3<u32>(u_input.b.x, var_1.x, global0.a.b.x)) & countOneBits(max(vec3<u32>(4294967295u, var_1.x, 26074u), vec3<u32>(10901u, global0.a.b.x, global0.a.b.x)))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.a.x, 1i);
    global0 = Struct_3(func_5(func_4(_wgslsmith_clamp_vec2_u32(~global0.a.b, firstLeadingBit(vec2<u32>(14850u, u_input.c.x)), func_1()), select(u_input.c, ~vec4<u32>(global0.b, 50101u, 4172u, global0.a.b.x), global0.a.a.x), -u_input.a), _wgslsmith_div_i32(13139i, -1i)), func_1().x);
    var_0 = ~(~0i << (_wgslsmith_clamp_u32(firstLeadingBit(select(global0.a.b.x, 0u, global0.a.a.x)), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.c.x) % 32u));
    var var_1 = global0.a.a.x;
    global0 = Struct_3(global0.a, ~global0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1833f), 1007f) - _wgslsmith_f_op_f32(-2318f - 167f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2281f - 1000f)) * 1212f)));
    let var_4 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(var_4.a - -227f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(293f, var_4.a)), _wgslsmith_f_op_f32(f32(-1f) * -998f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_4.a, 143f, var_3.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, -1510f, var_3.a, -2160f) - vec4<f32>(1523f, -959f, -1000f, -808f)))))), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.d), 12254i, u_input.d >> (global0.b % 32u), 45195i)), vec4<i32>(-1i) * -reverseBits(vec4<i32>(2147483647i, 37216i, 20351i, -1580i)), u_input.a), _wgslsmith_sub_i32(u_input.a.x, ~2147483647i));
}

