struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_4,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1000f, 253f), 0i, 0i, 4294967295u, vec2<f32>(-1000f, 801f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = Struct_1(global0.a, arg_0.c.c, _wgslsmith_clamp_i32(global0.b, _wgslsmith_mult_i32(1i, -global0.c), global0.b), arg_0.c.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.e + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.e)))));
    var_0 = Struct_1(global0.e, ~(~reverseBits(~(-10452i))), -arg_2, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(86411u, 1u)), u_input.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1619f - 309f), _wgslsmith_f_op_f32(abs(-332f))) * global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1891f, 320f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, global0.e.x)), arg_0.a.x))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.e.x), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1342f)))), -2147483647i, ~arg_2, 4294967295u, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1161f, var_0.a.x))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(sign(605f)), Struct_2(arg_0.b.a));
    let var_3 = 0i;
    return var_2.b.a.b;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.e * _wgslsmith_f_op_vec2_f32(-arg_1.a)), -1i, -(~func_3(arg_0, arg_0.a.x && arg_0.a.x, countOneBits(1765i))), ~(arg_1.d << (~1u % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(756f, arg_2.a.a.x), vec2<f32>(arg_1.a.x, 540f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.c.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_2.a.a * arg_0.b.a.a))), global0.a, any(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true))))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1983f)) + _wgslsmith_f_op_f32(arg_1.e.x * arg_0.c.e.x)))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.a, arg_2.a.e) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.e.x, -395f) * vec2<f32>(global0.e.x, arg_1.e.x))), _wgslsmith_mod_i32(-2147483647i, 11609i ^ arg_0.b.a.b), _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, arg_0.c.b, arg_0.b.a.b), vec3<i32>(1i, 0i, arg_0.c.b), arg_0.a.x), abs(vec3<i32>(arg_0.b.a.c, 41009i, 5996i))), 1u, global0.e)));
    let var_1 = arg_0.c;
    var var_2 = ~(~countOneBits(vec2<u32>(var_1.d, reverseBits(var_1.d))));
    var var_3 = countOneBits(~(~3884u));
    return (17928u >> ((var_2.x >> ((max(89407u, var_0.b.a.d) | 0u) % 32u)) % 32u)) << (firstTrailingBit(abs(max(0u, u_input.a)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(arg_1.d, var_1.d))) % 32u);
}

fn func_4(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.e + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global0.e, global0.a))) + _wgslsmith_f_op_vec2_f32(select(global0.e, global0.a, 0u > u_input.a)))), ~(i32(-1i) * -2147483647i), -50727i, _wgslsmith_div_u32(4294967295u, reverseBits(u_input.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e - _wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, -1771f)))), vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.e.x * global0.e.x)))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), true | (-1i > global0.b)))));
    var var_0 = Struct_1(vec2<f32>(1103f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.e.x, global0.e.x))), all(vec3<bool>(true, true, true))))), global0.c, 139i >> (global0.d % 32u), 63385u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, 1002f)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.e))), _wgslsmith_clamp_i32(var_0.c, ~1i, global0.b | global0.c), select(var_0.b, _wgslsmith_add_i32(var_0.c, -24448i), false), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.e.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(sign(global0.e)), vec2<bool>(false, false))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(ceil(var_0.a.x))))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, global0.a.x))))) + vec2<f32>(-616f, var_0.e.x)), var_0.b, -13725i, ~(~0u), var_0.a);
    let var_1 = !select(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), true, false, false), vec4<bool>(_wgslsmith_f_op_f32(max(-117f, 1039f)) < _wgslsmith_f_op_f32(-global0.e.x), true, all(vec3<bool>(true, true, true)), true), all(vec4<bool>(true, true, true, true)));
    return Struct_1(vec2<f32>(var_0.a.x, global0.e.x), _wgslsmith_sub_i32(var_0.c, ~(-2147483647i)), ~var_0.c, 98434u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(global0.e)))))));
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1321f) + vec2<f32>(-2581f, 1719f))), arg_0, vec2<bool>(true, global0.d <= 0u)))), ~33834i, global0.c, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(0u, global0.d)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(global0.a)), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1263f)))));
    var var_0 = _wgslsmith_add_i32(~(-10185i & global0.c), global0.b);
    global0 = func_4(_wgslsmith_clamp_u32(95295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 19904u, global0.d, global0.d), vec4<u32>(global0.d, global0.d, u_input.a, 0u)), vec4<u32>(func_2(Struct_4(vec2<bool>(true, false), Struct_2(Struct_1(arg_0, global0.b, global0.c, global0.d, vec2<f32>(global0.e.x, arg_0.x))), Struct_1(arg_0, 2147483647i, global0.b, 1u, arg_0)), Struct_1(vec2<f32>(454f, arg_0.x), global0.c, global0.b, 27332u, arg_0), Struct_2(Struct_1(vec2<f32>(-544f, 1791f), global0.c, 2147483647i, u_input.a, global0.a))), _wgslsmith_mod_u32(global0.d, u_input.a), 27557u, _wgslsmith_dot_vec4_u32(vec4<u32>(22212u, u_input.a, global0.d, 34425u), vec4<u32>(16744u, 1u, u_input.a, 21953u)))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(20088u, u_input.a), reverseBits(vec2<u32>(29706u, global0.d))), _wgslsmith_mult_vec2_u32(vec2<u32>(12270u, global0.d), vec2<u32>(global0.d, 37102u)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    var_0 = -2126i;
    var var_1 = 1f;
    return select(vec2<bool>(true, true), vec2<bool>(!(_wgslsmith_f_op_f32(floor(global0.e.x)) < _wgslsmith_f_op_f32(591f + -804f)), all(vec4<bool>(true, true, true, true))), (arg_0.x != _wgslsmith_f_op_f32(select(-1596f, global0.a.x, true))) | true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(func_1(_wgslsmith_div_vec2_f32(global0.e, vec2<f32>(-467f, global0.e.x))), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.e.x, global0.a.x)))), !vec2<bool>(global0.c <= global0.b, true));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -133f, -2598f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.e.x, -554f)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true))))))), Struct_4(vec2<bool>(var_0.x, all(select(var_0, var_0, var_0.x))), Struct_2(func_4(_wgslsmith_clamp_u32(global0.d, 1u, u_input.a))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-377f - global0.e.x), global0.e.x), _wgslsmith_div_i32(global0.c, _wgslsmith_sub_i32(-1i, 517i)), 20173i, reverseBits(global0.d >> (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1880f, global0.e.x))))), Struct_4(select(select(!var_0, vec2<bool>(false, var_0.x), true), func_1(global0.e), all(vec2<bool>(var_0.x, var_0.x))), Struct_2(func_4(abs(1u))), func_4(1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 3109f) + vec3<f32>(global0.a.x, -726f, 678f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-942f, global0.a.x, -384f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(994f, global0.e.x, -1133f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 232f, global0.e.x))))));
    var var_2 = func_4(u_input.a).d;
    let var_3 = var_1.b.b;
    var var_4 = _wgslsmith_f_op_f32(select(-1412f, -1129f, true));
    var_2 = var_3.a.d >> (1u % 32u);
    var var_5 = func_4(~var_3.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_div_vec2_u32(select(vec2<u32>(86107u, u_input.a), vec2<u32>(var_5.d, 4767u), var_0), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.c.d, var_5.d), vec2<u32>(var_1.c.c.d, 1u)))), ~reverseBits(_wgslsmith_clamp_i32(-var_5.b, _wgslsmith_sub_i32(-37492i, global0.b), firstTrailingBit(-2147483647i))));
}

