struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(26168u, 45284u), vec2<u32>(18974u, 10738u), vec2<u32>(46590u, 1u), vec2<u32>(12100u, 4294967295u), vec2<u32>(683u, 948u), vec2<u32>(12491u, 1u), vec2<u32>(41982u, 64133u), vec2<u32>(38694u, 548u), vec2<u32>(1u, 1u), vec2<u32>(0u, 20523u), vec2<u32>(63945u, 1u), vec2<u32>(1u, 35621u), vec2<u32>(4294967295u, 17910u), vec2<u32>(0u, 1u), vec2<u32>(1u, 12244u), vec2<u32>(85182u, 45026u), vec2<u32>(61419u, 0u), vec2<u32>(72315u, 28388u), vec2<u32>(34161u, 4294967295u), vec2<u32>(42512u, 53144u), vec2<u32>(0u, 52213u), vec2<u32>(34445u, 14067u), vec2<u32>(0u, 1u), vec2<u32>(69082u, 30268u), vec2<u32>(33169u, 2064u), vec2<u32>(1111u, 0u), vec2<u32>(61492u, 4294967295u), vec2<u32>(45963u, 4294967295u));

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, false, false, true, false, false, false, false, false, true, true, false, true, false, false, false, false, true, true, true, false, true, true, true, true, true, false, false, true);

var<private> global2: array<Struct_3, 17>;

