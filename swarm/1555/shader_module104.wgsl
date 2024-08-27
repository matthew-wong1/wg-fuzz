struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    var var_0 = u_input.a >> (0u % 32u);
    var_0 = ~abs(u_input.b);
    var var_1 = ~_wgslsmith_add_u32(reverseBits(1u | select(1u, 1u, false)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(4752u, 1u, 15706u))), ~1u));
    var var_2 = select(vec4<u32>(12369u, max(min(~1u, abs(36275u)), ~1u), ~1u, ~min(70217u, min(43933u, 8321u))), vec4<u32>(max(~7497u, ~21083u), 3077u, 1u, ~(~44333u)) << (reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 16836u, 4294967295u, 0u), vec4<u32>(36690u, 1u, 4294967295u, 37989u), vec4<u32>(21038u, 6204u, 44732u, 24201u))) % vec4<u32>(32u)), select(select(!vec4<bool>(true, arg_0, false, true), !select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, false, true, true), arg_0), true), !vec4<bool>(arg_0, true, select(arg_0, true, false), all(vec4<bool>(arg_0, true, arg_0, arg_0))), true));
    var var_3 = Struct_2(select(select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, true, true, arg_0), !arg_0), vec4<bool>(arg_0, false, false || arg_0, arg_0 | arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false))), vec4<bool>(!(!arg_0), any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0), arg_0)), arg_0, true), select(select(!vec4<bool>(arg_0, arg_0, false, false), select(vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, true)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(!vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, false, true, arg_0), vec4<bool>(true, false, true, arg_0)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), select(!vec4<bool>(arg_0, false, false, false), !vec4<bool>(arg_0, true, false, false), any(vec3<bool>(arg_0, false, false))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, 965f)) * -693f)), -306f, -(select(vec4<i32>(2147483647i, 29992i, -40936i, 35821i), vec4<i32>(u_input.b, 0i, -43787i, u_input.b), arg_0) << (max(vec4<u32>(0u, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 1u, 9985u)) % vec4<u32>(32u))), vec4<bool>(arg_0, ~17537i > _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -29213i), vec3<i32>(-2147483647i, 2147483647i, 1i)), true, true), ~4294967295u), vec4<i32>(u_input.a, firstTrailingBit(-2147483647i), -32730i, -3087i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1), arg_1));
    return abs(-2147483647i);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(floor(153f)), arg_0.b.e > (arg_0.b.e >> (var_0.e % 32u)))) + arg_0.d.x)));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(-25574i, _wgslsmith_mult_i32(arg_0.b.c.x, 2147483647i), ~_wgslsmith_add_i32(65325i, arg_2.x) | (-61135i ^ func_3(arg_0.a.x, var_0.a))), _wgslsmith_mult_vec3_i32(arg_0.b.c.yxy, vec3<i32>(countOneBits(u_input.a) >> (var_0.e % 32u), 0i, _wgslsmith_clamp_i32(abs(var_0.c.x), var_2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.c.x, 2147483647i, -6356i), arg_0.b.c)))));
    var var_4 = arg_0;
    return vec4<bool>(!any(select(!arg_0.b.d, !vec4<bool>(var_4.a.x, var_0.d.x, arg_1, arg_1), !arg_0.a.x)), all(var_4.b.d.zyy), false, false);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = ~firstTrailingBit(vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a) | 1i, -26739i, -(~(-2147483647i))));
    var_0 = vec3<i32>(57757i, _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(var_0.x, 7409i, 7001i) ^ vec3<i32>(-23499i, 2183i, 0i)), select(select(-vec3<i32>(658i, -3409i, var_0.x), -vec3<i32>(var_0.x, u_input.b, -6526i), vec3<bool>(arg_1.x, true, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -14230i, u_input.b), vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, 13659i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 0i, 0i), vec3<i32>(37226i, 0i, 2147483647i))), arg_1.x | arg_1.x)), min(-u_input.a, u_input.b));
    let var_1 = Struct_2(select(select(select(select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true), arg_1), !vec4<bool>(arg_1.x, true, false, true), true), arg_1, arg_1.x), !(!func_2(Struct_2(arg_1, Struct_1(1056f, 764f, vec4<i32>(25793i, -1i, -27241i, u_input.b), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), 4294967295u), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), arg_0), arg_1.x, var_0.zx)), arg_1.x), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f)))), -1641f, _wgslsmith_mod_vec4_i32(vec4<i32>(min(var_0.x, 22589i), -var_0.x, _wgslsmith_mult_i32(u_input.b, 2147483647i), u_input.b << (37587u % 32u)), select(countOneBits(vec4<i32>(23860i, 1i, 0i, u_input.b)), vec4<i32>(-24251i, u_input.a, u_input.b, 18108i) << (vec4<u32>(35774u, 24874u, 57426u, 4294967295u) % vec4<u32>(32u)), false)), arg_1, 1u), countOneBits(~(-(vec4<i32>(2147483647i, var_0.x, u_input.a, u_input.a) | vec4<i32>(u_input.a, var_0.x, 32529i, 30106i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0) * _wgslsmith_f_op_vec2_f32(-arg_0)));
    var_0 = var_1.b.c.zzw;
    var_0 = _wgslsmith_mod_vec3_i32(var_1.c.xwy, abs(-vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.c.yyx, var_1.b.c.wyw), var_0.x, _wgslsmith_div_i32(var_1.b.c.x, -37756i))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(trunc(arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-375f - -308f), -118f))), var_1.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) * 334f), _wgslsmith_f_op_f32(func_1(vec2<f32>(1315f, 913f), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-662f, 1462f), _wgslsmith_f_op_f32(sign(-1249f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x))))))), -184f, reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 46492i, -13235i, select(u_input.a, u_input.a, false)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a) ^ (vec4<i32>(1i, u_input.a, 8491i, 2147483647i) << (vec4<u32>(54084u, 1u, 0u, 4294967295u) % vec4<u32>(32u))))), vec4<bool>(true, _wgslsmith_f_op_f32(round(var_0.x)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x))), var_0.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1249f)) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_i32(~(-13025i), u_input.b) == 40082i), _wgslsmith_mod_u32(countOneBits(min(1u, 1u)), 1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) - -1191f), -1809f)));
    var var_3 = Struct_2(select(!var_1.d, !select(var_1.d, vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), vec4<bool>(true, var_1.d.x, true, false)), abs(-34183i) >= (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 14701i), var_1.c.yw) & countOneBits(var_1.c.x))), Struct_1(var_2.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mult_vec4_i32(-var_1.c, var_1.c), func_2(Struct_2(var_1.d, Struct_1(var_1.b, var_2.x, vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, 79583i), vec4<bool>(true, var_1.d.x, true, var_1.d.x), var_1.e), -var_1.c, var_2), all(var_1.d.yyy), var_1.c.yx), firstTrailingBit(var_1.e)), var_1.c, _wgslsmith_f_op_vec2_f32(-var_2));
    var var_4 = Struct_2(var_1.d, var_1, ~vec4<i32>(~u_input.b, 1i, abs(1i), 13142i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-2006f, 583f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(916f, -1250f)))))), vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_1.a)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-596f, var_4.d.x)) + _wgslsmith_f_op_vec2_f32(-var_2))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, 314f)), _wgslsmith_f_op_f32(-var_3.b.b));
    var_4 = Struct_2(!select(!(!var_3.a), !var_3.a, var_3.b.d.x & select(false, var_4.a.x, true)), var_3.b, -var_3.b.c, vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -149f)), !var_3.a)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1216f, 830f)))))));
    var var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_div_i32(1i, max(u_input.b, var_3.b.c.x)), 1i, i32(-1i) * -34434i)));
}

