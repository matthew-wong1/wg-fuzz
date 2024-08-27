struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: vec2<f32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global3: array<u32, 22>;

var<private> global4: array<i32, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> bool {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.x, 1516f)))))) * _wgslsmith_f_op_f32(sign(arg_2)))));
    global0 = array<i32, 21>();
    var var_2 = global4[_wgslsmith_index_u32(~(_wgslsmith_add_u32(4294967295u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 22u)] ^ _wgslsmith_dot_vec2_u32(vec2<u32>(14439u, u_input.b.x), vec2<u32>(24286u, arg_0.x))) << (u_input.e % 32u)), 3u)];
    let var_3 = true;
    return _wgslsmith_sub_u32(0u, countOneBits(u_input.a)) < _wgslsmith_dot_vec3_u32(~countOneBits(u_input.b), select(~arg_0, arg_0, _wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(4903u, 22u)]) < _wgslsmith_sub_u32(u_input.a, 1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec2<i32> {
    var var_0 = false;
    var_0 = any(!(!(!vec3<bool>(arg_3, global2.x, arg_3)))) & all(!select(!vec3<bool>(false, global2.x, false), vec3<bool>(false, false, true), !global2.yyw));
    let var_1 = Struct_1(vec3<bool>(true, false, !(!(true || global2.x))), global1.x);
    global0 = array<i32, 21>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))) * 800f));
    return arg_2.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(min(1u, 106423u)), firstTrailingBit(~0u), 12412u, max(global3[_wgslsmith_index_u32(89085u, 22u)], ~u_input.a)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 24628u, u_input.a), vec4<u32>(1u, 30065u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 22u)], 22u)], 4294967295u))) | (vec4<u32>(175u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], u_input.a, u_input.e) | ~vec4<u32>(69199u, 4294967295u, u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)]))), countOneBits(15839u), min(u_input.a, 1u) ^ 19138u);
    global4 = array<i32, 3>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1340f, global1.x)))), 1506f, arg_0.a.x)) * _wgslsmith_f_op_f32(step(411f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.x)))))))));
    var var_2 = Struct_2(func_4(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(40754u, 22u)], var_0.x, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 41748u, 0u, 7863u)) | 113757u, 51844u), Struct_2(vec2<i32>(_wgslsmith_mult_i32(-19183i, -39466i), -20454i)), Struct_2(u_input.c.zy), func_3(~u_input.b & _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), u_input.b), any(vec2<bool>(arg_0.a.x, arg_0.a.x)), -497f, !vec3<bool>(false, global2.x, false))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(arg_1.x + 844f)))) + _wgslsmith_f_op_f32(f32(-1f) * -140f)));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    global0 = array<i32, 21>();
    var var_0 = func_2(Struct_1(select(vec3<bool>(global2.x, true, false), vec3<bool>(false, true, !global2.x), global2.x), _wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1180f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.a, -495f, 1145f))), vec4<f32>(-473f, _wgslsmith_f_op_f32(step(202f, arg_0)), arg_0, _wgslsmith_f_op_f32(floor(arg_1.a))), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1052f, global1.x, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, 1000f, 256f, 1096f) + vec4<f32>(-1016f, global1.x, arg_1.a, arg_1.a))))), 10918i);
    let var_1 = _wgslsmith_add_i32(-1i << (~u_input.a % 32u), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4465i, 19242i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 21u)], global4[_wgslsmith_index_u32(1267u, 3u)]), vec4<i32>(29248i, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 22u)], 3u)], global4[_wgslsmith_index_u32(40730u, 3u)], 18684i)), 1i)) >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~10512u), 22u)], 22u)] % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-934f, 939f, arg_1.a, arg_0)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -689f, var_0.b, arg_1.a)))), var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(sign(arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-154f, 1075f)) * _wgslsmith_f_op_f32(step(-1381f, 1597f))), arg_1.a)));
    global0 = array<i32, 21>();
    return Struct_1(vec3<bool>(true, true, true), 996f);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    global0 = array<i32, 21>();
    global4 = array<i32, 3>();
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.b)), global1.x) - vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(sign(206f))), _wgslsmith_f_op_f32(min(-400f, arg_1.b))));
    let var_0 = vec3<f32>(-807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + -1432f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(621f, _wgslsmith_div_f32(func_1(-702f, Struct_3(global1.x)).b, _wgslsmith_f_op_f32(1439f * 1182f)))));
    let var_1 = _wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(u_input.c, firstTrailingBit(select(-vec3<i32>(-40949i, 1139i, global0[_wgslsmith_index_u32(4882u, 21u)]), vec3<i32>(u_input.c.x, -39499i, -40207i), !vec3<bool>(arg_1.a.x, arg_1.a.x, true))), u_input.c));
    return Struct_3(var_0.x);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> bool {
    global1 = vec2<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1035f, -335f)))), arg_0.a));
    global3 = array<u32, 22>();
    global2 = vec4<bool>(false, arg_1, !arg_1, func_3(~abs(vec3<u32>(86087u, u_input.b.x, 1u) | u_input.b), true, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) + _wgslsmith_f_op_f32(ceil(899f))), Struct_3(_wgslsmith_f_op_f32(1182f + arg_0.a))).b, vec3<bool>(!all(vec3<bool>(true, global2.x, false)), func_1(_wgslsmith_div_f32(-274f, 1044f), func_5(-2147483647i, Struct_1(vec3<bool>(global2.x, true, global2.x), global1.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)])).a.x, true)));
    global4 = array<i32, 3>();
    global4 = array<i32, 3>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    global2 = vec4<bool>(select(!(u_input.d > -2147483647i), true, false) | global2.x, select(true & !global2.x, false, global2.x), all(!vec3<bool>(true, true, global1.x <= -1107f)), func_6(func_5(-(~global4[_wgslsmith_index_u32(57743u, 3u)]), func_1(1056f, Struct_3(869f)), ~(231u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)])), !(-global0[_wgslsmith_index_u32(u_input.e, 21u)] >= reverseBits(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1104f)))));
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -24276i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18403u, global3[_wgslsmith_index_u32(4294967295u, 22u)], 39812u, 2166u), vec4<u32>(u_input.b.x, 0u, global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 73831u)), 22u)] | _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 22u)], 74523u), 21u)], ~(u_input.d >> (4294967295u % 32u))), u_input.c);
    var var_1 = false;
    var_1 = false && (any(!vec4<bool>(false, true, false, global2.x)) && (func_3(vec3<u32>(global3[_wgslsmith_index_u32(u_input.e, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42511u, 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 22u)], 22u)]), true, _wgslsmith_f_op_f32(-global1.x), vec3<bool>(false, global2.x, false)) == global2.x));
    let var_2 = !global2.zy;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~u_input.b.zy) ^ ~(vec2<u32>(23012u, u_input.e) | firstLeadingBit(vec2<u32>(u_input.a, u_input.b.x))), ~global3[_wgslsmith_index_u32(30566u, 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(217f - 484f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(-1138f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
}

