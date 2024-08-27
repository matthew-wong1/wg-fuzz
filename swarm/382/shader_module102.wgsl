struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_5;

var<private> global2: bool = true;

var<private> global3: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(13483i, -5718i, i32(-2147483648)), vec3<i32>(-1i, 86213i, -84241i), vec3<i32>(-1i, -13438i, -1i), vec3<i32>(1i, 50004i, 2147483647i), vec3<i32>(495i, -50862i, i32(-2147483648)), vec3<i32>(-30047i, -4349i, -29258i), vec3<i32>(1i, -6149i, -60603i), vec3<i32>(i32(-2147483648), -29714i, i32(-2147483648)), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, i32(-2147483648), 50872i), vec3<i32>(i32(-2147483648), 2147483647i, -10434i), vec3<i32>(1i, 2147483647i, -50293i), vec3<i32>(0i, -10025i, 1i), vec3<i32>(-22141i, 12749i, -30421i), vec3<i32>(10913i, 3470i, 35917i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(0i, -45332i, 47836i), vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(1i, -14133i, i32(-2147483648)), vec3<i32>(-1i, -1i, 10697i), vec3<i32>(-13700i, -1i, 25637i), vec3<i32>(0i, 52234i, -16871i), vec3<i32>(-45542i, -1i, 2043i), vec3<i32>(i32(-2147483648), -13702i, -1i), vec3<i32>(2147483647i, 17643i, 0i), vec3<i32>(-18005i, i32(-2147483648), 0i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, -12915i, -1i), vec3<i32>(2147483647i, -1i, 1i));

