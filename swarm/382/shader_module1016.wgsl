struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    return vec2<bool>(-10291i >= arg_0.d.a.x, (~arg_0.b.x <= ~24428u) || arg_0.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global1 = array<vec3<u32>, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-134f)))))), -14411i, func_3(Struct_4(false, ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, u_input.a), vec2<u32>(arg_1, 21032u)), ~arg_1, Struct_2(-vec2<i32>(14881i, arg_0.x)))));
    var var_1 = Struct_5(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x ^ arg_0.x, arg_0.x), (arg_0.x & 25908i) << (u_input.b % 32u))), select(vec2<bool>(true, true), select(!vec2<bool>(false, var_0.c.x), func_3(Struct_4(false, vec2<u32>(arg_1, 61888u), 35857u, Struct_2(vec2<i32>(var_0.b, arg_0.x)))), !all(var_0.c)), !(!vec2<bool>(var_0.c.x, var_0.c.x))), Struct_4(true, countOneBits(vec2<u32>(max(45034u, 30064u), _wgslsmith_mod_u32(43084u, 1u))), arg_1, Struct_2(~(vec2<i32>(arg_0.x, 2147483647i) >> (vec2<u32>(1u, arg_1) % vec2<u32>(32u))))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1457f - -314f)));
    return var_1.c.a & false;
}

fn func_1() -> vec2<f32> {
    global0 = true;
    var var_0 = 1i;
    var_0 = -_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, -10484i, _wgslsmith_mod_i32(2458i, -20672i), ~0i)), vec4<i32>(countOneBits(1i), abs(~0i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(14418i, -3202i), 0i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(35171i, 5174i), -2147483647i)));
    global0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(70496u > u_input.b, true, true, all(vec4<bool>(false, false, true, true))))) & (!func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-7122i, 43118i, 49003i), vec3<i32>(-1i, -16105i, -1i)), ~u_input.b) | (true & (_wgslsmith_clamp_i32(7494i, -6119i, 9060i) != abs(1i))));
    global1 = array<vec3<u32>, 6>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1087f), 1100f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1132f)))), -1172f) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 488f), vec2<f32>(-1000f, 485f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-112f, 633f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(min(_wgslsmith_sub_u32(u_input.b, 4294967295u), 4294967295u) > (7835u & _wgslsmith_add_u32(u_input.a >> (0u % 32u), u_input.b)));
    global1 = array<vec3<u32>, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(func_1()))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-527f, -2015f))))))));
    var var_2 = firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(10209u, abs(~u_input.b), 0u), _wgslsmith_add_u32(u_input.b, 4294967295u), _wgslsmith_mod_u32(4294967295u, u_input.b)));
    var_2 = global1[_wgslsmith_index_u32(~u_input.a, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b, ~69823u, var_2.x, ~0u));
}

