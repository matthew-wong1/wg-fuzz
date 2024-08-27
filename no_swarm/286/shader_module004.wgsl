struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    global0 = false;
    global0 = all(arg_0);
    let var_0 = Struct_3(683f);
    let var_1 = vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -582f));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.wyw), 1u, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)), 0u), u_input.a));
    return ~(-abs(abs(~1i)));
}

fn func_3() -> vec2<bool> {
    global0 = all(vec3<bool>(true, true, true));
    global0 = all(!vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))));
    global0 = _wgslsmith_div_f32(-873f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-154f, 233f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(570f, _wgslsmith_f_op_f32(565f + 726f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(535f - -1177f), _wgslsmith_div_f32(1000f, -308f)))));
    var var_0 = vec4<i32>(~(_wgslsmith_clamp_i32(2147483647i, -2147483647i, -1i) & -2147483647i), i32(-1i) * -32734i, ~_wgslsmith_add_i32(~(-39936i), 13477i), abs(~min(-32294i, -3869i))) & -vec4<i32>(-1i, 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(10736i, 30931i, 1i, -4942i), vec4<i32>(-17574i, 0i, -2147483647i, -16010i)), 1i), -1i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 855f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(213f - 543f))) - -337f), u_input.a.x);
    return !vec2<bool>(any(vec2<bool>(true, true)), false);
}

fn func_1(arg_0: u32) -> f32 {
    global1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, ~func_2(vec3<bool>(true, false, true), Struct_1(822f, arg_0))) ^ 1i, -19658i);
    let var_0 = func_3();
    let var_1 = u_input.a.yw ^ _wgslsmith_sub_vec2_u32(u_input.a.ww, min(_wgslsmith_div_vec2_u32(u_input.a.zx, select(u_input.a.zz, u_input.a.yw, var_0)), ~u_input.a.xy));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2411f, _wgslsmith_f_op_f32(step(-1051f, -1000f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2197f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-975f, -969f)), false)))));
    global0 = func_3().x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f + -562f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(u_input.a.x)));
    global1 = 0i & (-_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-1i, 0i)) & select(0i, ~(~25342i), true));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(var_0.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    let var_1 = _wgslsmith_mod_i32(2147483647i & _wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-14971i, -1i, 25161i), vec3<i32>(65649i, 22775i, 16203i))), vec3<i32>(~(-37574i), ~2938i, 1i)), 1i);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -2640f));
    var var_2 = var_0.a;
    var var_3 = ~abs(~(~(vec2<i32>(805i, var_1) & vec2<i32>(var_1, 11397i))));
    global1 = _wgslsmith_div_i32(-30175i, -1424i);
    let var_4 = -(~(vec2<i32>(var_1, var_1) ^ vec2<i32>(var_1, var_3.x)) & (-vec2<i32>(2147483647i, var_3.x) & reverseBits(vec2<i32>(-2147483647i, -43055i)))) << (_wgslsmith_sub_vec2_u32(u_input.a.yy, ~vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 0u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1451f, 419f, var_0.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(963f, var_0.a, var_0.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) * vec3<f32>(1051f, var_0.a, -2253f)) * vec3<f32>(-910f, 1710f, -622f)))));
}

