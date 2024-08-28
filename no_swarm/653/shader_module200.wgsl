struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(0i), vec4<f32>(243f, 214f, -1000f, 676f), Struct_1(i32(-2147483648)));

var<private> global1: array<i32, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1092f), global0.c.x, _wgslsmith_f_op_f32(1753f - global0.c.x)), global0.c)));
    global1 = array<i32, 27>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-global0.c.x))))));
    var var_2 = Struct_2(!global0.a, Struct_1(max(_wgslsmith_mod_i32(45358i, -1879i), select(-2147483647i, 7459i, true)) >> (4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.c.x, _wgslsmith_f_op_f32(-1829f - _wgslsmith_f_op_f32(var_1.a + global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -137f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.c)) - vec4<f32>(_wgslsmith_f_op_f32(1000f - var_0.x), _wgslsmith_f_op_f32(global0.c.x + global0.c.x), _wgslsmith_f_op_f32(-var_0.x), -1253f)), true)), global0.d);
    var var_3 = -200f;
    return -global0.d.a;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global1 = array<i32, 27>();
    global1 = array<i32, 27>();
    global0 = Struct_2(false, Struct_1(func_3()), vec4<f32>(-1218f, -915f, _wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.c.x)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x + 1060f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_2);
    global1 = array<i32, 27>();
    global0 = Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), arg_2, global0.c, Struct_1(~(i32(-1i) * -1i)));
    return Struct_2(!arg_1, Struct_1(~global0.d.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global0.c.x, global0.c.x, 1039f), global0.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 863f, -1242f, -438f)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.x)))))), Struct_1(arg_0));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = i32(-1i) * -1i;
    var_0 = global0.d.a | u_input.c.x;
    let var_1 = false;
    let var_2 = _wgslsmith_div_vec2_f32(global0.c.zy, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0, -966f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.c.x)))) + -1306f)));
    var var_3 = func_2(abs(u_input.c.x), !(global0.a & all(vec2<bool>(global0.a, true))), global0.b);
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1408f, arg_0), _wgslsmith_f_op_f32(round(var_2.x)))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.a, -2147483647i, var_3.d.a, -44765i) | vec4<i32>(12469i, 21093i, u_input.c.x, 1i), vec4<i32>(1i, u_input.c.x, u_input.c.x, var_3.b.a)), global0.a, func_2(global0.d.a | global1[_wgslsmith_index_u32(u_input.d.x, 27u)], true, var_3.b).b).c.x * _wgslsmith_f_op_f32(-var_3.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), -462f);
    global1 = array<i32, 27>();
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(var_0.x - -259f)))));
    var var_1 = all(select(!select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, false), vec2<bool>(global0.a, global0.a)), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true)), vec2<bool>(!global0.a, ~4294967295u < _wgslsmith_div_u32(u_input.b, 17821u)), vec2<bool>(global0.a, -1i < u_input.c.x)));
    var var_2 = -(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(64345u, u_input.b), 27u)]);
    let var_3 = global0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(((~26782i & u_input.c.x) & countOneBits(global0.b.a)) << (_wgslsmith_add_u32(firstLeadingBit(u_input.a), ~(~u_input.b)) % 32u));
}

