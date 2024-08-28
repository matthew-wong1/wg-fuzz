struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 23> = array<u32, 23>(2064u, 42203u, 41821u, 1u, 0u, 64614u, 4294967295u, 22702u, 48420u, 15601u, 0u, 69810u, 31820u, 23776u, 84168u, 4294967295u, 19627u, 66503u, 20236u, 25741u, 9103u, 1u, 4294967295u);

var<private> global2: array<u32, 7> = array<u32, 7>(11790u, 81010u, 0u, 0u, 4294967295u, 56245u, 1u);

var<private> global3: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-970f + 748f), -657f));
    global2 = array<u32, 7>();
    global2 = array<u32, 7>();
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.b + -1411f) + global0.d.b))))) >= _wgslsmith_f_op_f32(ceil(-325f));
    global2 = array<u32, 7>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-914f)))))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * arg_1.b)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> bool {
    global3 = all(!arg_0.a) && arg_1.c.c;
    global0 = arg_3;
    global2 = array<u32, 7>();
    global2 = array<u32, 7>();
    global1 = array<u32, 23>();
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_mult_u32(abs(1u), 9584u);
    let var_2 = !(!vec3<bool>(true, true, !global0.b.c));
    global2 = array<u32, 7>();
    let var_3 = !func_4(Struct_3(vec4<bool>(true, true, true, true), global0.e, global0.b), Struct_3(!(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), Struct_1(abs(-4835i), -2074f, all(vec3<bool>(true, true, global0.b.c)), countOneBits(u_input.a), ~global0.e.e), Struct_1(u_input.a, _wgslsmith_f_op_f32(1000f - -743f), func_3(vec4<i32>(global0.b.e.x, -30154i, global0.d.d, 2147483647i), Struct_1(u_input.a, global0.e.b, var_2.x, -8233i, global0.b.e), Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.a, -698f, true, -1i, global0.e.e), vec2<f32>(global0.b.b, -1093f), global0.b, Struct_1(0i, 266f, false, u_input.a, vec2<i32>(-2147483647i, global0.b.e.x)))), u_input.a ^ 7592i, vec2<i32>(0i, u_input.a))), global0.e.e, Struct_2(global0.a, Struct_1(_wgslsmith_dot_vec2_i32(global0.b.e, vec2<i32>(2147483647i, 4166i)), _wgslsmith_div_f32(arg_2.x, -458f), !global0.e.c, _wgslsmith_mod_i32(global0.d.e.x, u_input.a), global0.e.e), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(global0.c)))), global0.e, Struct_1(1i, var_0.x, true, 1i | u_input.a, global0.d.e)));
    return Struct_2(vec3<bool>(any(select(select(vec3<bool>(true, var_3, false), global0.a, vec3<bool>(false, global0.e.c, global0.d.c)), !arg_0, global0.a)), func_3(~vec4<i32>(2147483647i, 1i, 2147483647i, global0.d.a), Struct_1(max(global0.e.e.x, 24332i), _wgslsmith_f_op_f32(f32(-1f) * -2770f), global0.a.x || global0.d.c, global0.b.a, vec2<i32>(0i, -716i) << (vec2<u32>(var_1, var_1) % vec2<u32>(32u))), Struct_2(!vec3<bool>(true, var_3, global0.e.c), global0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.b, -1000f), arg_2.zz, true)), Struct_1(global0.d.a, -185f, arg_0.x, global0.b.e.x, global0.d.e), global0.e)), false), global0.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.c, vec2<f32>(global0.d.b, 967f), global0.a.zy)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1455f, -1061f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(global0.c)))))), Struct_1(~28899i, -180f, true, -min(0i, u_input.a), global0.b.e), Struct_1(~(60258i | _wgslsmith_mult_i32(-26339i, global0.b.e.x)), var_0.x, false, global0.d.a >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(14502u, 7u)], arg_1), vec2<u32>(global2[_wgslsmith_index_u32(var_1, 7u)], 0u)), vec2<u32>(u_input.b, arg_1)) % 32u), vec2<i32>(-1i, global0.d.e.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global1 = array<u32, 23>();
    global1 = array<u32, 23>();
    let var_0 = func_2(vec3<bool>(!arg_0.c, arg_0.c, true), global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1548f, global0.c.x, -1095f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(580f, -1576f, arg_0.b))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + global0.b.b), 407f, _wgslsmith_f_op_f32(ceil(global0.b.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-613f, -1544f, global0.c.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, global0.e.b, global0.d.b), vec3<f32>(global0.e.b, -1100f, arg_0.b)))))));
    var var_1 = Struct_3(vec4<bool>(_wgslsmith_mult_u32(~0u, global1[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(6198u, 7u)], 34359u), 23u)]) < _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 7u)], u_input.b, 1u)), ~vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.b, 1u)), !var_0.e.c, true, false), global0.b, func_2(var_0.a, global1[_wgslsmith_index_u32(abs(4294967295u), 23u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(326f, -433f, global0.b.b) + vec3<f32>(-1661f, arg_0.b, var_0.d.b)))))).d);
    let var_2 = func_2(!(!(!var_1.a.yxz)), u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.b + arg_0.b), _wgslsmith_f_op_f32(sign(1279f))), _wgslsmith_f_op_f32(-var_1.b.b))));
    return firstLeadingBit(11819u);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_mult_i32(47505i, -1i);
    let var_1 = func_2(vec3<bool>(!((global0.e.c == arg_3.x) && all(vec3<bool>(arg_3.x, global0.d.c, arg_3.x))), arg_3.x, global0.a.x), abs(arg_1), _wgslsmith_div_vec3_f32(arg_2.wwx, arg_2.xwx)).b;
    var var_2 = Struct_2(select(!(!(!arg_3)), func_2(func_2(vec3<bool>(false, arg_3.x, arg_3.x), global1[_wgslsmith_index_u32(0u, 23u)] & u_input.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.x, var_1.b, -870f)))).a, max(33176u, u_input.b), vec3<f32>(_wgslsmith_f_op_f32(var_1.b * 243f), 208f, 1250f)).a, 31641i > var_1.e.x), func_2(!(!global0.a), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.xzy, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-955f, 1156f, -826f), arg_2.zyw))))).b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yz + arg_2.zx) - global0.c)))), Struct_1(-_wgslsmith_mod_i32(var_0, -13520i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * -848f) - _wgslsmith_f_op_f32(var_1.b * -673f)), 172f)), arg_3.x, u_input.a, _wgslsmith_div_vec2_i32(global0.b.e, -global0.b.e & max(global0.d.e, vec2<i32>(22510i, 37220i)))), var_1);
    global3 = false;
    global1 = array<u32, 23>();
    return 802i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    global3 = false;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.b.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.b)), 341f, global0.b.c)), false)), global0.e.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-365f + _wgslsmith_f_op_f32(step(global0.d.b, global0.b.b))) - global0.d.b) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.b), _wgslsmith_f_op_f32(round(global0.b.b))) - global0.b.b)));
    let var_1 = Struct_1(func_5(min(_wgslsmith_dot_vec2_u32(vec2<u32>(18279u, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 7u)], 23u)])), ~(u_input.b & global2[_wgslsmith_index_u32(4294967295u, 7u)])), func_1(global0.b, false, vec4<i32>(global0.e.d, -21715i, ~(-2147483647i), 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.x, 1000f, var_0.x, 642f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -147f, var_0.x, -850f)))))), !global0.a), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 7u)], select(min(3172u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 7u)]), ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 7u)], 23u)], true)) > global2[_wgslsmith_index_u32(4294967295u & (_wgslsmith_mult_u32(8183u, global1[_wgslsmith_index_u32(1u, 23u)]) ^ abs(global1[_wgslsmith_index_u32(4294967295u, 23u)])), 7u)], _wgslsmith_add_i32(global0.b.e.x, 8000i), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.b.e.x, global0.d.a), global0.d.e));
    global3 = true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(561f)) - _wgslsmith_f_op_f32(-1000f + -419f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.b) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1253f, _wgslsmith_f_op_f32(floor(659f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-10422i, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 7u)]), _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(1u, 4294967295u))), 1u));
}

