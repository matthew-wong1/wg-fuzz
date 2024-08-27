struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 828f;

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    var var_0 = ~vec2<u32>(u_input.d ^ min(1u, reverseBits(u_input.b.x)), 1u);
    let var_1 = _wgslsmith_div_u32(~min(~(~4294967295u), var_0.x), ~(~reverseBits(4294967295u)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-624f))));
    var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1, 1u), _wgslsmith_sub_vec2_u32(select(u_input.b.yy, ~(vec2<u32>(1u, 101817u) & vec2<u32>(var_1, var_1)), false), ~(~_wgslsmith_mult_vec2_u32(u_input.b.wy, u_input.b.xx))));
    let var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-397f)), var_2)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000f)), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -2209f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-342f, -139f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))))))));
    let var_1 = true;
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-266f, _wgslsmith_f_op_f32(-1f), all(vec2<bool>(var_1, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f * _wgslsmith_f_op_f32(-874f + 375f)) - 483f)), vec2<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), -1000f));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1338f, arg_0)));
    let var_2 = -(~vec4<i32>(~u_input.c.x | -2147483647i, u_input.c.x, min(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), -2147483647i), abs(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x))));
    return _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 1i, 25436i), ~_wgslsmith_div_vec3_i32(~u_input.c, -vec3<i32>(var_2.x, var_2.x, u_input.c.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = all(vec3<bool>(true, true, true));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f - 377f) * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(662f)) - _wgslsmith_f_op_f32(364f - 650f))), any(!select(vec2<bool>(var_0, true), global1[_wgslsmith_index_u32(arg_0, 31u)], global1[_wgslsmith_index_u32(21323u, 31u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(687f + _wgslsmith_f_op_f32(func_2(vec3<f32>(-650f, 252f, 347f), false, u_input.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f + 407f))), (_wgslsmith_div_i32(18805i, u_input.c.x) ^ _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)) < _wgslsmith_dot_vec4_i32(-vec4<i32>(4886i, u_input.c.x, u_input.c.x, -190i), ~vec4<i32>(1i, u_input.c.x, -26169i, 2147483647i))))));
    var var_1 = _wgslsmith_clamp_i32(~(-1i), 1i, _wgslsmith_dot_vec3_i32(func_3(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1649f + -192f)), Struct_2(u_input.a)), _wgslsmith_sub_vec3_i32(abs(-u_input.c), func_3(_wgslsmith_f_op_f32(min(-1331f, -643f)), arg_1))));
    var var_2 = _wgslsmith_add_u32(firstLeadingBit(arg_2.x), arg_1.a);
    var var_3 = Struct_2(1u);
    return Struct_4(!vec4<bool>(all(vec3<bool>(false, var_0, var_0)), var_0, false, !var_0 || var_0), Struct_1(vec4<i32>(_wgslsmith_mult_i32(~u_input.c.x, 11925i), select(-1i, abs(u_input.c.x), any(vec3<bool>(var_0, false, var_0))), 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, -37493i, 0i), vec4<i32>(63267i, u_input.c.x, -1i, u_input.c.x))), ~u_input.b, max(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, 30151i, -13751i), vec4<i32>(u_input.c.x, 34207i, 2147483647i, u_input.c.x)), vec4<i32>(_wgslsmith_clamp_i32(-8344i, -4842i, u_input.c.x), -u_input.c.x, 0i, abs(u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.d, 1u)), Struct_2(max(u_input.d, ~4294967295u)), u_input.b.xxx);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(143f)));
    global0 = _wgslsmith_f_op_f32(sign(1121f));
    let var_1 = Struct_3(func_1(~var_0.b.b.x, Struct_2(select(u_input.b.x, 4294967295u, !var_0.a.x)), vec3<u32>(~(~var_0.b.b.x), ~(~10804u), var_0.b.b.x | 45941u)).b);
    let var_2 = Struct_2(~min(1u, abs(var_1.a.b.x)));
    let var_3 = var_0;
    let var_4 = var_3.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(5312u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-570f, 807f, 1307f, -1378f), vec4<f32>(-1042f, -549f, 1000f, -127f), vec4<bool>(true, true, true, var_4.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, 596f, 293f, 1000f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(865f, 725f, 636f, -1105f), vec4<f32>(-1852f, -1273f, 2065f, 1168f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1022f, 1067f, 392f, -961f))), vec4<bool>(var_0.a.x, true, true, true)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, 273f, 348f, -802f))))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b.b.yyw, select(vec3<u32>(u_input.b.x, var_2.a, 69049u), var_1.a.b.ywz, select(false, var_3.a.x, true))), select(~var_3.b.b.xzz, _wgslsmith_add_vec3_u32(vec3<u32>(77551u, var_3.b.b.x, u_input.b.x), max(vec3<u32>(1u, 26864u, var_0.b.b.x), u_input.b.ywz)), var_0.a.yxw)), _wgslsmith_mult_i32(u_input.c.x, max(_wgslsmith_dot_vec2_i32(~vec2<i32>(-27561i, 1i), var_3.b.c.xx | var_1.a.c.zx), ~var_0.b.c.x << (var_1.a.b.x % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
}

