struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = any(!vec2<bool>(!any(vec2<bool>(false, false)), true));
    let var_1 = Struct_4(47062u, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2341f, 1000f, 899f) + vec3<f32>(-1000f, -525f, -432f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1389f, 146f, 1774f) + vec3<f32>(-336f, 250f, -197f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-108f, 124f, -1855f), vec3<f32>(-252f, -908f, -1637f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1424f, -374f, 113f)))))), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(7454u, 4294967295u, 70282u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.b.x, 39333u) << (vec4<u32>(u_input.b.x, 1u, u_input.a, 24253u) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a, 39304u, u_input.b.x, 4294967295u) | vec4<u32>(u_input.a, u_input.b.x, 0u, 37394u))), u_input.a & max(1u, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1607f, -666f, 942f), vec3<f32>(-156f, -1321f, -800f), true))))), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(56508u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 37168u, all(vec3<bool>(var_0, true, true))), abs(0u) >> (_wgslsmith_div_u32(0u, 8360u ^ u_input.b.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1927f * 1039f) + 602f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1563f, -411f)) - -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(755f, 162f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-396f, _wgslsmith_f_op_f32(f32(-1f) * -1326f))) + 1f)), -vec4<i32>(u_input.c, u_input.c, _wgslsmith_div_i32(u_input.c, -45998i), u_input.c) ^ ~select(vec4<i32>(27755i, 0i, 2147483647i, u_input.c), vec4<i32>(53800i, u_input.c, u_input.c, u_input.c), vec4<bool>(true, true, var_0, var_0)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1092f)), _wgslsmith_div_f32(var_1.d.x, 899f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.b.a.x, var_1.c.a.x)), _wgslsmith_div_f32(-1677f, 1544f)))) - var_1.b.a), ~(~_wgslsmith_mult_u32(var_1.b.b, 1u) << (var_1.b.c % 32u)), 7342u);
    let var_3 = min(_wgslsmith_div_i32(abs(1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.e.x, var_1.e.x, -2966i, u_input.c), var_1.e)) & -_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(-1i, u_input.c)), -(u_input.c >> (3963u % 32u)));
    var_2 = var_1.b;
    return var_1.c.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_sub_u32(4294967295u, max(reverseBits(1u), u_input.a)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1220f), -509f, _wgslsmith_f_op_f32(-977f + -171f)), vec3<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, 345f), _wgslsmith_div_f32(arg_0.x, arg_0.x))), u_input.b.x | _wgslsmith_add_u32(~u_input.b.x, 4294967295u), 13875u), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 0u, ~u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1457f, arg_0.x) + vec4<f32>(arg_0.x, 1411f, arg_0.x, arg_0.x)) - vec4<f32>(480f, 647f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1604f, arg_0.x, arg_0.x, 369f) - vec4<f32>(1013f, 2577f, arg_0.x, -1000f))))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2488i, u_input.c, 35389i), vec3<i32>(u_input.c, u_input.c, -5502i)), _wgslsmith_mult_i32(arg_1, u_input.c), arg_1, 1i)), -select(abs(vec4<i32>(1i, u_input.c, u_input.c, 15016i)), abs(vec4<i32>(-1i, u_input.c, -1i, 5120i)), any(vec2<bool>(false, true)))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = firstLeadingBit(-6465i);
    let var_3 = !(true | !any(vec4<bool>(true, false, true, false)));
    var_2 = ~(-(1i & firstLeadingBit(16792i >> (u_input.b.x % 32u))));
    return Struct_4(var_0.a, var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.d)) + _wgslsmith_div_vec4_f32(vec4<f32>(-186f, var_0.c.a.x, -425f, var_0.b.a.x), var_0.d))), var_0.d)), ~(~(vec4<i32>(-1i) * -vec4<i32>(var_0.e.x, arg_1, var_0.e.x, u_input.c))));
}

