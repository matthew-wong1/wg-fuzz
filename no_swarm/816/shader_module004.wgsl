struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-436f, -1000f, 1166f, 1498f, 1073f, 509f, -2345f, 1502f, -1000f, -427f, 814f, -849f, -991f, -1503f, -145f, -152f, 961f, -1844f, -708f, -442f, 200f, 1438f, 1178f, -485f, 1662f);

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(2147483647i, -24492i, -10273i), vec3<i32>(0i, 39350i, 29391i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(0i, 12276i, -1i), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(0i, 0i, -16056i), vec3<i32>(1i, 55942i, -10024i), vec3<i32>(-2437i, -31054i, 1i), vec3<i32>(-50079i, 3396i, 0i), vec3<i32>(35002i, 0i, -59803i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(39135i, -33803i, 2147483647i), vec3<i32>(-1915i, 72227i, 19274i), vec3<i32>(-47632i, 0i, 1i), vec3<i32>(-1i, -42537i, 0i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 2376i, 1530i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(30446i, -1i, 2652i), vec3<i32>(30333i, -1i, i32(-2147483648)), vec3<i32>(785i, 2147483647i, i32(-2147483648)), vec3<i32>(-595i, 21511i, 40070i), vec3<i32>(2147483647i, -13206i, 28378i), vec3<i32>(-17042i, 0i, -4442i), vec3<i32>(-38339i, -16755i, 33175i), vec3<i32>(i32(-2147483648), -35233i, 1i), vec3<i32>(0i, -42396i, -42525i), vec3<i32>(-30449i, -15610i, 662i), vec3<i32>(26896i, 0i, 1i), vec3<i32>(2147483647i, 17114i, -51999i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = u_input.d.x;
    var_0 = -1342i;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(537f * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.a.x, 56982u), 25u)], 660f, true)))));
    var var_2 = 1i;
    global1 = array<vec3<i32>, 30>();
    return arg_0.a.x;
}

fn func_2() -> u32 {
    global1 = array<vec3<i32>, 30>();
    let var_0 = u_input.d.x;
    var var_1 = Struct_5(Struct_3(vec2<u32>(u_input.a.x & func_3(Struct_4(u_input.a)), u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 25u)])) * _wgslsmith_f_op_f32(f32(-1f) * -714f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(102186u, 25u)]), _wgslsmith_f_op_f32(677f + global0[_wgslsmith_index_u32(18503u, 25u)]))), _wgslsmith_f_op_f32(-158f + global0[_wgslsmith_index_u32(~5628u, 25u)])), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-201f + global0[_wgslsmith_index_u32(28604u, 25u)]))), false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] + global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), global0[_wgslsmith_index_u32(~0u, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), -(~u_input.c)), -(~countOneBits(u_input.d)));
    var var_2 = Struct_4(vec4<u32>(abs(~u_input.a.x), ~var_1.a.a.x, abs(~32559u), 53830u));
    let var_3 = Struct_5(var_1.a, abs(u_input.d));
    return _wgslsmith_clamp_u32(9502u, _wgslsmith_sub_u32(~var_2.a.x, ~var_2.a.x), var_1.a.a.x);
}

fn func_1() -> Struct_3 {
    var var_0 = 2048u;
    var var_1 = abs(select(14615i, u_input.d.x, func_2() != u_input.a.x));
    var var_2 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.b.x, u_input.c.x) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 62974u, u_input.a.x), u_input.a.yzx) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(-global1[_wgslsmith_index_u32(u_input.a.x, 30u)], firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))), u_input.c.xyz));
    var var_3 = vec4<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false))), true)), any(vec4<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), false, -33397i >= var_2.x)), select(any(vec2<bool>(true, true)), all(vec2<bool>(all(vec4<bool>(true, true, true, false)), all(vec3<bool>(false, true, true)))), any(vec2<bool>(true, var_2.x > var_2.x))));
    var var_4 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 25u)], any(vec4<bool>(false, var_3.x || var_3.x, !var_3.x, all(var_3.www)))));
    return Struct_3(vec2<u32>(37245u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(var_4.a.a * global0[_wgslsmith_index_u32(0u, 25u)]), 312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-831f, 1148f)))), var_4.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.a, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 1356f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.a, global0[_wgslsmith_index_u32(34441u, 25u)], global0[_wgslsmith_index_u32(13061u, 25u)]) + vec3<f32>(-1000f, -1383f, -1019f))) - vec3<f32>(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)], 1392f, -846f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.a.a, 505f, 1000f), vec3<f32>(var_4.a.a, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], -213f)))))), u_input.c ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-6905i, -1601i, i32(-1i) * -1i, var_2.x), firstLeadingBit(firstTrailingBit(u_input.d))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<f32> {
    global0 = array<f32, 25>();
    global1 = array<vec3<i32>, 30>();
    var var_0 = -2147483647i;
    var_0 = u_input.c.x;
    var var_1 = _wgslsmith_sub_u32(27491u | arg_1.a.x, (max(~4294967295u, 1u) & (_wgslsmith_sub_u32(u_input.a.x, 28054u) << (~14646u % 32u))) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 12286u, 72361u), countOneBits(u_input.a.zyx)), _wgslsmith_sub_u32(~96520u, max(arg_1.a.x, 1u))));
    return arg_1.b.zz;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_5 {
    var var_0 = Struct_4(_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xw), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, u_input.a.x)), _wgslsmith_add_u32(53304u | u_input.a.x, 5455u)), u_input.a & firstLeadingBit(u_input.a)));
    var var_1 = -33837i;
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_2));
    let var_3 = !(!select(select(!vec2<bool>(arg_3.a.b, arg_3.a.b), vec2<bool>(arg_3.a.b, false), true), !select(vec2<bool>(true, true), vec2<bool>(arg_3.a.b, arg_3.a.b), false), select(!vec2<bool>(arg_3.a.b, false), select(vec2<bool>(false, arg_3.a.b), vec2<bool>(false, arg_3.a.b), vec2<bool>(arg_3.a.b, true)), !vec2<bool>(arg_3.a.b, false))));
    let var_4 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + arg_2))) + _wgslsmith_f_op_f32(abs(arg_3.a.a))));
    return Struct_5(func_1(), -vec4<i32>(-45354i, u_input.d.x, abs(1i), -8799i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 30>();
    var var_0 = func_5(112974u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(-vec4<i32>(u_input.d.x, 1i, u_input.d.x, 2147483647i) >> (u_input.a % vec4<u32>(32u)), func_1())))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], _wgslsmith_f_op_f32(-1162f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a.x, 25u)]))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u | u_input.a.x, 25u)]), select(true, false, true))));
    var var_1 = var_0.a.c;
    let var_2 = 1132f;
    var var_3 = Struct_4(~vec4<u32>(~(~27436u), func_5(var_0.a.a.x, var_0.a.b.yz, 1400f, Struct_2(var_0.a.c)).a.a.x | 27319u, _wgslsmith_add_u32(15115u, ~u_input.a.x), 11199u));
    let var_4 = func_5(~firstLeadingBit(var_3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a * 720f), _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f * -1727f) + 1636f), Struct_2(Struct_1(var_0.a.c.a, false)));
    let var_5 = Struct_2(var_4.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(max(30799u, 46118u), abs(4294967295u))));
}

