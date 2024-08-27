struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(244f, -362f, 580f);

var<private> global1: array<f32, 27> = array<f32, 27>(827f, -1000f, 369f, -1372f, -1594f, 755f, -652f, -2771f, -184f, 1000f, -2034f, 364f, 425f, 357f, 678f, 907f, 1000f, 1000f, 315f, 776f, -1003f, 243f, 1000f, -116f, -1597f, 317f, -599f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = ~_wgslsmith_add_vec2_i32(u_input.a, -(u_input.a | u_input.a) | reverseBits(abs(u_input.a)));
    let var_2 = Struct_3(arg_3.a, _wgslsmith_f_op_vec4_f32(step(arg_2, vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -586f, global1[_wgslsmith_index_u32(select(arg_3.a ^ arg_3.a, 42896u, any(vec4<bool>(arg_1, arg_1, arg_1, false))), 27u)]))), 4294967295u);
    let var_3 = _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - arg_3.c.x))) * _wgslsmith_div_f32(278f, 1467f)));
    var var_4 = 4701i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1605f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.b))), -560f, select(true, 120289u < var_2.a, any(vec4<bool>(false, arg_1, true, true))))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> vec3<f32> {
    global1 = array<f32, 27>();
    let var_0 = ~firstLeadingBit(_wgslsmith_mult_u32(~30757u, arg_2.x));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(420f, _wgslsmith_f_op_f32(f32(-1f) * -2417f), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-230f, 1598f, _wgslsmith_f_op_f32(select(global0.x, global1[_wgslsmith_index_u32(arg_2.x, 27u)], false))))), vec3<f32>(_wgslsmith_f_op_f32(step(-1950f, _wgslsmith_f_op_f32(-1788f + 1000f))), _wgslsmith_f_op_f32(-1530f + -495f), _wgslsmith_f_op_f32(-1942f * _wgslsmith_f_op_f32(-arg_0))), vec3<bool>(4294967295u <= var_0, true, true))));
    global1 = array<f32, 27>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - -1000f), global0.x, _wgslsmith_f_op_f32(global0.x - global1[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1392f, -1579f, 1425f) - vec3<f32>(global0.x, global0.x, global1[_wgslsmith_index_u32(0u, 27u)]))))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 38426u), vec2<u32>(27628u, arg_2.x)), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-692f))), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-727f, arg_0, -1317f)) - vec3<f32>(arg_0, -1150f, global1[_wgslsmith_index_u32(arg_2.x, 27u)])) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global1[_wgslsmith_index_u32(var_0, 27u)], global1[_wgslsmith_index_u32(0u, 27u)])))))), !all(vec2<bool>(true, true)))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_2(arg_1);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(func_3(-1i, all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(1257f, global1[_wgslsmith_index_u32(393u, 27u)], 1472f, -274f)), Struct_4(arg_1, -230f, vec3<f32>(arg_0.b.x, arg_0.b.x, global1[_wgslsmith_index_u32(1u, 27u)])))), u_input.a.x, vec3<u32>(60166u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, arg_1), vec4<u32>(56320u, arg_0.a, 4294967295u, arg_0.c)), arg_0.c >> (4294967295u % 32u)))), _wgslsmith_f_op_vec3_f32(arg_0.b.yzx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-787f, 300f, 527f)))));
    let var_1 = 1i;
    let var_2 = Struct_3(abs(arg_1), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.b, vec4<f32>(-1677f, global1[_wgslsmith_index_u32(arg_1, 27u)], -1811f, arg_0.b.x)) + arg_0.b))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(85193u, var_0.a, var_0.a, 5027u)), vec4<u32>(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 23588u, arg_0.a, var_0.a), vec4<u32>(arg_0.c, 112238u, arg_1, 1u)), 1u, 0u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(16279u, arg_0.a, 1u, var_0.a), vec4<u32>(27445u, arg_1, 0u, 1u)), vec4<u32>(var_0.a, 25149u, 53207u, arg_0.c), vec4<u32>(var_0.a, var_0.a, arg_1, 23244u)), select(vec4<u32>(var_0.a, arg_0.c, 63847u, var_0.a), vec4<u32>(17751u, 41511u, arg_1, 17964u), true) & abs(vec4<u32>(7579u, 0u, 42190u, 4294967295u)))));
    var var_3 = Struct_3(1u, _wgslsmith_f_op_vec4_f32(max(var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b.x, global1[_wgslsmith_index_u32(21671u, 27u)], global1[_wgslsmith_index_u32(2875u, 27u)], 1000f), vec4<f32>(1241f, arg_0.b.x, global1[_wgslsmith_index_u32(0u, 27u)], var_2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, 1008f, var_2.b.x) + vec4<f32>(167f, global0.x, global0.x, 1332f)), true))))), var_0.a);
    return vec3<f32>(_wgslsmith_f_op_f32(-global0.x), arg_0.b.x, arg_0.b.x);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32) -> vec2<f32> {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 789f, global0.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global1[_wgslsmith_index_u32(arg_2, 27u)], 1574f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1347f, global0.x, global0.x)), vec3<f32>(1596f, -1000f, global1[_wgslsmith_index_u32(arg_2, 27u)])))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -457f, 1136f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(arg_2, vec4<f32>(1650f, global1[_wgslsmith_index_u32(arg_2, 27u)], global1[_wgslsmith_index_u32(arg_2, 27u)], 714f), 1u), 30659u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(825f, -169f, 247f) * vec3<f32>(global0.x, global1[_wgslsmith_index_u32(arg_2, 27u)], global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_2, 27u)])) * _wgslsmith_f_op_f32(-1000f - global0.x)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_2, 27u)])), _wgslsmith_div_f32(-241f, global1[_wgslsmith_index_u32(arg_2, 27u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], 759f, global0.x)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1000f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global1[_wgslsmith_index_u32(arg_2, 27u)], global0.x), vec3<f32>(global0.x, -507f, -1316f))))));
    var var_1 = 1i;
    return global0.zy;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = select(~firstLeadingBit(~vec4<u32>(11282u, arg_3.a, 1u, arg_3.a)), firstLeadingBit(firstTrailingBit(vec4<u32>(arg_3.a, 0u, arg_3.a, arg_3.a))), vec4<bool>(!arg_0 == (arg_0 & true), true, true, true)) | _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.a, arg_3.a, 4500u, 4294967295u), ~vec4<u32>(1u, 114130u, arg_3.a, arg_3.a)) & (vec4<u32>(arg_3.a, arg_3.a, arg_3.a, arg_3.a) & reverseBits(vec4<u32>(116542u, 1u, arg_3.a, 0u))), vec4<u32>(arg_3.a, 31162u, ~(0u ^ arg_3.a), arg_3.a));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(306f, -475f) + _wgslsmith_f_op_f32(arg_1 - 1367f)), arg_1))), 119f);
    global1 = array<f32, 27>();
    var var_1 = arg_3;
    let var_2 = !all(vec2<bool>(!(!arg_0), false));
    return -_wgslsmith_add_i32(u_input.b, firstTrailingBit(countOneBits(45334i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1441f)) + -786f), _wgslsmith_f_op_vec2_f32(select(global0.xz, _wgslsmith_f_op_vec2_f32(func_1(min(u_input.a.x | u_input.b, u_input.a.x), -(u_input.b ^ 8859i), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1324u, 4294967295u)), abs(vec2<u32>(75548u, 4294967295u))))), vec2<bool>(select(select(false, true, true), true, true), true))), Struct_2(~16116u));
    let var_1 = false;
    let var_2 = Struct_3(0u, vec4<f32>(-1189f, -1938f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32031u, 27u)]))), global1[_wgslsmith_index_u32(max(1u, 1u), 27u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-681f - _wgslsmith_div_f32(903f, global1[_wgslsmith_index_u32(16936u, 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 27u)])))), ~1u);
    let var_3 = true;
    var_0 = ~max(40601i, 1i);
    let var_4 = Struct_3(24107u, var_2.b, ~36361u);
    let var_5 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, abs(-vec2<i32>(u_input.a.x, u_input.a.x))), -u_input.a), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-18974i, -10135i)), select(vec2<i32>(u_input.b, 17i) | vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-13136i, u_input.b), true)), reverseBits(-1i)));
    var_0 = 59811i;
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_4.b.xzy, _wgslsmith_f_op_vec3_f32(var_2.b.wyz + vec3<f32>(917f, -1139f, -1387f)))) - vec3<f32>(var_4.b.x, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_4.a, 27u)])), -889f)))), var_4.b.xzz));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, vec2<f32>(1000f, global0.x), firstTrailingBit(max(max(vec4<u32>(19200u, var_4.c, var_4.a, var_2.a), firstLeadingBit(vec4<u32>(1u, 4294967295u, 41684u, var_4.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.a, 1u, var_4.a), vec4<u32>(1u, var_2.a, 12624u, 14261u)) << (max(vec4<u32>(var_2.c, 42992u, var_4.c, var_4.a), vec4<u32>(35660u, 0u, 7842u, 37515u)) % vec4<u32>(32u)))), u_input.a.x, abs(abs(-1i)));
}

