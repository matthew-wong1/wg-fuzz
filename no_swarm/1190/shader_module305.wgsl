struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(i32(-2147483648), -149f, Struct_1(true, false, i32(-2147483648))), Struct_2(56375i, 927f, Struct_1(true, true, i32(-2147483648))), Struct_2(-40498i, -1226f, Struct_1(true, true, 0i)), Struct_2(-1i, 295f, Struct_1(true, false, 2147483647i)), Struct_2(46376i, -2067f, Struct_1(true, false, 3893i)), Struct_2(i32(-2147483648), 1059f, Struct_1(false, true, 3982i)), Struct_2(2147483647i, 1000f, Struct_1(false, true, -1i)), Struct_2(i32(-2147483648), -255f, Struct_1(true, true, 2147483647i)), Struct_2(-72i, 1270f, Struct_1(false, false, 0i)), Struct_2(2147483647i, 281f, Struct_1(false, true, 3160i)), Struct_2(-44278i, -1294f, Struct_1(false, true, 1972i)), Struct_2(-8346i, 1292f, Struct_1(false, false, -31186i)), Struct_2(2147483647i, 405f, Struct_1(true, true, -14246i)), Struct_2(1i, 216f, Struct_1(true, true, 52529i)), Struct_2(21857i, 1201f, Struct_1(false, false, 68513i)), Struct_2(i32(-2147483648), -850f, Struct_1(false, false, 0i)), Struct_2(33096i, 1006f, Struct_1(true, false, 37819i)), Struct_2(-1i, 1286f, Struct_1(true, false, 15298i)), Struct_2(0i, -629f, Struct_1(false, false, 43181i)), Struct_2(2147483647i, -158f, Struct_1(true, false, 2147483647i)), Struct_2(25325i, -748f, Struct_1(false, false, -11730i)), Struct_2(41638i, -471f, Struct_1(false, true, 58312i)), Struct_2(20895i, -1386f, Struct_1(true, true, 0i)), Struct_2(i32(-2147483648), 848f, Struct_1(false, false, 1i)), Struct_2(-1i, 761f, Struct_1(true, true, 1i)), Struct_2(i32(-2147483648), 740f, Struct_1(true, false, 34069i)));

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, true, i32(-2147483648)), Struct_1(false, false, 2147483647i), Struct_1(false, true, 6154i), Struct_1(true, false, 38122i), Struct_1(true, true, 64445i), Struct_1(true, false, -30137i), Struct_1(true, false, 2147483647i), Struct_1(true, false, -39851i), Struct_1(false, false, -32978i), Struct_1(false, false, 2147483647i), Struct_1(true, true, 1i), Struct_1(true, false, i32(-2147483648)), Struct_1(false, false, 2147483647i), Struct_1(false, true, 6427i), Struct_1(true, false, i32(-2147483648)), Struct_1(false, true, 26549i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    global1 = array<Struct_1, 16>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
    return _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_1.c, u_input.b.x, 23441i), vec3<i32>(2147483647i, -45687i, var_2.a)), vec3<i32>(-1521i, 0i, var_2.c.c)) >> ((1u >> (~4294967295u % 32u)) % 32u), -u_input.c);
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<Struct_2, 26>();
    global1 = array<Struct_1, 16>();
    let var_0 = u_input.a;
    global1 = array<Struct_1, 16>();
    var var_1 = vec2<i32>(u_input.b.x, select(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(537f, -675f), vec2<f32>(-2255f, arg_0), true))) | 1i, u_input.c, all(vec2<bool>(false, true)) || true));
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32) -> bool {
    global1 = array<Struct_1, 16>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(224f + _wgslsmith_f_op_f32(round(1882f))))))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -949f));
    let var_1 = Struct_1(all(vec4<bool>(true, true, !(!arg_1.x), arg_1.x)), ~arg_0.x < -29015i, u_input.c);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1354f, var_0.x)) - _wgslsmith_f_op_f32(step(var_0.x, -753f))))))), 502f);
    let var_3 = -2147483647i >> (((45230u ^ _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(4294967295u, u_input.a.x))) << (37180u % 32u)) % 32u);
    return any(!(!(!vec4<bool>(true, var_1.a, true, var_1.a)))) && any(vec4<bool>(var_1.b, all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), _wgslsmith_mod_i32(786i, arg_0.x) != max(var_1.c, u_input.b.x), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_1, 16>();
    let var_0 = u_input.b;
    var var_1 = !vec3<bool>(false, true, arg_0);
    let var_2 = global0[_wgslsmith_index_u32(0u, 26u)];
    global1 = array<Struct_1, 16>();
    return 934f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, 267f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1969f, 907f) + vec2<f32>(-857f, -393f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(330f, -1000f), vec2<f32>(-1000f, 174f), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), -468f), min(-6776i, 0i) <= u_input.c))), 13440u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-330f * 475f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, Struct_1(true, func_1(u_input.b.zwy, vec2<bool>(false, false), 525f), -u_input.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1116f, -820f))) - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(floor(572f)))))));
}

