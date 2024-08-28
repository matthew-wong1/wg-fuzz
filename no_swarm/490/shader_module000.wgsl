struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(1348f, vec4<bool>(false, false, true, true), vec2<f32>(-430f, 152f), 2147483647i, false), Struct_1(-626f, vec4<bool>(false, true, true, true), vec2<f32>(-265f, 670f), 0i, true), Struct_1(573f, vec4<bool>(false, false, true, false), vec2<f32>(-217f, 1128f), 38349i, false), Struct_1(1000f, vec4<bool>(false, false, false, false), vec2<f32>(1579f, -205f), i32(-2147483648), true), Struct_1(-1332f, vec4<bool>(false, true, true, true), vec2<f32>(648f, 905f), -21161i, true), Struct_1(-957f, vec4<bool>(true, false, true, false), vec2<f32>(-1048f, 1000f), -17120i, true));

var<private> global1: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(40996i, 5850i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 7715i), vec2<i32>(60048i, -34395i), vec2<i32>(23631i, 9417i), vec2<i32>(0i, 4424i), vec2<i32>(-1i, 32861i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -34364i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(13628i, 0i), vec2<i32>(2147483647i, 21850i), vec2<i32>(-5916i, 15318i));

var<private> global2: array<f32, 23> = array<f32, 23>(-1529f, -721f, 1000f, 123f, -1101f, 163f, 1055f, 174f, 1078f, 1312f, 1623f, 288f, 732f, 1000f, 1062f, 116f, -557f, 663f, 124f, -1000f, 1000f, -791f, 230f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = min(_wgslsmith_div_i32(arg_0.x, 1i), 555i);
    var_0 = 45814i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(~7742u, 23u)], 1003f, _wgslsmith_f_op_f32(f32(-1f) * -472f), global2[_wgslsmith_index_u32(~14484u, 23u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(reverseBits(u_input.a), 23u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(37768u, 23u)]), global2[_wgslsmith_index_u32(arg_1, 23u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)])))));
    let var_2 = var_1.www;
    let var_3 = Struct_4(_wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-35058i, 18621i, 232i), vec3<i32>(arg_2.b.d, arg_2.b.d, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x | arg_0.x, reverseBits(arg_2.b.d), arg_0.x), -(~vec3<i32>(arg_0.x, -1i, arg_2.b.d)))), -reverseBits(arg_0), 24885u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.c.x, -1191f, global2[_wgslsmith_index_u32(95564u, 23u)], global2[_wgslsmith_index_u32(arg_1, 23u)]), vec4<f32>(-936f, 894f, var_1.x, 667f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b.a, 1679f, arg_2.b.c.x, 884f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, 395f, -1271f, arg_2.b.c.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1049f))), _wgslsmith_f_op_f32(-909f - -1887f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-855f, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -393f, _wgslsmith_div_f32(-410f, 1000f), global2[_wgslsmith_index_u32(~u_input.a, 23u)]))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(37811u, 17u)], u_input.a & 4294967295u, Struct_2(true, global0[_wgslsmith_index_u32(u_input.a, 6u)]))))))));
    var var_1 = Struct_4(-min(~select(vec3<i32>(-2147483647i, 0i, -37033i), vec3<i32>(0i, -36269i, -1i), false), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(69512i, -22686i, 28787i)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_clamp_vec2_i32(select(global1[_wgslsmith_index_u32(12467u, 17u)], global1[_wgslsmith_index_u32(u_input.a ^ 0u, 17u)], all(vec2<bool>(true, true))), -global1[_wgslsmith_index_u32(29654u, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1468u, 0u), 17u)] | vec2<i32>(0i, -19340i)), ~_wgslsmith_clamp_u32(u_input.a, ~(~1u), 34191u));
    global1 = array<vec2<i32>, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(507f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))) + _wgslsmith_f_op_f32(ceil(-567f)));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), 17u)], abs(~u_input.a), Struct_2(true, global0[_wgslsmith_index_u32(~u_input.a, 6u)]))).yzz));
    var var_1 = ~(select(~(vec2<u32>(4294967295u, u_input.a) | vec2<u32>(105655u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a), arg_1) & countOneBits(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(99436u, u_input.a), vec2<u32>(u_input.a, 42913u)))));
    var var_2 = Struct_4(-min(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(58693i, max(-5438i, -2147483647i), -87226i)), countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 17u)]), 44826u);
    var var_3 = Struct_2(((var_2.a.x > -2509i) | !arg_1) && true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f * arg_0) - _wgslsmith_f_op_f32(round(1000f)))), vec4<bool>(true, all(vec2<bool>(true, false)), select(select(false, false, arg_1), true, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), reverseBits(var_1.x) <= ~0u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), global2[_wgslsmith_index_u32(~u_input.a, 23u)])), ~(~(-var_2.a.x)), arg_1));
    var_3 = Struct_2(var_3.b.b.x, var_3.b);
    return Struct_2(!(arg_1 | !arg_1) && false, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1915f), vec4<bool>(all(select(var_3.b.b.zzy, var_3.b.b.wzz, var_3.b.b.zww)), all(vec2<bool>(arg_1, true)) && !arg_1, !any(var_3.b.b.xw), any(var_3.b.b.yy) & true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_0, var_3.b.a, false)), _wgslsmith_f_op_f32(func_2()))), max(countOneBits(~18503i), firstTrailingBit(var_3.b.d)), (var_3.b.d < (2109i & var_3.b.d)) != true));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global1 = array<vec2<i32>, 17>();
    global1 = array<vec2<i32>, 17>();
    let var_0 = func_4(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.a, 23u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.a, 23u)])))) + global2[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1313f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(69069u, 23u)] + 117f)), _wgslsmith_f_op_f32(func_2()))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 23u)] - global2[_wgslsmith_index_u32(u_input.a, 23u)]) + 1411f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1957f)))));
    global1 = array<vec2<i32>, 17>();
    let var_1 = vec2<bool>(arg_0.x, any(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.a, -1000f))), false).b.b));
    return Struct_3(func_4(-1477f, true), vec2<bool>(true, true), abs(select(~0u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a)), !all(vec4<bool>(true, var_0.b.b.x, var_1.x, var_1.x)))), !var_0.b.b.www);
}

