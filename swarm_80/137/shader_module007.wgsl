struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_2.wzy ^ reverseBits(select(arg_2.zzy, ~vec3<u32>(u_input.d, 1u, 4294967295u), arg_0.a.x) >> (reverseBits(reverseBits(vec3<u32>(arg_1, arg_1, arg_1))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.d.x)), 1024f)), 534f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_3.d, vec2<f32>(-433f, arg_3.d.x), all(vec2<bool>(true, true)))))))));
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(arg_0.b, -(~arg_0.b)), -_wgslsmith_dot_vec4_i32(arg_3.b << (vec4<u32>(60590u, var_0.x, arg_2.x, 1u) % vec4<u32>(32u)), arg_3.b) <= -u_input.e, 0u);
    var var_3 = var_0.x;
    var_3 = u_input.d;
    return abs(-select(_wgslsmith_clamp_i32(arg_0.b.x, reverseBits(var_2.a.x), -46748i | u_input.c), _wgslsmith_clamp_i32(-2147483647i, countOneBits(u_input.e), _wgslsmith_mult_i32(u_input.b, arg_0.b.x)), arg_0.a.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> i32 {
    let var_0 = min(1u, ~(~(~countOneBits(arg_0.e.c))));
    var var_1 = select(~_wgslsmith_sub_i32(1i | func_3(Struct_2(vec2<bool>(true, arg_2), arg_0.c.b, -10610i, vec2<f32>(arg_1.x, arg_0.c.d.x)), 57982u, vec4<u32>(76891u, var_0, var_0, var_0), arg_0.c), -55563i), -_wgslsmith_div_i32(-44202i ^ _wgslsmith_mult_i32(u_input.e, arg_0.e.a.x), 1i >> (var_0 % 32u)), all(!select(select(vec4<bool>(false, true, arg_2, false), vec4<bool>(arg_2, false, false, arg_0.c.a.x), arg_0.d), vec4<bool>(false, arg_0.c.a.x, true, arg_2), arg_0.e.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(471f - arg_0.a.x) + _wgslsmith_f_op_f32(arg_0.c.d.x * arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1034f)) + arg_1.x), -387f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-816f, arg_1.x, -1178f, -707f), vec4<f32>(arg_0.c.d.x, arg_0.c.d.x, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(473f, arg_0.c.d.x, arg_0.c.d.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, 1016f, -533f, arg_1.x))))), vec4<f32>(553f, _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-455f, arg_0.c.d.x) - _wgslsmith_f_op_f32(max(arg_0.c.d.x, -987f))))), arg_1.x), vec4<bool>(false, any(vec3<bool>(!arg_0.e.b, all(arg_0.c.a), arg_0.d || arg_2)), true, arg_2)));
    var_1 = abs(1i);
    var var_3 = arg_0.c;
    return _wgslsmith_div_i32(var_3.b.x, ~(-u_input.e));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(vec2<bool>(!(true != any(vec2<bool>(true, false))), true == (any(vec3<bool>(true, false, true)) & false)), select(vec4<i32>(u_input.a, ~0i, 30074i, _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.e, _wgslsmith_div_i32(-24799i, -1i))), vec4<i32>(select(countOneBits(-25864i), u_input.c, u_input.d > u_input.d), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(-3334i, -2147483647i, 2147483647i, u_input.e)), 47270i), 0i, ~u_input.a), true), _wgslsmith_add_i32(u_input.e, -func_2(Struct_3(vec3<f32>(297f, -124f, -1940f), Struct_1(vec4<i32>(u_input.c, -1i, 2147483647i, u_input.b), false, 1u), Struct_2(vec2<bool>(true, false), vec4<i32>(-14469i, u_input.a, 1i, u_input.e), 2945i, vec2<f32>(-1306f, -360f)), false, Struct_1(vec4<i32>(u_input.c, -1677i, u_input.c, u_input.a), true, 4294967295u)), vec2<f32>(479f, -1527f), true)) | (~u_input.e ^ -32634i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(755f, 310f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(319f, -1712f)), -1071f)))));
    let var_1 = 525f;
    var_0 = Struct_2(var_0.a, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-16001i, 0i, -1i, var_0.c) | vec4<i32>(var_0.c, var_0.c, var_0.c, -2147483647i), vec4<i32>(1i, 28552i, u_input.c, abs(u_input.b))), var_0.b), _wgslsmith_add_i32(u_input.e, _wgslsmith_add_i32(reverseBits(var_0.c), countOneBits(_wgslsmith_clamp_i32(79132i, var_0.b.x, 21323i)))), _wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1, var_1)), 2851f))));
    var_0 = Struct_2(!select(select(vec2<bool>(false, false), vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, true)), vec2<bool>(!var_0.a.x, var_0.a.x), select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, true), !vec2<bool>(var_0.a.x, var_0.a.x))), _wgslsmith_mult_vec4_i32(-(~(var_0.b ^ vec4<i32>(u_input.b, u_input.e, -1i, var_0.c))), var_0.b), _wgslsmith_add_i32(var_0.b.x, _wgslsmith_div_i32(var_0.b.x, u_input.e) ^ (0i & _wgslsmith_sub_i32(var_0.b.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.x), var_1)), var_0.d.x)));
    var var_2 = 4294967295u;
    return Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.d.x, -639f)), var_1, _wgslsmith_f_op_f32(min(822f, _wgslsmith_f_op_f32(-var_1)))))), Struct_1(var_0.b, select(!any(vec4<bool>(true, false, true, var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -744f) >= var_0.d.x), firstTrailingBit(19962u)), Struct_2(var_0.a, countOneBits(var_0.b), var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))), var_0.a.x, Struct_1(_wgslsmith_div_vec4_i32(~var_0.b, vec4<i32>(max(var_0.c, var_0.c), var_0.b.x, firstLeadingBit(u_input.b), reverseBits(-7023i))), true, u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1065f, var_1.c.d.x, var_1.a.x, -2666f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.c.d.x, -936f), vec4<bool>(var_1.b.b, false, false, true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, var_1.a.x, var_1.c.d.x, var_1.a.x))) * vec4<f32>(var_1.c.d.x, 309f, var_1.c.d.x, -278f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -1788f, var_1.a.x, var_1.c.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.d.x, -593f, var_1.a.x, var_1.a.x))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-890f, var_1.a.x, var_1.a.x, 1198f))));
    let var_3 = func_1();
    let var_4 = !select(vec4<bool>(var_0, all(select(vec2<bool>(var_3.c.a.x, true), var_1.c.a, true)), var_1.c.a.x, var_1.b.b), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -229f) >= _wgslsmith_f_op_f32(-var_3.c.d.x), true, false, !var_3.e.b), false);
    let var_5 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.e.c >> (103519u % 32u), ~firstTrailingBit(u_input.d)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 4294967295u), vec2<u32>(27850u, u_input.d), var_4.wz), max(vec2<u32>(32547u, 43255u), vec2<u32>(1u, 0u))) ^ ~vec2<u32>(var_1.b.c, var_3.b.c), ~(~abs(vec2<u32>(42632u, 36390u)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-827f - var_3.a.x), -2118f, _wgslsmith_f_op_f32(f32(-1f) * -2242f), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, 771f, 107f, -1982f)))))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(654f, var_3.c.d.x))), _wgslsmith_f_op_f32(max(-1375f, var_3.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - 262f))), var_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.a.x, 472f, var_3.c.d.x, 393f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-464f, var_1.a.x, var_3.a.x, var_2.x), vec4<f32>(1803f, var_3.c.d.x, -411f, var_3.a.x), var_4)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(785f, -2072f, var_3.c.d.x, -198f) - vec4<f32>(-108f, -501f, var_1.c.d.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1471f, var_1.a.x, 219f) * vec4<f32>(877f, -208f, var_1.a.x, 394f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(297f, reverseBits(vec3<u32>(0u, ~12434u, var_1.b.c) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 34680u, var_1.e.c), ~vec3<u32>(0u, var_1.b.c, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-569f, var_3.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-706f, var_2.x, true))), _wgslsmith_f_op_f32(var_2.x + -1931f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2100f, _wgslsmith_f_op_f32(-var_3.c.d.x), _wgslsmith_f_op_f32(floor(1000f)), var_3.c.d.x), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -1000f, 1000f, _wgslsmith_f_op_f32(-255f - var_3.a.x))))));
}

