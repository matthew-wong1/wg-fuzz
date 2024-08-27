struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-1i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 39150i), vec2<i32>(2147483647i, 14153i), vec2<i32>(34453i, i32(-2147483648)), vec2<i32>(1i, 67342i), vec2<i32>(i32(-2147483648), -15492i), vec2<i32>(-57491i, -18907i), vec2<i32>(25621i, 2147483647i), vec2<i32>(-1i, -38927i), vec2<i32>(0i, 0i), vec2<i32>(43185i, 586i), vec2<i32>(944i, -27919i), vec2<i32>(2147483647i, -19293i), vec2<i32>(31119i, 1i), vec2<i32>(1i, 32098i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 21193i), vec2<i32>(i32(-2147483648), -21317i), vec2<i32>(-22961i, -25934i), vec2<i32>(2147483647i, -48550i), vec2<i32>(1i, 0i), vec2<i32>(-44545i, 20123i), vec2<i32>(-37006i, -29638i), vec2<i32>(91601i, i32(-2147483648)), vec2<i32>(-33582i, i32(-2147483648)));

var<private> global1: vec2<f32> = vec2<f32>(-1000f, -1144f);

var<private> global2: array<bool, 13>;

var<private> global3: array<i32, 29> = array<i32, 29>(-1i, 2147483647i, 70278i, -1i, -28039i, 42023i, -1i, 1i, 2698i, 1i, i32(-2147483648), -24012i, i32(-2147483648), i32(-2147483648), 0i, 79810i, 4122i, -36966i, -1i, 0i, 2147483647i, i32(-2147483648), 36786i, 90250i, i32(-2147483648), i32(-2147483648), 1i, 29572i, -1i);

