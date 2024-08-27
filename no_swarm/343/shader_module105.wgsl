struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.xw), arg_2, -254f);
    let var_1 = Struct_3(abs(4294967295u), Struct_1(all(vec3<bool>(arg_2.d.x, true, arg_2.d.x)), ~_wgslsmith_clamp_i32(var_0.b.b, i32(-1i) * -51797i, min(1i, var_0.b.b)), u_input.b.x, !(!vec2<bool>(false, arg_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -213f)), 424f)), _wgslsmith_f_op_f32(-var_0.c));
    var var_2 = var_0.b;
    var var_3 = arg_2;
    let var_4 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, var_1.b.e.x, -1580f, -1000f) + vec4<f32>(509f, 164f, arg_2.e.x, 844f))), vec4<f32>(-1000f, var_0.b.e.x, _wgslsmith_f_op_f32(floor(-787f)), 1000f)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-470f, _wgslsmith_f_op_f32(var_0.b.e.x - -715f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.e.x + var_1.c), var_0.c)), _wgslsmith_f_op_f32(floor(var_2.e.x))))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = 858f;
    var var_1 = vec2<i32>(_wgslsmith_div_i32(arg_2, _wgslsmith_sub_i32(max(min(2147483647i, -25043i), 13344i << (arg_0 % 32u)), -arg_2)), u_input.a);
    let var_2 = ~(arg_0 ^ ((abs(arg_0) ^ firstLeadingBit(u_input.b.x)) ^ 39192u));
    let var_3 = true;
    var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_1.x), vec2<i32>(-991i, min(-u_input.a, _wgslsmith_mult_i32(0i, 31130i))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-100f, 947f, _wgslsmith_f_op_f32(var_0 - var_0), 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_0, ~var_2, Struct_1(false, var_1.x, 42923u, arg_3, vec2<f32>(var_0, -122f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = 115f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - 1881f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-715f)))), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_div_i32(abs(4654i), -22503i) == ~arg_2)));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1010f, 287f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) + -902f) - arg_0.x))));
    let var_2 = 1857f;
    var var_3 = !vec3<bool>(false, !(select(arg_3.x, arg_3.x, true) > reverseBits(arg_3.x)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), false)));
    return Struct_3(firstTrailingBit(4294967295u ^ _wgslsmith_add_u32(arg_3.x, ~arg_3.x)), Struct_1(!(!var_3.x), -7754i, _wgslsmith_sub_u32(u_input.b.x, 76641u), vec2<bool>(var_3.x, false | var_3.x), arg_0.yw), _wgslsmith_f_op_f32(826f * _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 18103u, u_input.b.x), vec3<u32>(1541u, 41651u, u_input.b.x)), vec3<bool>(var_3.x & false, var_3.x, false), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_2, arg_2), vec3<i32>(arg_2, arg_2, -2147483647i)), ~vec3<i32>(0i, arg_2, 2147483647i)), select(select(var_3.yz, var_3.xz, vec2<bool>(true, true)), var_3.zz, !var_3.zz))).x));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = !(!arg_2.a.d);
    let var_1 = arg_0.a.e;
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-108f, 412f)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(select(arg_0.d, -869f, var_0.x)), -434f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(u_input.b.x, vec3<bool>(false, false, arg_0.a.d.x), 0i, arg_2.a.d)), vec4<f32>(arg_0.d, 1103f, arg_0.d, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(745f * -1725f) * _wgslsmith_f_op_f32(trunc(1581f))) + _wgslsmith_f_op_f32(arg_0.b * 713f)), _wgslsmith_f_op_f32(var_1.x + 1326f), var_1.x, 605f), (min(u_input.a, select(arg_0.a.b, -2147483647i, true)) ^ 0i) >> (4294967295u % 32u), u_input.b);
    var_2 = Struct_3(4294967295u, var_2.b, var_1.x);
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(44364u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.c, arg_0.a.c), u_input.b.yz) << (select(75349u, arg_2.a.c, var_0.x) % 32u), 1u), 1u, _wgslsmith_div_u32(~u_input.b.x, 135091u)), ~abs(abs(vec4<u32>(arg_0.a.c, var_2.b.c, 0u, 36559u) >> (vec4<u32>(55345u, 8011u, u_input.b.x, arg_0.a.c) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(-var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(false, u_input.a, u_input.b.x, vec2<bool>(true, true), vec2<f32>(850f, 1336f)), 1427f, -785f, 1030f), vec3<i32>(5828i, u_input.a, 1i), Struct_2(Struct_1(true, u_input.a, u_input.b.x, vec2<bool>(false, false), vec2<f32>(-1661f, 315f)), 1113f, -880f, 1000f))) + _wgslsmith_f_op_f32(round(-1148f))))));
    let var_1 = -vec3<i32>(-u_input.a, -(~u_input.a << (u_input.b.x % 32u)), u_input.a);
    var var_2 = countOneBits(13082i);
    let var_3 = reverseBits(u_input.b.x);
    let var_4 = Struct_1(any(!vec4<bool>(var_1.x == var_1.x, select(false, false, true), false, true)), _wgslsmith_mod_i32(u_input.a, func_4(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, 1000f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -1431f, var_0, -555f))))), min(firstTrailingBit(u_input.a), -10019i), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, var_3, 25351u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3, 5428u, var_3, 0u), vec4<u32>(1u, var_3, u_input.b.x, 12191u)))).b.b), 53838u, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), func_4(vec4<f32>(var_0, -1057f, var_0, 448f), vec4<f32>(2013f, 489f, 576f, 511f), u_input.a, u_input.b).b.d, vec2<bool>(false, true))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * _wgslsmith_f_op_f32(1000f - -612f)))), var_0));
    let var_5 = Struct_1(var_4.a || all(!var_4.d), -2147483647i, 8266u, !(!select(vec2<bool>(var_4.d.x, var_4.d.x), var_4.d, select(vec2<bool>(var_4.d.x, var_4.a), vec2<bool>(false, var_4.a), var_4.d))), var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer((u_input.b.xy >> (u_input.b.xw % vec2<u32>(32u))) ^ vec2<u32>(48175u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + var_5.e.x), -1161f, all(vec3<bool>(var_5.d.x, false, true)))))));
}