var<private> global4: array<f32, 1>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = global1.a.c;
    global0 = any(vec3<bool>(all(!vec2<bool>(global1.a.b, true)) & (!global1.a.b && (1415f != global4[_wgslsmith_index_u32(16724u, 1u)])), global1.a.b, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14989u, 30235u, 1591u), 1u)]) >= _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(14857u, 1u)], -179f, global1.a.b || false))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(countOneBits(u_input.c), vec4<u32>(u_input.a, var_0.x << (4294967295u % 32u), global1.a.c.x, global1.a.d.x << (global1.a.c.x % 32u))), vec2<bool>(true, global1.a.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1.a.c.x, 1u)] - global4[_wgslsmith_index_u32(global1.a.d.x, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-128f)))), -_wgslsmith_mod_i32(-61576i, 2147483647i) != ~_wgslsmith_clamp_i32(global1.a.a.x, u_input.b, 1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2243f)), _wgslsmith_f_op_f32(floor(1268f)), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 1u)], 443f), 575f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, -303f, 1292f, global4[_wgslsmith_index_u32(61115u, 1u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(0u, 1u)], -1464f, -439f, global4[_wgslsmith_index_u32(global1.a.d.x, 1u)]))), global1.a.b))), -global1.a.a.x, 1u, select(vec2<bool>(false, true), select(select(!vec2<bool>(global1.a.b, false), vec2<bool>(true, true), select(vec2<bool>(false, global1.a.b), vec2<bool>(false, true), vec2<bool>(true, global1.a.b))), vec2<bool>(select(global1.a.b, false, false), true), !any(vec3<bool>(global1.a.b, true, true))), (u_input.c.x << (~var_0.x % 32u)) >= _wgslsmith_div_u32(global1.a.c.x, 1u)));
    global4 = array<f32, 1>();
    let var_2 = Struct_4(0i > _wgslsmith_mult_i32(6649i, ~global1.a.a.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.c * vec2<f32>(408f, _wgslsmith_f_op_f32(f32(-1f) * -455f))));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(vec4<u32>(~(~(~7357u)), _wgslsmith_dot_vec3_u32(~global1.a.d, vec3<u32>(reverseBits(u_input.a), u_input.a | 4294967295u, global1.a.d.x)), global1.a.d.x, 4294967295u), vec2<bool>(!global1.a.b, any(select(vec4<bool>(global1.a.b, global1.a.b, false, false), vec4<bool>(false, global1.a.b, arg_0, global1.a.b), !vec4<bool>(false, arg_0, false, false)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1085f, global4[_wgslsmith_index_u32(76324u, 1u)]), vec2<f32>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(u_input.c.x, 1u)])), vec2<f32>(690f, -1266f))) * _wgslsmith_f_op_vec2_f32(func_3())))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(122512u, 1u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.d.x, 1u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.a.d.x, 1u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(34465u, 1u)] - 2012f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1340f, -1445f, global4[_wgslsmith_index_u32(global1.a.d.x, 1u)], global4[_wgslsmith_index_u32(u_input.c.x, 1u)])))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-291f, 235f), _wgslsmith_f_op_f32(floor(643f)), global4[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(16226u, 1u)]))))));
    let var_1 = Struct_2(Struct_1(u_input.c, !var_0.b, var_0.e.zz, !arg_0, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.e)))))), -_wgslsmith_sub_i32(select(1i, ~u_input.b, var_0.b.x && global1.a.b), firstLeadingBit(-60242i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, global1.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a), 65123u), vec4<u32>(~u_input.c.x, 4294967295u, 1u, var_0.a.x)), var_0.b);
    var_0 = var_1.a;
    var var_2 = vec3<i32>(-global1.a.a.x, ~var_1.b, reverseBits(-firstTrailingBit(-24630i)));
    global2 = (var_2.x <= u_input.b) | (global1.a.c.x < 15912u);
    return ~(-var_1.b);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = global1.a.b;
    let var_1 = _wgslsmith_mult_i32(~func_2(all(arg_1)) | ~(-13916i | arg_0.a.x), -_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(57010i, u_input.b)), vec2<i32>(select(1i, -30351i, false), 37604i)));
    var var_2 = all(vec4<bool>(arg_1.x, arg_0.c.x <= _wgslsmith_mult_u32(abs(96750u), arg_0.d.x), !global1.a.b, !(!(!global1.a.b))));
    global4 = array<f32, 1>();
    let var_3 = _wgslsmith_f_op_f32(-1037f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(3183u, 1u)] * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.a.d.x, 1u)])) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(global1.a.c.x, 1u)], -282f) + -1841f))) >= -200f;
    return Struct_4(arg_0.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global1.a.a.x, global1.a.a.x) | vec3<i32>(-1i, global1.a.a.x, global1.a.a.x), max(-vec3<i32>(45943i, u_input.b, global1.a.a.x), global1.a.a)), false, global1.a.c, ~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.d.x, 34885u, 1u)), _wgslsmith_sub_vec3_u32(global1.a.c, vec3<u32>(global1.a.d.x, u_input.c.x, u_input.c.x)))));
    let var_1 = true;
    global2 = arg_3.x;
    global3 = array<vec3<i32>, 30>();
    let var_2 = arg_0.a;
    return 92487u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.a;
    var_0 = _wgslsmith_div_vec3_i32((_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -1i, 0i), global3[_wgslsmith_index_u32(4294967295u ^ u_input.c.x, 30u)]) << (~global1.a.c % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_div_i32(2147483647i, i32(-1i) * -49194i), _wgslsmith_div_i32(reverseBits(-34183i), -2147483647i), select(global1.a.a.x, -13066i, any(vec3<bool>(false, true, global1.a.b)))), _wgslsmith_clamp_vec3_i32(~(-(global1.a.a | global1.a.a)), min(global3[_wgslsmith_index_u32(global1.a.c.x, 30u)], select(vec3<i32>(u_input.b, var_0.x, u_input.b), -global3[_wgslsmith_index_u32(global1.a.d.x, 30u)], !vec3<bool>(true, false, global1.a.b))), global1.a.a));
    let var_1 = Struct_1(vec4<u32>(func_4(func_1(global1.a, !vec3<bool>(global1.a.b, global1.a.b, false)), func_1(global1.a, vec3<bool>(true, true, true)), -1305f, select(vec4<bool>(false, global1.a.b, global1.a.b, false), vec4<bool>(global1.a.b, false, global1.a.b, global1.a.b), select(vec4<bool>(false, true, true, global1.a.b), vec4<bool>(true, false, false, global1.a.b), vec4<bool>(false, global1.a.b, false, false)))), global1.a.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a.d.x, u_input.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(64672u, global1.a.c.x), vec2<u32>(1u, 15637u))), _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)), global1.a.d.x), select(vec2<bool>(!global1.a.b, global1.a.b), vec2<bool>(true, !(true & global1.a.b)), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1063f - global4[_wgslsmith_index_u32(u_input.d.x, 1u)]), _wgslsmith_f_op_f32(f32(-1f) * -2134f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(994f - -1625f) + _wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1302f)), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1u, 1u)])), all(vec3<bool>(global1.a.b, false, false))))), !select(!vec2<bool>(global1.a.b, global1.a.b), select(vec2<bool>(true, global1.a.b), vec2<bool>(true, global1.a.b), global1.a.b), true))), global1.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1574f, -777f)), _wgslsmith_f_op_f32(437f + global4[_wgslsmith_index_u32(global1.a.c.x, 1u)]), _wgslsmith_f_op_f32(select(-594f, global4[_wgslsmith_index_u32(u_input.a, 1u)], true)), -647f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, -321f, global4[_wgslsmith_index_u32(global1.a.d.x, 1u)], global4[_wgslsmith_index_u32(global1.a.d.x, 1u)]))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.a.d.x, 1u)]), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(13112u, 1u)])), -979f >= global4[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(51637u, 1u)], _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(global1.a.c.x, 1u)])) + _wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(24918u, 1u)]))))));
    global4 = array<f32, 1>();
    var var_2 = Struct_4(!(!select(true | var_1.b.x, true, any(vec2<bool>(false, var_1.d)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(global1.a.d.x, 1u)])))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 1u)] * 1245f)) - var_1.e.yz);
    global4 = array<f32, 1>();
    var var_4 = Struct_5(Struct_3(vec3<i32>(1i, -2147483647i, firstLeadingBit(global1.a.a.x)), var_1.b.x, _wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(0u, 4294967295u, global1.a.c.x)), select(_wgslsmith_sub_vec3_u32(u_input.c.zwx, vec3<u32>(4294967295u, 44377u, 28587u)), abs(u_input.c.zxy), vec3<bool>(false, var_2.a, true))), vec3<u32>(~var_1.a.x, abs(_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 88078u)), 10112u << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e);
}