var<private> global3: array<Struct_5, 13>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> f32 {
    global3 = array<Struct_5, 13>();
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    global0 = array<vec2<u32>, 28>();
    let var_0 = global1[_wgslsmith_index_u32(20412u, 30u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1859f);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(select(1u, ~0u, global1[_wgslsmith_index_u32(firstTrailingBit((_wgslsmith_mod_u32(1u, 36456u) & _wgslsmith_mult_u32(u_input.b, u_input.b)) & 38978u), 30u)]), 13u)];
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-337f)))), vec2<u32>(u_input.b >> (47459u % 32u), 48594u), vec2<i32>(49877i, countOneBits(var_0.a.x)), true, ~4294967295u), abs(vec3<u32>(u_input.b, 4294967295u, 1u)) ^ vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.b, u_input.b), 46604u), vec4<bool>(true, global1[_wgslsmith_index_u32(101227u, 30u)], global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 30u)], select(arg_0.x != 763f, any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(4057u, 30u)], true)), global1[_wgslsmith_index_u32(16358u, 30u)] == global1[_wgslsmith_index_u32(u_input.b, 30u)]))), Struct_1(-981f, ~(~(~vec2<u32>(0u, 51507u))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, u_input.c.x) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), global0[_wgslsmith_index_u32(u_input.b, 28u)]) % vec2<u32>(32u)), vec2<i32>(var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(19693i, -54382i, -10181i, var_0.a.x), vec4<i32>(var_0.a.x, var_0.a.x, 2147483647i, -1i)))), all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(80899u, 30u)], true, global1[_wgslsmith_index_u32(15967u, 30u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(16581u, 30u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(36108u, 30u)])), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(43279u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]))), (u_input.b ^ abs(0u)) | abs(~39176u)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(select(global1[_wgslsmith_index_u32(13459u, 30u)], true, true), !global1[_wgslsmith_index_u32(149124u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)] | global1[_wgslsmith_index_u32(99543u, 30u)], all(vec4<bool>(global1[_wgslsmith_index_u32(11642u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(23677u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]))), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.a.x, -1i) << (0u % 32u), 0i, u_input.c.x), -1i));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    var_0 = Struct_5(u_input.c.yxx);
    global2 = array<Struct_3, 17>();
    return select(!(!var_1.c), global1[_wgslsmith_index_u32(1u, 30u)], var_1.c);
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(185f)), ~arg_0.a.b, max(u_input.a, u_input.a), false, _wgslsmith_mult_u32(~(66372u ^ arg_0.b.x), max(firstLeadingBit(u_input.b), 0u | arg_0.a.b.x)) & _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 26969u, arg_0.a.b.x)), ~abs(arg_0.b)));
    global3 = array<Struct_5, 13>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.a, _wgslsmith_f_op_f32(-arg_0.a.a)), _wgslsmith_f_op_f32(round(-791f)), -36572i != u_input.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~var_0.b.x, u_input.b), 28u)], u_input.c.yx, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, 808f, var_0.a, -481f) * vec4<f32>(-106f, arg_0.a.a, var_0.a, var_0.a))), _wgslsmith_dot_vec3_u32(arg_0.b | arg_0.b, arg_0.b)), ~select(~vec3<u32>(1u, u_input.b, var_0.e), arg_0.b, true) << (~countOneBits(_wgslsmith_mult_vec3_u32(arg_0.b, vec3<u32>(1u, 76540u, arg_0.a.e))) % vec3<u32>(32u)), !arg_0.c);
    let var_2 = Struct_5(~max(u_input.c.zwz, ~(vec3<i32>(0i, arg_0.a.c.x, -46765i) ^ u_input.c.www)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-549f, -611f))), vec2<f32>(259f, -788f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, arg_0.a.a), vec2<f32>(arg_0.a.a, var_1.a.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, -2074f))), vec2<f32>(-711f, -1037f))), true)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a + var_1.a.a), _wgslsmith_f_op_f32(-arg_0.a.a))) * vec2<f32>(-979f, var_1.a.a)));
    return var_2;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = vec4<f32>(arg_1, arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1637f, -170f)))) + _wgslsmith_f_op_f32(exp2(arg_1)))));
    var var_1 = ~((arg_0.x ^ ~arg_0.x) ^ arg_0.x) == 20794u;
    var var_2 = select(select(select(vec2<bool>(select(false, global1[_wgslsmith_index_u32(arg_0.x, 30u)], false), any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 30u)], true))), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b & 47698u, 30u)], select(global1[_wgslsmith_index_u32(u_input.b, 30u)], false, global1[_wgslsmith_index_u32(arg_0.x, 30u)])), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true), true)), select(select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 30u)], false), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(76794u, 30u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 30u)], true), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 30u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 30u)])), select(vec2<bool>(false, global1[_wgslsmith_index_u32(33797u, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), true), true), vec2<bool>(!global1[_wgslsmith_index_u32(arg_0.x, 30u)], all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)])))), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(35245u, 30u)]))), vec2<bool>(global1[_wgslsmith_index_u32(select(arg_0.x, ~18374u << (arg_0.x % 32u), true | (false && global1[_wgslsmith_index_u32(1u, 30u)])), 30u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, 1u, 0u)), 30u)], true), vec2<bool>(global1[_wgslsmith_index_u32(min(70524u, 35398u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(0u, 1u, 39813u, arg_0.x)), 30u)], 4294967295u == arg_0.x), all(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(88823u, 30u)]), global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(35908u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]), true))));
    global3 = array<Struct_5, 13>();
    global1 = array<bool, 30>();
    return vec3<bool>(select(!(true && (global1[_wgslsmith_index_u32(arg_0.x, 30u)] & false)), false, false), arg_3.a.x != -(~(arg_2 << (u_input.b % 32u))), true);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(u_input.a.x, ~1i >> ((abs(4294967295u) >> (u_input.b % 32u)) % 32u)) & _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 19926i), vec3<i32>(-71941i, u_input.c.x, -2147483647i)), -_wgslsmith_mod_i32(u_input.a.x, u_input.c.x)));
    var var_1 = vec2<u32>(1u, u_input.b);
    let var_2 = select(vec4<bool>(select(u_input.a.x, var_0.x | 21626i, all(vec3<bool>(global1[_wgslsmith_index_u32(8622u, 30u)], false, arg_0.x))) > func_2(Struct_2(Struct_1(-274f, vec2<u32>(var_1.x, u_input.b), vec2<i32>(-47411i, 19825i), arg_0.x, var_1.x), vec3<u32>(69757u, 4294967295u, u_input.b), vec4<bool>(arg_0.x, true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(var_1.x, 30u)]))).a.x, true, arg_0.x, !arg_0.x), select(select(select(vec4<bool>(arg_0.x, false, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(17848u, 30u)], false, arg_0.x, global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 30u)], false, global1[_wgslsmith_index_u32(61602u, 30u)], arg_0.x)), any(arg_0)), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(var_1.x, 30u)], true, false), select(true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(25122u, var_1.x), 30u)], !arg_0.x)), select(select(vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(49242u, 30u)], arg_0.x, global1[_wgslsmith_index_u32(var_1.x, 30u)]), select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 30u)], false, true, false)), vec4<bool>(true, arg_0.x, true, arg_0.x)), vec4<bool>(true, func_4(global0[_wgslsmith_index_u32(u_input.b, 28u)], -297f, var_0.x, Struct_5(u_input.c.xww)).x, all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 30u)], arg_0.x, true, false)), all(vec2<bool>(arg_0.x, false))), all(vec3<bool>(true, global1[_wgslsmith_index_u32(63759u, 30u)], false))), true), arg_0.x);
    var var_3 = firstTrailingBit(u_input.c.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1152f, 1864f, -2275f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1488f, -678f, 1818f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(-791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f)), -938f)))));
    return Struct_1(_wgslsmith_f_op_f32(-var_4.x), vec2<u32>(select(var_1.x, ~u_input.b, true), _wgslsmith_div_u32(var_1.x, _wgslsmith_clamp_u32(16130u, u_input.b, 1u))) & vec2<u32>(_wgslsmith_mult_u32(u_input.b, firstTrailingBit(20536u)), abs(~var_1.x)), u_input.a, _wgslsmith_div_u32(0u, ~(41324u | var_1.x)) != _wgslsmith_sub_u32(~firstTrailingBit(1u), min(var_1.x | var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_1.x, u_input.b), vec4<u32>(var_1.x, u_input.b, 1u, 1u)))), ~_wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(26543u, u_input.b, var_1.x), vec3<u32>(0u, 0u, 15289u)), vec3<u32>(u_input.b, var_1.x, 1u))));
}