var<private> global4: array<u32, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_1.xxx;
    var_0 = arg_1.yww;
    global0 = array<vec2<i32>, 31>();
    var_0 = select(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~global4[_wgslsmith_index_u32(u_input.a.x, 1u)], ~_wgslsmith_mult_u32(0u, global4[_wgslsmith_index_u32(41111u, 1u)])), 13u)], true), !(!arg_1.zzy), any(vec2<bool>(true, true)));
    let var_1 = Struct_4(~_wgslsmith_mod_i32(i32(-1i) * -9812i, -1i));
    return any(!vec3<bool>(false, true, (var_0.x & false) | var_0.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 31>();
    var var_0 = Struct_5(17058u, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)], i32(-1i) * -1i), -6828i), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(select(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], global4[_wgslsmith_index_u32(35654u, 1u)], false), 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]) | _wgslsmith_mult_i32(~48913i, -21375i)), Struct_3(!vec2<bool>(func_3(arg_0.yw, arg_0), arg_0.x), 0u), Struct_1(_wgslsmith_f_op_f32(arg_1.a + 683f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1782f, arg_1.b), global1.x))));
    global2 = array<bool, 13>();
    global3 = array<i32, 29>();
    var var_1 = -(~(~global3[_wgslsmith_index_u32(u_input.a.x ^ abs(u_input.a.x), 29u)]));
    return ~0u;
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.e.b), -(~_wgslsmith_sub_i32(-1i, arg_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-599f, arg_0.e.b, global1.x) + vec3<f32>(1436f, arg_0.e.b, global1.x)), vec3<f32>(global1.x, -677f, 1333f))) * vec3<f32>(arg_0.e.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.a)), arg_0.e.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, 1000f), _wgslsmith_f_op_f32(trunc(global1.x)))))));
    let var_1 = Struct_3(vec2<bool>(!arg_0.d.a.x, _wgslsmith_f_op_f32(arg_3.b + 1f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * arg_3.a) * _wgslsmith_f_op_f32(-arg_0.e.b))), u_input.a.x);
    global4 = array<u32, 1>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.b * 674f));
    global1 = var_0.c.zy;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(440f, var_0.a, true))), 1640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - arg_3.a) - 992f)))), var_0.c));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_4 {
    var var_0 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-739f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(select(global1.x, global1.x, false)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_5(~(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 37953u) | func_2(vec4<bool>(arg_1, arg_1, global2[_wgslsmith_index_u32(62277u, 13u)], true), Struct_1(var_0.x, -708f))), global4[_wgslsmith_index_u32(19902u, 1u)] & ~abs(14402u), abs(select(2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 13u)])) | -firstTrailingBit(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 29u)]), Struct_3(vec2<bool>(global2[_wgslsmith_index_u32(~4426u, 13u)], all(vec4<bool>(arg_1, arg_1, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(24294u, 13u)]))), _wgslsmith_mod_u32(0u | u_input.a.x, u_input.a.x | 11418u)), Struct_1(574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1798f)))), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), Struct_4(1i << (u_input.a.x % 32u)), Struct_1(1546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2824f + 393f))) - -251f))));
    global2 = array<bool, 13>();
    let var_1 = -5507i;
    var var_2 = vec2<bool>(-arg_0.a >= -2147483647i, false | !any(select(vec3<bool>(global2[_wgslsmith_index_u32(17698u, 13u)], arg_1, global2[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(false, false, true), true)));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_4) -> f32 {
    global4 = array<u32, 1>();
    var var_0 = vec4<i32>(func_1(arg_1, arg_2.x).a, 1i, 1i, -1i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f)), _wgslsmith_f_op_vec3_f32(func_4(Struct_5(0u, u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global4[_wgslsmith_index_u32(0u, 1u)], 6658u), vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], global4[_wgslsmith_index_u32(u_input.a.x, 1u)])) % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(12280u, 29u)]), vec2<i32>(-36195i, 2147483647i)), Struct_3(select(arg_2, vec2<bool>(arg_2.x, false), false), 1u), Struct_1(_wgslsmith_f_op_f32(-global1.x), global1.x)), _wgslsmith_clamp_u32(0u, ~4294967295u, _wgslsmith_div_u32(u_input.a.x, ~39160u)), func_1(arg_1, (true & arg_2.x) | false), Struct_1(-282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1921f * -1000f) + global1.x)))).x, _wgslsmith_f_op_f32(-global1.x), 1f);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_1.x)))) + -1431f)));
    global2 = array<bool, 13>();
    return _wgslsmith_f_op_vec3_f32(func_4(Struct_5(349u, firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(40629u, 1u, global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 0u), vec4<u32>(global4[_wgslsmith_index_u32(18825u, 1u)], global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 20924u, u_input.a.x) << (vec4<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.a.x, 3365u, global4[_wgslsmith_index_u32(u_input.a.x, 1u)]) % vec4<u32>(32u)))), arg_1.a & (_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, arg_1.a), var_0.xz) >> (_wgslsmith_div_u32(0u, 24946u) % 32u)), Struct_3(!arg_2, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], 0u), 1u)] >> (_wgslsmith_dot_vec3_u32(vec3<u32>(44990u, 4294967295u, 39015u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % 32u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, var_1.x)), _wgslsmith_f_op_f32(ceil(1544f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) * -109f))), u_input.a.x, Struct_4(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(var_0.zz, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), min(var_0.yx, global0[_wgslsmith_index_u32(0u, 31u)]))), Struct_1(global1.x, global1.x))).x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(666f, _wgslsmith_f_op_f32(func_5(-26901i, func_1(Struct_4(global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), false), vec2<bool>(true, true), Struct_4(global3[_wgslsmith_index_u32(20797u, 29u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(1172f, global1.x), -1262f), vec2<f32>(global1.x, _wgslsmith_f_op_f32(sign(global1.x)))))));
    var var_0 = -6158i;
    let var_1 = global3[_wgslsmith_index_u32(55137u, 29u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f * _wgslsmith_f_op_vec3_f32(func_4(Struct_5(u_input.a.x, global4[_wgslsmith_index_u32(0u, 1u)] | u_input.a.x, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 29u)], -1752i, global3[_wgslsmith_index_u32(4294967295u, 29u)]), Struct_3(vec2<bool>(global2[_wgslsmith_index_u32(8334u, 13u)], false), 75887u), Struct_1(global1.x, 676f)), ~35997u, Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 29u)], -11020i, -2147483647i), vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(6826u, 29u)], -18339i))), Struct_1(_wgslsmith_f_op_f32(-1031f + 1000f), _wgslsmith_f_op_f32(global1.x * -842f)))).x) + _wgslsmith_f_op_f32(711f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global1.x)))));
    var var_3 = u_input.a;
    var var_4 = !select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(32418u, 13u)], global2[_wgslsmith_index_u32(10100u, 13u)], true), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_3.x, 13u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(var_3.x, 13u)], true, false), vec3<bool>(false, global2[_wgslsmith_index_u32(var_3.x, 13u)], false), vec3<bool>(global2[_wgslsmith_index_u32(var_3.x, 13u)], false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12867u, 1u)], 13u)]))), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_3.x, 1u)], 13u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(44603u, 1u)], 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55079u, 1u)], 13u)], true, true)), false), any(!vec3<bool>(global2[_wgslsmith_index_u32(19907u, 13u)], false, false))), vec3<bool>(!func_3(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], true), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(var_3.x, 13u)])), true, global2[_wgslsmith_index_u32(~(1u & u_input.a.x), 13u)]), !(select(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(21829u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)]) && true));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1357f * _wgslsmith_f_op_f32(-global1.x))));
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_2(vec4<bool>(true, var_4.x, var_4.x, var_4.x), Struct_1(global1.x, -121f)), 75u & _wgslsmith_clamp_u32(4294967295u, var_3.x, global4[_wgslsmith_index_u32(u_input.a.x, 1u)])), 29u)], func_1(Struct_4(39518i), var_4.x), vec2<bool>(true, var_4.x | false), Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 114300u) >> (var_3.x % 32u), 29u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1192f, 1f), _wgslsmith_f_op_f32(-global1.x), !(var_4.x | true)))));
    var var_6 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), global4[_wgslsmith_index_u32(~(var_3.x & ~select(u_input.a.x, 18690u, false)), 1u)]), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.x, var_3.x, u_input.a.x) ^ u_input.a, u_input.a), -_wgslsmith_mod_i32(-_wgslsmith_mod_i32(5926i, -2147483647i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(43642i, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)])), ~vec3<i32>(1i, 40222i, 67368i))), _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.x, 0u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, var_3.x), vec3<u32>(global4[_wgslsmith_index_u32(0u, 1u)], 0u, 42982u), u_input.a)))), 23618u);
}

