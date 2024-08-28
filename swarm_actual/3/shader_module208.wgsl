struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(665f, -602f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2090f, -1441f))))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(all(vec2<bool>(true, false))))))));
    let var_1 = select(vec4<bool>(~(~u_input.b.x) <= _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 38937u, u_input.c.x, 17486u), vec4<u32>(0u, u_input.c.x, u_input.b.x, u_input.a)), u_input.b.x), all(vec2<bool>(-1420f > var_0.x, true)), (u_input.e != -66504i) && true, true), !vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), select(-u_input.e == 2147483647i, true != (u_input.a != 4294967295u), true), true));
    return ~(~countOneBits(u_input.d));
}

fn func_1() -> bool {
    let var_0 = vec2<u32>(max(u_input.a, func_2()), ~4294967295u);
    var var_1 = -704f;
    var var_2 = min(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(min(u_input.e, u_input.e), u_input.e & u_input.e), -(~2147483647i)), _wgslsmith_sub_i32(-u_input.e << (func_2() % 32u), abs(u_input.e << (40296u % 32u)))), ~(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, u_input.e), ~vec2<i32>(u_input.e, 36492i)) | (-vec2<i32>(80751i, u_input.e) | ~vec2<i32>(u_input.e, 0i))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1402f, _wgslsmith_f_op_f32(f32(-1f) * -1187f))));
    var_2 = ~vec2<i32>(countOneBits(-3223i), var_2.x) & ~(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, var_2.x) << (u_input.b.zw % vec2<u32>(32u)), vec2<i32>(u_input.e, u_input.e) & vec2<i32>(1i, 10354i)) << (vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.c.x), var_0)) % vec2<u32>(32u)));
    return false;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(-(abs(u_input.e) << (_wgslsmith_dot_vec2_u32(u_input.c, u_input.b.wx) % 32u)), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -996f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1020f, -881f)) * _wgslsmith_f_op_f32(select(arg_1.x, -1300f, false)))) - arg_1.x));
    var_0 = Struct_1(-22720i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(148f - arg_1.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1024f, 501f)) * 1000f))));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-520f, var_0.b))), -860f, any(vec4<bool>(false, arg_2.x, arg_2.x, true))))), _wgslsmith_f_op_f32(sign(-657f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1))))), Struct_1(~(_wgslsmith_add_i32(u_input.e, 14361i) | 0i), var_0.b), -9433i, min(select(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -1i, u_input.e, u_input.e), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 1i, u_input.e, 63099i), vec4<i32>(26563i, u_input.e, var_0.a, -1i))), arg_2.x), u_input.e >> (u_input.d % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(954f, _wgslsmith_f_op_f32(157f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) * 370f)))) * _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(~(~(u_input.c.x | u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, 379f) - vec2<f32>(-1000f, 306f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1275f, -463f) - vec2<f32>(1000f, -256f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1589f, 362f))), vec2<bool>(!select(false, true, true), func_1()))), 1852f, 626f);
    var var_1 = Struct_3(_wgslsmith_div_i32(-u_input.e, -max(67029i, u_input.e)), Struct_1(~(abs(0i) >> (~u_input.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(251f + -905f)))), !vec3<bool>(false, min(-44939i, u_input.e) < -259i, true), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-192f, 180f) * var_0.xy))))), Struct_1(u_input.e, var_0.x), select(-4011i, _wgslsmith_add_i32(u_input.e, _wgslsmith_div_i32(u_input.e, 54248i)), any(vec4<bool>(true, true, true, true))), abs(firstTrailingBit(u_input.e))));
    var_1 = Struct_3(~(~u_input.e), Struct_1(_wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(var_1.d.d, var_1.d.b.a, var_1.b.a, 36947i))), vec4<i32>(-10782i, var_1.b.a, u_input.e, u_input.e) & (vec4<i32>(25229i, -19285i, -34395i, 10100i) >> (vec4<u32>(u_input.a, 1u, u_input.c.x, u_input.d) % vec4<u32>(32u)))), var_1.b.b), vec3<bool>(var_1.c.x, var_1.c.x, true), var_1.d);
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b, 1000f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1777f, var_1.b.b, -1414f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, 589f, -1537f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, 718f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 247f, var_1.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b, -427f, var_0.x) * vec3<f32>(-834f, var_1.d.a.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b, 1061f, 1215f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_1.d.a.x, 1860f)))))), true));
    let var_2 = var_1.c.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_1.d.a.x, -1106f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.a.x, -880f, -1484f), vec3<f32>(var_1.d.b.b, var_0.x, var_1.b.b))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.d.a.x, 1217f)))))));
    let var_3 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(385f, _wgslsmith_f_op_f32(var_1.d.b.b + var_1.b.b), _wgslsmith_f_op_f32(sign(-448f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-273f, 1000f, 338f), vec3<f32>(1633f, -708f, var_0.x))), vec3<f32>(var_1.b.b, -939f, var_0.x), true))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(361f, var_0.x, 130f), vec3<f32>(343f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -475f, 2452f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-895f, 1000f, var_1.d.a.x))), select(var_1.c, select(var_1.c, vec3<bool>(false, false, true), true), true))))), var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(60209i, vec4<i32>(-_wgslsmith_clamp_i32(1i, 31118i, 1i), -2147483647i, var_1.a, 1i), _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.c.x, u_input.d) | select(u_input.b.wx, vec2<u32>(u_input.a, u_input.a), var_3)), u_input.c), _wgslsmith_mod_vec2_u32(~(vec2<u32>(19274u, u_input.a) >> (u_input.c % vec2<u32>(32u))), ~vec2<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), u_input.b.wx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.b + _wgslsmith_div_f32(-994f, 1000f)) * 290f));
}

