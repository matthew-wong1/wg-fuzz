struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<bool, 27>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(0u, vec2<f32>(773f, 157f)), Struct_1(17202u, vec2<f32>(1667f, -666f)), Struct_1(0u, vec2<f32>(482f, -1000f)), Struct_1(0u, vec2<f32>(-811f, 1643f)), Struct_1(1u, vec2<f32>(113f, -482f)), Struct_1(1u, vec2<f32>(1390f, -721f)), Struct_1(1u, vec2<f32>(-113f, -960f)), Struct_1(46331u, vec2<f32>(830f, 192f)), Struct_1(1u, vec2<f32>(1000f, 1366f)), Struct_1(75863u, vec2<f32>(837f, -470f)), Struct_1(0u, vec2<f32>(-864f, -1351f)), Struct_1(4294967295u, vec2<f32>(-277f, -957f)), Struct_1(6866u, vec2<f32>(-1550f, 1000f)), Struct_1(4294967295u, vec2<f32>(-894f, 1000f)), Struct_1(4294967295u, vec2<f32>(-749f, 186f)), Struct_1(66254u, vec2<f32>(-905f, 1280f)), Struct_1(20803u, vec2<f32>(890f, 335f)), Struct_1(6898u, vec2<f32>(-1122f, -1120f)), Struct_1(20917u, vec2<f32>(-528f, 1499f)), Struct_1(1u, vec2<f32>(-793f, 261f)), Struct_1(82993u, vec2<f32>(-865f, 1070f)), Struct_1(24651u, vec2<f32>(-1318f, 966f)), Struct_1(1420u, vec2<f32>(1136f, -1234f)), Struct_1(1u, vec2<f32>(845f, 206f)), Struct_1(66659u, vec2<f32>(505f, 1842f)));

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(64620i, 1i), vec2<i32>(-18930i, 0i), vec2<i32>(-1i, 22503i), vec2<i32>(0i, 1i), vec2<i32>(0i, 79427i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(3812i, 16379i), vec2<i32>(-9136i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-49199i, -25650i), vec2<i32>(-8476i, -1i), vec2<i32>(0i, -16674i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -9763i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(3139i, -1i), vec2<i32>(-49045i, -1i));

var<private> global4: array<vec4<bool>, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = !vec4<bool>(arg_2.a >= _wgslsmith_mult_u32(66401u, 1u), any(arg_3), !all(global4[_wgslsmith_index_u32(1u, 17u)]), !select(arg_1.x, any(global4[_wgslsmith_index_u32(arg_0.x, 17u)]), true));
    global2 = array<Struct_1, 25>();
    global0 = array<Struct_1, 13>();
    let var_1 = max(arg_0.wwx, vec3<u32>(13520u, arg_0.x, arg_2.a));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2001f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-366f, _wgslsmith_f_op_f32(step(164f, arg_2.b.x)))) + _wgslsmith_f_op_f32(max(arg_2.b.x, arg_2.b.x))))));
    return global2[_wgslsmith_index_u32(0u, 25u)];
}