fn func_1() -> u32 {
    var var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(-1942i, u_input.c, u_input.c, 45739i)) ^ _wgslsmith_sub_i32(2147483647i, i32(-1i) * -1i), -_wgslsmith_mult_i32(u_input.c, u_input.c));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, -470f) + vec2<f32>(396f, 239f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1490f, -2238f)))), vec2<f32>(1368f, -1548f), true)), _wgslsmith_dot_vec4_i32(-vec4<i32>(~(-63552i), -u_input.c, _wgslsmith_sub_i32(u_input.c, var_0.x), -2147483647i), ~(vec4<i32>(u_input.c, 2147483647i, var_0.x, u_input.c) & min(vec4<i32>(var_0.x, var_0.x, -1i, u_input.c), vec4<i32>(0i, 23076i, -1i, u_input.c)))));
    var var_2 = ((true != any(vec3<bool>(true, true, true))) | (((var_1.b.c << (23634u % 32u)) << (38075u % 32u)) <= var_1.a)) | all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), any(vec4<bool>(true, true, true, true))));
    var var_3 = min(var_0.x | firstLeadingBit(var_0.x), _wgslsmith_dot_vec3_i32(select(var_1.e.xwz, select(vec3<i32>(-2147483647i, -5154i, var_1.e.x), var_1.e.xww, false), vec3<bool>(true, true, true)), abs(vec3<i32>(u_input.c & u_input.c, ~var_0.x, -2147483647i))));
    var var_4 = u_input.b.x;
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = (_wgslsmith_div_u32(countOneBits(0u), 4294967295u) & firstTrailingBit(2454u)) & (~abs(~1u) >> (arg_0 % 32u));
    let var_1 = 955f;
    var var_2 = countOneBits(arg_1.yxx << ((vec3<u32>(34578u, select(1579u, 37597u, arg_3), abs(u_input.b.x)) >> (~vec3<u32>(0u, 1u, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_2 = -vec3<i32>(_wgslsmith_mod_i32(arg_1.x, 2147483647i), -19812i ^ _wgslsmith_sub_i32(~2147483647i, arg_1.x), u_input.c);
    let var_3 = reverseBits(~min(~vec4<i32>(-1i, 8232i, 0i, var_2.x), arg_1) | arg_1);
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1326f, 1399f)) * arg_2), _wgslsmith_f_op_f32(-var_1))), ~vec2<u32>(4294967295u & arg_0, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(11517u, u_input.a) ^ vec2<u32>(u_input.a, 7134u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1356f, -917f, 1295f), vec3<f32>(733f, 516f, 1000f)) - vec3<f32>(-1000f, 689f, var_1))), u_input.a, 1u), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, arg_2), -1104f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), firstTrailingBit(~(~vec4<i32>(u_input.c, u_input.c, -6083i, u_input.c))), 471f, false);
    let var_1 = Struct_3(u_input.a, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), func_2(var_0.c.a.zx, ~func_2(var_0.c.a.yx, -u_input.c).e.x).c);
    let var_2 = var_0.b;
    var var_3 = Struct_4(40751u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(294f, var_0.c.a.x, -665f), var_0.c.a)), select(var_0.b.x, abs(1u), true != (var_1.b.x | var_1.b.x)), var_1.c.c), var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), func_4(0u, vec4<i32>(u_input.c, u_input.c, -40961i, 1i), var_0.c.a.x, var_1.b.x).a, _wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(max(var_0.c.a.x, 545f))))) * func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1645f, var_0.c.a.x)), -max(1i, u_input.c)).d), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i) & ~vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(-1i, u_input.c, u_input.c) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, 32143i), vec3<i32>(u_input.c, -2147483647i, u_input.c))), u_input.c, ~(~_wgslsmith_mult_i32(26198i, u_input.c)), ~countOneBits(u_input.c & 3650i)));
    var_3 = func_2(_wgslsmith_f_op_vec2_f32(-func_4(func_4(reverseBits(84270u), countOneBits(var_3.e), -2465f, var_1.b.x).b.x, (vec4<i32>(var_3.e.x, var_3.e.x, u_input.c, var_3.e.x) & vec4<i32>(-3549i, var_3.e.x, var_3.e.x, 4512i)) ^ func_2(vec2<f32>(-571f, 1306f), 4545i).e, var_1.c.a.x, !(46541u >= var_3.c.b)).c.a.zz), var_3.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(777f, 686f, 1580f);
}