fn func_5(arg_0: Struct_3) -> vec3<bool> {
    global1 = array<vec2<i32>, 17>();
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-740f, 246f)), _wgslsmith_f_op_f32(max(642f, arg_0.a.b.c.x)))), arg_0.d.x), !select(func_1(arg_0.b).d.xz, func_1(arg_0.b).b, select(select(vec2<bool>(false, arg_0.d.x), vec2<bool>(arg_0.b.x, arg_0.d.x), true), arg_0.a.b.b.wz, arg_0.b.x)), arg_0.c << ((0u | arg_0.c) % 32u), arg_0.d);
    let var_1 = Struct_2(false, Struct_1(-250f, var_0.a.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.b.c)), firstLeadingBit(abs(34883i)), var_0.a.a && arg_0.d.x));
    global1 = array<vec2<i32>, 17>();
    global0 = array<Struct_1, 6>();
    return !(!var_1.b.b.zxx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 23>();
    global1 = array<vec2<i32>, 17>();
    global2 = array<f32, 23>();
    var var_0 = ~_wgslsmith_div_vec3_u32(reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 16508u, u_input.a), vec3<u32>(51714u, 28776u, 78021u))), (vec3<u32>(51816u, u_input.a, u_input.a) & ~vec3<u32>(u_input.a, u_input.a, u_input.a)) << (select(~vec3<u32>(13394u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))) % vec3<u32>(32u)));
    let var_1 = select(func_5(func_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))))), vec3<bool>(true, true || (false && all(vec4<bool>(false, false, true, false))), true), all(select(func_1(vec2<bool>(true, true)).d.xy, select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), all(func_4(global2[_wgslsmith_index_u32(var_0.x, 23u)], true).b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)] & vec2<i32>(55776i, _wgslsmith_div_i32(0i, 3451i)), ~vec3<u32>(~26286u, 1u, 6250u), vec2<i32>(-8674i, select(2147483647i, 1i, true) << (_wgslsmith_mult_u32(~33388u, var_0.x) % 32u)), -15612i, ~u_input.a);
}

