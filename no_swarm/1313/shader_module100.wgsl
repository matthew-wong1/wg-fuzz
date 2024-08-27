struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_2(vec2<i32>(-1i, abs(max(u_input.c, u_input.d) ^ u_input.e)));
    var var_1 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), true));
    var_1 = !(!(!vec3<bool>(true, true, any(vec4<bool>(var_1.x, var_1.x, true, false)))));
    let var_2 = abs(abs(countOneBits(vec3<u32>(52741u, 56665u, 55604u)) ^ select(vec3<u32>(1u, 49137u, u_input.a.x), vec3<u32>(1u, 0u, 69458u), false))) & _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, _wgslsmith_sub_u32(1u, 1u)), _wgslsmith_mult_vec3_u32(select(firstLeadingBit(vec3<u32>(15754u, 4294967295u, 1u)), ~vec3<u32>(arg_0, u_input.b, arg_0), var_1.x), vec3<u32>(~62388u, arg_0, u_input.b)));
    var var_3 = var_1.x;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(arg_0, arg_1.x), u_input.a.x ^ 27245u, ~_wgslsmith_mult_u32(arg_0, 105043u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 67053u, arg_2), ~vec3<u32>(u_input.a.x, 0u, 0u)));
    global0 = true;
    global0 = !(!(!select(false, func_3(28580u), select(true, true, true))));
    var var_1 = var_0;
    var var_2 = vec3<u32>(~48255u, _wgslsmith_div_u32(~1u, ~(~15009u)), 0u);
    return firstTrailingBit(~vec4<i32>(-75703i, reverseBits(u_input.d ^ -1i), -33743i, _wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d, arg_3.x), vec3<i32>(u_input.d, u_input.d, arg_3.x)))));
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-10628i, -(u_input.e << (u_input.b % 32u)), -u_input.c, u_input.d), max(select(vec4<i32>(1930i, u_input.d, u_input.d, u_input.e), vec4<i32>(u_input.c, 50495i, u_input.e, 1i), true) & func_2(u_input.b, vec2<u32>(u_input.a.x, u_input.a.x), u_input.b, vec2<i32>(u_input.c, u_input.d)), ~func_2(0u, vec2<u32>(0u, u_input.b), 4294967295u, vec2<i32>(6196i, u_input.e)))), u_input.d);
    var var_1 = vec2<i32>(firstTrailingBit(-11846i), -func_2(u_input.a.x, u_input.a, u_input.b, vec2<i32>(0i, -2147483647i)).x & min(_wgslsmith_div_i32(-6492i, -44246i), _wgslsmith_mod_i32(var_0.x, var_0.x))) | vec2<i32>(2147483647i, -var_0.x);
    var var_2 = vec2<i32>(65479i, _wgslsmith_mult_i32(0i, -_wgslsmith_clamp_i32(u_input.c, var_0.x, var_0.x)));
    var var_3 = !vec4<bool>(true, select(true, true, true), u_input.b < _wgslsmith_div_u32(12515u, select(4294967295u, 35564u, true)), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))));
    var_2 = ~vec2<i32>(-1i, var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1482f, 932f, true))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_2;
    let var_1 = true;
    var var_2 = false || (!(!all(vec3<bool>(true, true, false))) & true);
    var var_3 = Struct_2(arg_2.a);
    return firstLeadingBit(vec2<i32>(-abs(select(-1542i, arg_3.a, var_1)), arg_1.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~(64281u >> (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_clamp_u32(arg_1.c, 25195u, 4294967295u)), ~1u) % 32u));
    var var_1 = vec3<i32>(1111i, u_input.d, arg_2.a.x) ^ _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(~arg_1.a, _wgslsmith_dot_vec3_i32(arg_0.yyy, arg_0.wzy), -arg_1.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-434i, 2147483647i, 16860i, -8406i), vec4<i32>(arg_2.a.x, -921i, 0i, -19972i)) | 2147483647i, (arg_1.a | 0i) >> (_wgslsmith_div_u32(53756u, arg_1.c) % 32u), ~(-2147483647i)), firstTrailingBit(arg_0.wwx) | vec3<i32>(~arg_2.a.x, u_input.d | 2147483647i, arg_0.x));
    var_1 = firstLeadingBit(arg_0.yyz);
    var_1 = vec3<i32>(_wgslsmith_add_i32(-25195i, 0i), _wgslsmith_add_i32(max(~1i, min(-1i, arg_1.a) >> (~arg_1.c % 32u)), -7523i), var_1.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(727f + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(116f - -653f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(584f * _wgslsmith_f_op_f32(arg_1.b * -2358f))), -718f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + arg_1.b) + -341f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2064f * _wgslsmith_f_op_f32(arg_1.b - 2038f))))), -1365f);
    return Struct_1(u_input.d, 760f, abs(arg_1.c));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = (firstLeadingBit(countOneBits(vec4<u32>(arg_1.c, arg_1.c, 4294967295u, u_input.b) ^ vec4<u32>(arg_1.c, 4294967295u, u_input.b, u_input.a.x))) & firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c, 1100u, 1u, 0u), vec4<u32>(4294967295u, 1u, 35850u, 39965u)) & max(vec4<u32>(4294967295u, u_input.b, 0u, arg_1.c), vec4<u32>(arg_1.c, arg_1.c, 41384u, 0u)))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_1.c, arg_1.c, u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, 4294967295u, arg_1.c, u_input.b), vec4<u32>(arg_1.c, u_input.b, 25725u, 4294967295u))), ~vec4<u32>(_wgslsmith_div_u32(u_input.b, 1u), u_input.b, 3508u, 4294967295u), ~vec4<u32>(countOneBits(3806u), firstTrailingBit(4294967295u), _wgslsmith_add_u32(9161u, arg_1.c), ~12827u));
    var var_1 = 23188i >= (func_5(-vec4<i32>(45793i, arg_2.a.x, -9412i, arg_3.a.x), func_5(func_2(var_0.x, vec2<u32>(1u, 63353u), 0u, vec2<i32>(1i, -9748i)), Struct_1(arg_3.a.x, -727f, 4294967295u), arg_3), Struct_2(arg_3.a)).a << (4294967295u % 32u));
    return Struct_1(arg_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-638f + 3008f)))), 1000f), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -520f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1931f, 122f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-703f, _wgslsmith_f_op_f32(min(1624f, 468f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-669f + 573f))))))), func_5(~(~vec4<i32>(4452i, -1i, u_input.c, -29933i)), Struct_1(min(-u_input.c, _wgslsmith_mod_i32(-33643i, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-335f, 404f))), ~_wgslsmith_mod_u32(34281u, u_input.b)), Struct_2(func_4(_wgslsmith_f_op_f32(func_1()), vec4<i32>(u_input.c, 1i, -21943i, u_input.c), Struct_2(vec2<i32>(25227i, u_input.d)), Struct_1(u_input.d, -154f, u_input.a.x)))), Struct_2(vec2<i32>(func_4(-879f, vec4<i32>(-789i, u_input.d, 2124i, 6288i), Struct_2(vec2<i32>(u_input.e, -2147483647i)), Struct_1(u_input.e, 201f, 40537u)).x, _wgslsmith_add_i32(u_input.e, 38763i)) & vec2<i32>(_wgslsmith_clamp_i32(-1i, -11732i, u_input.d), 2147483647i)), Struct_2(vec2<i32>(_wgslsmith_add_i32(-u_input.c, u_input.e), -(~(-2147483647i)))));
    global0 = false;
    global0 = 0u <= abs(~var_0.c & ~(~u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, var_0.b))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1647f, -1132f), vec2<f32>(var_0.b, var_0.b))))))));
    var var_2 = func_6(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), func_6(_wgslsmith_f_op_f32(max(var_1.x, -1000f)), func_5(vec4<i32>(6489i, -8876i, ~(-19174i), i32(-1i) * -2147483647i), Struct_1(_wgslsmith_clamp_i32(-1i, var_0.a, u_input.c), var_0.b, _wgslsmith_clamp_u32(55167u, u_input.a.x, u_input.a.x)), Struct_2(abs(vec2<i32>(-32313i, var_0.a)))), Struct_2(-vec2<i32>(var_0.a, 31212i) ^ (vec2<i32>(u_input.d, var_0.a) ^ vec2<i32>(-19711i, u_input.d))), Struct_2(vec2<i32>(i32(-1i) * -1i, var_0.a))), Struct_2(func_2(29128u, ~vec2<u32>(u_input.a.x, 3431u), ~1u, firstTrailingBit(vec2<i32>(u_input.d, u_input.c))).xw >> ((vec2<u32>(0u, 49926u) & abs(u_input.a)) % vec2<u32>(32u))), Struct_2(~(-vec2<i32>(var_0.a, -20650i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + -888f))), _wgslsmith_f_op_f32(1662f * -1000f), 1f)) * vec4<f32>(700f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-231f)))))), -536f, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(~abs(vec3<u32>(43595u, u_input.b, var_0.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(26078u, u_input.a.x, u_input.b)), ~vec3<u32>(var_0.c, 27094u, 3532u)), _wgslsmith_div_u32(1u & var_2.c, var_2.c), ~(~1u))), func_5(_wgslsmith_add_vec4_i32(-vec4<i32>(-45704i, 0i, var_2.a, var_0.a), vec4<i32>(29358i, _wgslsmith_div_i32(0i, 30380i), 46619i, var_2.a)), func_5(reverseBits(vec4<i32>(u_input.e, 4654i, u_input.e, 2147483647i) ^ vec4<i32>(1i, 5007i, 2147483647i, -5974i)), Struct_1(_wgslsmith_add_i32(u_input.d, u_input.c), _wgslsmith_f_op_f32(-290f + var_0.b), 1u), Struct_2(min(vec2<i32>(1i, u_input.c), vec2<i32>(var_0.a, -18072i)))), Struct_2(vec2<i32>(_wgslsmith_mod_i32(var_2.a, -20704i), ~u_input.c))).b);
}