fn func_3() -> u32 {
    let var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~20679u, 1u), _wgslsmith_mult_u32(abs(14555u), ~(~18290u))), 27u)];
    global1 = array<bool, 27>();
    global2 = array<Struct_1, 25>();
    global1 = array<bool, 27>();
    let var_1 = _wgslsmith_f_op_f32(sign(-1440f));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), ~100385u) & select(firstTrailingBit(_wgslsmith_clamp_u32(~48501u, 1u, 0u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, 20636u, 4294967295u)), vec4<u32>(4294967295u, 0u, 61237u, 4294967295u)) ^ (~1u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54879u, 0u, 1u), vec4<u32>(16676u, 15162u, 19521u, 1u))), !(_wgslsmith_f_op_f32(460f + var_1) >= _wgslsmith_f_op_f32(594f * var_1)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    global1 = array<bool, 27>();
    let var_1 = _wgslsmith_mult_vec2_i32(-(~(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-2147483647i, u_input.b)) | global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u), 17u)])), vec2<i32>(u_input.a.x & 0i, -38004i >> (arg_3.a % 32u)));
    let var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~global3[_wgslsmith_index_u32(108673u, 17u)] ^ vec2<i32>(var_1.x, var_1.x), global3[_wgslsmith_index_u32(arg_0.a, 17u)] << (abs(vec2<u32>(arg_3.a, arg_0.a)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, var_1.x), 1i), ~_wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(71212u, 17u)], vec2<i32>(24008i, 35185i)))) & -u_input.a.yz;
    let var_3 = func_1(vec4<u32>(countOneBits(func_1(vec4<u32>(arg_0.a, 1u, 0u, arg_2.a), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a, 27u)], true, global1[_wgslsmith_index_u32(var_0.a, 27u)]), arg_3, vec2<bool>(global1[_wgslsmith_index_u32(55715u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)])).a), _wgslsmith_mult_u32(1u, func_3()), arg_1.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(57652u, arg_2.a, 1u), vec3<u32>(var_0.a, arg_1.a, 0u)), 8165u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_1.a, arg_2.a, firstTrailingBit(arg_1.a), var_0.a | 1u), vec4<u32>(arg_2.a, 1u, ~40849u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_0.a, arg_1.a), vec4<u32>(31910u, 4294967295u, arg_3.a, arg_3.a)))) % vec4<u32>(32u)), vec3<bool>(true, 701f >= _wgslsmith_f_op_f32(ceil(arg_2.b.x)), !any(!vec3<bool>(true, global1[_wgslsmith_index_u32(20899u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))), Struct_1(31733u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * arg_3.b.x) * _wgslsmith_f_op_f32(arg_2.b.x + 130f)), 991f)), select(!select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_3.a, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(arg_0.a, 27u)]), global1[_wgslsmith_index_u32(arg_0.a, 27u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, true)), vec2<bool>(all(!vec3<bool>(global1[_wgslsmith_index_u32(67569u, 27u)], global1[_wgslsmith_index_u32(81971u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), 1u <= _wgslsmith_div_u32(arg_0.a, arg_1.a)), global1[_wgslsmith_index_u32(40341u, 27u)]));
    return _wgslsmith_f_op_f32(select(var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-417f, arg_1.b.x)), arg_3.b.x) + -655f), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(1379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(~6420u, 25u)], func_1(vec4<u32>(36897u, 15286u, 1u, 12133u), vec3<bool>(global1[_wgslsmith_index_u32(34157u, 27u)], false, global1[_wgslsmith_index_u32(3939u, 27u)]), Struct_1(17752u, vec2<f32>(536f, 1000f)), vec2<bool>(global1[_wgslsmith_index_u32(1733u, 27u)], global1[_wgslsmith_index_u32(2015u, 27u)])), global2[_wgslsmith_index_u32(61375u >> (1u % 32u), 25u)], Struct_1(0u, vec2<f32>(787f, 1322f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2389f - 361f), -231f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(1u, _wgslsmith_div_vec2_f32(vec2<f32>(-822f, 251f), vec2<f32>(-1458f, 412f))), func_1(vec4<u32>(26698u, 0u, 0u, 4294967295u), select(vec3<bool>(global1[_wgslsmith_index_u32(1830u, 27u)], global1[_wgslsmith_index_u32(33604u, 27u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], true), global1[_wgslsmith_index_u32(38787u, 27u)]), func_1(vec4<u32>(1u, 4294967295u, 0u, 61805u), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(22245u, 27u)]), global0[_wgslsmith_index_u32(0u, 13u)], vec2<bool>(global1[_wgslsmith_index_u32(2583u, 27u)], true)), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], false), vec2<bool>(global1[_wgslsmith_index_u32(3730u, 27u)], false), global1[_wgslsmith_index_u32(0u, 27u)])), Struct_1(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1596f, 436f))), func_1(vec4<u32>(7621u, 24023u, 110169u, 76949u), !vec3<bool>(true, global1[_wgslsmith_index_u32(86651u, 27u)], false), Struct_1(130342u, vec2<f32>(2348f, -970f)), vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f))));
    global2 = array<Struct_1, 25>();
    let var_1 = Struct_1(~0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(var_0.x))), var_0.x)));
    let var_2 = ~20242i;
    global0 = array<Struct_1, 13>();
    let var_3 = ~41337u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-3153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -1172f, true)))), var_1.b, !select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 27u)], false), vec2<bool>(global1[_wgslsmith_index_u32(82032u, 27u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.a, 27u)])), !vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 27u)], true), true))), -2246f);
}

