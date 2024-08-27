struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(41034u, 45310u, 1u, 6826u, 4294967295u, 33646u, 23667u, 1u, 1u, 0u, 2802u, 43402u, 78427u, 95789u, 7272u, 31398u, 4294967295u, 39124u, 31326u, 4294967295u, 60536u);

var<private> global1: array<i32, 30>;

var<private> global2: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32) -> Struct_5 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1000f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1209f, 981f, true)) - arg_0)))));
    global0 = array<u32, 21>();
    let var_1 = 4294967295u;
    let var_2 = any(select(vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(true, true)), true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), all(vec4<bool>(true, false, true, false)))));
    var var_3 = u_input.b.xy;
    return Struct_5(var_0, ~4294967295u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_5) -> Struct_1 {
    let var_0 = vec3<bool>(~global0[_wgslsmith_index_u32(arg_3.b, 21u)] != _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 18688u, arg_3.b) ^ vec3<u32>(global0[_wgslsmith_index_u32(arg_1, 21u)], arg_3.b, 0u), ~vec3<u32>(4294967295u, 0u, arg_1)), arg_1), select(6729u, 4294967295u, select(any(vec4<bool>(true, false, true, true)), true, true)) > 43917u, false);
    global1 = array<i32, 30>();
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1163f)) - 1000f))))).a;
    let var_2 = vec2<f32>(arg_3.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(select(arg_2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(851f + arg_2.a), 593f)), any(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), false))))));
    global2 = (716f < var_2.x) || !var_0.x;
    return Struct_1(true);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> bool {
    global0 = array<u32, 21>();
    global1 = array<i32, 30>();
    global2 = true;
    var var_0 = !(!vec3<bool>(false, any(!arg_0.b.xw), arg_0.b.x));
    let var_1 = 56790i;
    return (global1[_wgslsmith_index_u32(arg_0.e.x, 30u)] == (-(u_input.b.x ^ 0i) << (4294967295u % 32u))) != true;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = func_4(Struct_4(func_3(_wgslsmith_div_i32(1i, -711i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)] >> (115710u % 32u), Struct_3(arg_0), func_2(140f)), vec4<bool>(true, 4294967295u < global0[_wgslsmith_index_u32(43561u, 21u)], true, all(vec3<bool>(false, true, false))), func_2(_wgslsmith_f_op_f32(-arg_0)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0[_wgslsmith_index_u32(35449u, 21u)]))), vec4<u32>(_wgslsmith_div_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 21u)]), func_2(arg_0).b), select(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 56139u), vec3<u32>(global0[_wgslsmith_index_u32(40159u, 21u)], global0[_wgslsmith_index_u32(118814u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])), ~41846u, any(vec4<bool>(true, false, false, false))), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 21u)], 21u)], ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 0u))) && true;
    global0 = array<u32, 21>();
    global2 = func_4(Struct_4(func_3(0i, 4294967295u, Struct_3(arg_0), Struct_5(Struct_3(-755f), 7942u)), select(vec4<bool>(select(var_0, var_0, var_0), 2147483647i > u_input.a.x, global0[_wgslsmith_index_u32(56610u, 21u)] == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], false), select(!vec4<bool>(var_0, true, var_0, var_0), !vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec3<bool>(var_0, var_0, var_0)), true, true, func_3(-22739i, 23942u, Struct_3(arg_0), Struct_5(Struct_3(-1764f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)])).a)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + arg_0)).a, _wgslsmith_f_op_f32(min(452f, -263f)), vec4<u32>(82462u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44792u, 21u)] ^ _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52609u, 21u)], 21u)], 21u)], 21u)], 0u, 53953u), 21u)], ~1u, abs(global0[_wgslsmith_index_u32(~4294967295u, 21u)]))), _wgslsmith_mod_vec4_u32(countOneBits(countOneBits(reverseBits(vec4<u32>(100954u, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64145u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])))), vec4<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40020u, 21u)], 21u)], 21u)], 21u)], 21u)], ~4294967295u), _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 13137u), select(global0[_wgslsmith_index_u32(80408u, 21u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68647u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), all(vec3<bool>(false, var_0, var_0))), max(4294967295u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(150u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8525u, 21u)], 21u)], 21u)], 21u)], 58251u), 21u)]))));
    let var_1 = true;
    global2 = func_4(Struct_4(func_3(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(6917u, 30u)], 1i, -58440i), vec4<i32>(-1i, -2147483647i, -6794i, arg_1)), vec4<i32>(arg_1, global1[_wgslsmith_index_u32(14819u, 30u)], arg_1, 1i)), ~(93937u | global0[_wgslsmith_index_u32(30016u, 21u)]), func_2(arg_0).a, func_2(782f)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_0, false, var_1), select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, true, var_0, var_0), var_1)), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1035f, arg_0) + -796f)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -558f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f * arg_0) - _wgslsmith_f_op_f32(arg_0 * 853f))), ~(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 0u, 22843u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40309u, 21u)], 21u)], 21u)], 21u)]) ^ firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(78269u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 0u)))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], global0[_wgslsmith_index_u32(26972u, 21u)], 29123u, global0[_wgslsmith_index_u32(67155u, 21u)]), ~vec4<u32>(47311u, global0[_wgslsmith_index_u32(9805u, 21u)], global0[_wgslsmith_index_u32(85963u, 21u)], 6790u)) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17987u, 21u)], 21u)], 21u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 22336u)), abs(vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33668u, 21u)], 21u)], 21u)], 21u)], 1u, 54062u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(10300u, 21u)], global0[_wgslsmith_index_u32(30574u, 21u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14527u, 21u)], 21u)]), vec4<u32>(22717u, 57080u, 4294967295u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(47445u, 21u)], global0[_wgslsmith_index_u32(35498u, 21u)], 0u, global0[_wgslsmith_index_u32(1u, 21u)]))) % vec4<u32>(32u))));
    return Struct_1(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(true), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(f32(-1f) * -545f)) * 1351f));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-159f, var_0.c, var_0.c), vec3<f32>(-307f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(316f - var_0.c), _wgslsmith_div_f32(933f, -680f)) + _wgslsmith_f_op_f32(var_0.c - var_0.c))));
    global2 = var_0.a.a;
    var var_2 = func_1(-208f, firstLeadingBit(-72640i));
    global1 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, var_0.c, -2151f), var_1, var_0.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, var_1.x, var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, var_0.c, var_0.c) - vec3<f32>(var_0.c, -1623f, -1171f))), select(select(vec3<bool>(true, var_0.a.a, false), vec3<bool>(false, true, false), var_2.a), vec3<bool>(var_0.a.a, true, false), true))) + var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1099f, -110f, -399f) + vec3<f32>(-1664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-732f, var_1.x, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1019f)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 30u)], global1[_wgslsmith_index_u32(7059u, 30u)]) >> (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]) % vec2<u32>(32u)), u_input.b.zz, u_input.a) ^ u_input.a, u_input.b, vec2<i32>(-1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -29069i, var_0.b) & vec3<i32>(-4465i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 30u)], u_input.a.x), vec3<i32>(var_0.b, var_0.b, 2147483647i))));
}

