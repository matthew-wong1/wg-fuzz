struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<vec3<f32>, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, _wgslsmith_div_u32(1u, u_input.b), 0u), vec3<u32>(u_input.e.x, 8385u, ~u_input.e.x) | _wgslsmith_add_vec3_u32(countOneBits(u_input.e.zxx), select(vec3<u32>(u_input.e.x, 4294967295u, 17263u), u_input.e.xyz, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, _wgslsmith_div_f32(843f, 1129f), -1000f, _wgslsmith_div_f32(-335f, -589f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1811f) * _wgslsmith_f_op_f32(-1461f - 488f))), -748f)), _wgslsmith_f_op_f32(exp2(1f)));
    global2 = array<Struct_2, 29>();
    var var_1 = 378f;
    global3 = array<vec3<f32>, 11>();
    global1 = array<Struct_2, 11>();
    return -1260f;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    global3 = array<vec3<f32>, 11>();
    var var_0 = vec2<i32>(-(~(~countOneBits(-2147483647i))), 15681i);
    global1 = array<Struct_2, 11>();
    let var_1 = u_input.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -308f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_f32(arg_0.x + arg_1.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(select(-425f, _wgslsmith_f_op_f32(round(arg_1.a.b.x)), arg_1.c)));
    return true;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> i32 {
    global1 = array<Struct_2, 11>();
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.yzz, arg_1), ~arg_1), 11u)];
    let var_1 = Struct_2(var_0.a, Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.c, u_input.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, var_0.a.b.x, 671f, -298f) - var_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.c)))), var_0.a.b.x), func_3(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d))), global1[_wgslsmith_index_u32(~(1u << ((13689u ^ u_input.e.x) % 32u)), 11u)]));
    let var_2 = var_1.a.b.x;
    var var_3 = var_1;
    return 0i;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = vec4<bool>((!(arg_2.x < 7030i) != all(vec3<bool>(true, true, true))) && true, func_3(vec2<f32>(1f, 1f), Struct_2(Struct_1(_wgslsmith_div_u32(arg_0, 25657u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 560f, -532f, arg_1.x)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_1.x - -1730f)), Struct_1(7696u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1225f, 1000f, arg_1.x, 1190f) + vec4<f32>(176f, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_div_f32(arg_1.x, -1156f)), true)), select(true, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x * 1320f)) >= _wgslsmith_f_op_f32(-223f - -1066f), ((arg_2.x > 15989i) | true) != true), all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true))));
    var var_1 = !(!var_0.x);
    global3 = array<vec3<f32>, 11>();
    let var_2 = _wgslsmith_div_vec2_i32(arg_3, vec2<i32>(-1i) * -(~vec2<i32>(arg_2.x, 9267i))) << (_wgslsmith_add_vec2_u32(abs(u_input.e.xx), ~(~_wgslsmith_div_vec2_u32(u_input.e.wz, u_input.e.xw))) % vec2<u32>(32u));
    var var_3 = arg_1.x;
    return Struct_1(min(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e.zw, vec2<u32>(arg_0, 83818u)), ~vec2<u32>(u_input.e.x, 5212u)), _wgslsmith_mult_u32(~1u, firstTrailingBit(0u))), 37718u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(trunc(-461f)), _wgslsmith_f_op_f32(arg_1.x - -1051f), _wgslsmith_f_op_f32(sign(arg_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(floor(-1793f)), -787f, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(reverseBits(~99964u) | abs(~u_input.e.x)), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(select(53537u, u_input.e.x, true), 11u)]), vec4<i32>(u_input.d, ~(-2147483647i), _wgslsmith_sub_i32(func_1(u_input.d, u_input.e.www, 2147483647i, 2147483647i), -2147483647i) ^ ~u_input.d, _wgslsmith_sub_i32(u_input.a, max(u_input.d | -6996i, _wgslsmith_dot_vec2_i32(vec2<i32>(-19736i, u_input.a), vec2<i32>(-28698i, u_input.a))))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2487i, u_input.d), vec2<i32>(u_input.d, u_input.a)), abs(-2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.a, 4242i))));
    var var_1 = _wgslsmith_mod_i32(u_input.a, i32(-1i) * -27640i);
    var_0 = func_4(var_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-772f, -775f, var_0.b.x) - _wgslsmith_f_op_vec3_f32(var_0.b.yyx - vec3<f32>(-457f, 246f, var_0.d))))))), -vec4<i32>(1i, ~u_input.d, u_input.a & -75266i, 1i), _wgslsmith_add_vec2_i32(-vec2<i32>(40966i, ~2147483647i), -abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(3145i, 1i)))));
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.d)), func_4(abs(1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(4294967295u, 11u)]), global3[_wgslsmith_index_u32(var_0.a, 11u)], true)), ~vec4<i32>(u_input.a, u_input.d, var_2, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(27421i, -1i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, var_2))).d, var_0.b.x, _wgslsmith_f_op_f32(step(-1401f, var_0.b.x))));
    var var_4 = Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1672f, var_0.d, var_3.x, -434f) + _wgslsmith_f_op_vec4_f32(-var_0.b))), 586f, 1579f), func_4(64177u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b.wyw, vec3<f32>(var_3.x, var_3.x, var_3.x)), vec3<f32>(var_3.x, 2077f, var_0.b.x)))), max(max(vec4<i32>(u_input.d, 1i, -44585i, -72765i) | vec4<i32>(var_2, -3451i, u_input.a, 2147483647i), -vec4<i32>(var_2, var_2, var_2, var_2)), firstLeadingBit(reverseBits(vec4<i32>(var_2, 17357i, -26196i, -2147483647i)))), -firstLeadingBit(vec2<i32>(33574i, var_2) ^ vec2<i32>(-50874i, 12772i))), !((all(vec4<bool>(true, true, false, false)) && true) & (_wgslsmith_clamp_i32(u_input.d, u_input.a, -2147483647i) > -u_input.a)));
    let var_5 = _wgslsmith_add_i32(~_wgslsmith_mod_i32(var_2, 0i) & -1i, 20366i) << (~(~1u) % 32u);
    global2 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.e.zwz, _wgslsmith_div_vec3_u32(u_input.e.yyy >> (vec3<u32>(var_4.a.a, var_4.b.a, 1884u) % vec3<u32>(32u)), vec3<u32>(u_input.e.x, 3186u, ~var_0.a)), vec3<bool>(_wgslsmith_f_op_f32(-var_4.b.c) != -576f, !select(true, var_4.c, false), var_3.x != _wgslsmith_f_op_f32(max(var_4.a.d, 1331f)))), 522f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(80384u, 11u)])))))) + var_0.b.zww));
}