fn func_6(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<u32>(arg_0.b.x, ~25659u);
    global3 = array<Struct_5, 13>();
    let var_1 = true;
    global0 = array<vec2<u32>, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1456f, _wgslsmith_f_op_f32(func_1(vec4<u32>(0u, u_input.b, 4294967295u, arg_0.b.x), vec4<f32>(arg_0.a, 206f, arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1451f, 1756f, arg_0.a) * vec3<f32>(-256f, arg_0.a, arg_0.a)))))) + vec3<f32>(_wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(-1320f - 1135f)), -613f, 1405f)));
    return 34715u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(func_6(func_5(!func_4(vec2<u32>(22384u, u_input.b), _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b, 39810u, u_input.b, 1u), vec4<f32>(-734f, 347f, 178f, 260f))), _wgslsmith_sub_i32(u_input.a.x, 0i), func_2(Struct_2(Struct_1(1000f, global0[_wgslsmith_index_u32(u_input.b, 28u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 30u)], 17176u), vec3<u32>(u_input.b, u_input.b, 11361u), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], false, global1[_wgslsmith_index_u32(61348u, 30u)], true)))))), 17u)];
    var var_1 = 13989u;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(select(0u, 34311u, false) | select(1u, u_input.b, true)), 73062u >> (~var_0.b.x % 32u)), u_input.b), 30u)];
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, -688f, 998f, 290f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1056f, -570f, -2219f, -1608f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-321f, -1000f, -314f, 2251f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1666f, -488f, 189f, -802f)), _wgslsmith_div_vec4_f32(vec4<f32>(-656f, 396f, -1027f, 1735f), vec4<f32>(3151f, -2917f, -347f, 330f)))))));
    global2 = array<Struct_3, 17>();
    var_1 = max(46113u, countOneBits(~(~4294967295u)));
    var var_4 = Struct_2(Struct_1(840f, ~var_0.b.zz, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_0.a.x, 0i)), u_input.a, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1336f)) == _wgslsmith_f_op_f32(var_3.x + -1922f), ~(~u_input.b) << (u_input.b % 32u)), ~min(~var_0.b.zyz, ~vec3<u32>(u_input.b, u_input.b, 0u)), vec4<bool>(!(func_6(Struct_1(var_3.x, global0[_wgslsmith_index_u32(u_input.b, 28u)], vec2<i32>(0i, var_0.a.x), true, 4294967295u)) < 1u), true, true, func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, -492f, 281f, var_3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x | 2147483647i), ~select(u_input.c.yw, vec2<i32>(35808i, 75218i), var_4.c.wy)), u_input.c.xy));
}

