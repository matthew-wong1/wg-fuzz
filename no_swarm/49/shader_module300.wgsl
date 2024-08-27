struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -600f), 107f, arg_0));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-269f, -188f))))), 36839u, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.c) >> (max(vec4<u32>(0u, 4295u, 114388u, 8649u), vec4<u32>(19320u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.c, 0i, 4039i), vec4<i32>(-1i, u_input.c, u_input.a, u_input.c)), vec4<i32>(18411i, 12814i, u_input.b, -46225i)))), ~firstLeadingBit(select(~vec4<u32>(4294967295u, 0u, 53617u, 47438u), _wgslsmith_clamp_vec4_u32(vec4<u32>(31733u, 2582u, 69222u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 4560u), vec4<u32>(98768u, 1u, 54314u, 44017u)), true)), Struct_1(~0u, _wgslsmith_add_u32(1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f + 962f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-593f)) - _wgslsmith_f_op_f32(select(810f, -1084f, true)))), vec4<bool>(true, true, !(arg_0 && true), !(!arg_0)), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.c.x, var_1.e.c.x, -1103f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.c.x, 946f, var_1.e.c.x))))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)), ~42712u, vec4<i32>(_wgslsmith_add_i32(-455i, abs(u_input.d.x)), -(-1i | var_1.c.x), var_1.c.x, -8251i) & ~(~var_1.c & vec4<i32>(var_1.c.x, -1i, 4090i, -2635i)), ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, var_1.b, var_1.e.b, 16299u), max(vec4<u32>(var_1.b, var_1.e.a, var_1.d.x, var_1.e.b), vec4<u32>(1u, 4294u, var_1.e.b, 0u))), var_1.d & vec4<u32>(var_1.d.x, 10512u, var_1.e.a, 1u), !(!var_1.e.d)), Struct_1(2634u, var_1.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.yy - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-459f, var_1.a), vec2<f32>(var_1.e.c.x, var_1.e.c.x), true))) * var_1.e.c), vec4<bool>(all(!vec3<bool>(var_1.e.e, arg_0, arg_0)), any(!vec3<bool>(arg_0, true, true)), arg_0, _wgslsmith_f_op_f32(abs(815f)) > var_1.a), var_1.e.d.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(max(-841f, _wgslsmith_f_op_f32(var_2.x - 1134f)))))));
    return var_1.e.d.yzx;
}

fn func_2() -> Struct_2 {
    var var_0 = any(!(!func_3(any(vec3<bool>(false, false, true)))));
    var var_1 = abs(abs(vec3<u32>(~abs(1u), 57853u, 40098u)));
    var_0 = all(vec4<bool>(-875f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1109f, -604f)))), true, all(vec2<bool>(true, true)), true));
    let var_2 = Struct_1(var_1.x, 4294967295u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(792f, -516f))), vec2<f32>(_wgslsmith_f_op_f32(round(-1901f)), _wgslsmith_f_op_f32(abs(1216f)))), vec2<f32>(1f, 1f), !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true))), select(select(vec4<bool>(true, u_input.c <= 2147483647i, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(!(var_1.x >= 45541u), true, (19915u <= var_1.x) & true, true)), false);
    var_1 = min(vec3<u32>(~var_1.x, ~4294967295u, ~32104u), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, 36098u, var_1.x)), vec3<u32>(21774u, var_1.x, 1u) ^ vec3<u32>(69448u, 16406u, var_1.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x, 23245u, var_2.b), firstTrailingBit(vec3<u32>(24876u, var_1.x, 9865u)))), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.a, 4294967295u, 81237u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 11814u, var_1.x), vec3<u32>(var_1.x, var_1.x, 2300u))) & _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_2.a, var_2.b, var_1.x)), vec3<u32>(76425u, var_2.b, 14881u) | vec3<u32>(var_2.a, 1u, var_2.a))));
    return Struct_2(var_2.c.x, 22919u, ~countOneBits(-vec4<i32>(u_input.d.x, u_input.a, 13956i, 36377i)), countOneBits(select((vec4<u32>(0u, var_2.b, var_2.b, var_2.b) | vec4<u32>(var_2.b, 1u, 38351u, var_2.a)) ^ max(vec4<u32>(3729u, 1u, var_2.b, var_1.x), vec4<u32>(var_1.x, 26562u, var_2.b, 1u)), abs(select(vec4<u32>(var_1.x, var_2.a, var_2.b, var_1.x), vec4<u32>(var_1.x, var_1.x, 0u, var_2.b), var_2.d)), var_2.d)), Struct_1(1u, var_1.x, _wgslsmith_f_op_vec2_f32(-var_2.c), select(!select(var_2.d, var_2.d, vec4<bool>(var_2.e, var_2.e, var_2.d.x, var_2.d.x)), select(select(vec4<bool>(true, false, var_2.d.x, true), var_2.d, var_2.d), !var_2.d, var_2.d), true), any(vec2<bool>(false, false))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = select(u_input.d, (-vec2<i32>(arg_1.c.x, arg_1.c.x) | vec2<i32>(8479i, arg_3.c.x)) | (min(vec2<i32>(-2147483647i, 0i), vec2<i32>(-1i, arg_1.c.x) | vec2<i32>(arg_3.c.x, -95714i)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(arg_1.d, arg_1.d), 1038u) % vec2<u32>(32u))), vec2<bool>(all(vec3<bool>(arg_0.x < -232f, any(arg_3.e.d.yz), all(arg_2.d.wzy))), !arg_3.e.e && func_2().e.e));
    var var_1 = vec4<i32>(0i, func_2().c.x, -1i, countOneBits(((-30976i ^ u_input.d.x) & _wgslsmith_clamp_i32(u_input.c, var_0.x, arg_3.c.x)) >> (40534u % 32u)));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -(~1i), max(-48972i, arg_1.c.x)), 15003i, 2147483647i);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, 691f) * 908f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x))))), 37175u << (1u % 32u), arg_1.c, ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_1.e.a, 86225u), vec4<u32>(10347u, arg_3.b, arg_2.b, 1u), vec4<u32>(arg_3.b, arg_2.b, arg_1.e.b, arg_1.d.x)) & arg_3.d, arg_1.d), Struct_1(_wgslsmith_dot_vec3_u32(arg_1.d.xzz, arg_3.d.xyz), arg_1.e.a, _wgslsmith_f_op_vec2_f32(arg_3.e.c + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1249f, arg_2.c.x), arg_3.e.c) + arg_0)), select(vec4<bool>(659u < arg_1.d.x, all(arg_1.e.d), any(arg_2.d.zyy), false | arg_2.d.x), vec4<bool>(arg_3.e.d.x, true, func_2().e.e, false), arg_3.e.d), (arg_2.d.x || (1u >= arg_3.e.a)) && arg_1.e.e));
    var_2 = firstTrailingBit(u_input.c);
    return 52071u;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(abs(~max(1u, 1u)), ~func_4(vec2<f32>(2299f, _wgslsmith_f_op_f32(-1174f + 1357f)), func_2(), func_2().e, func_2()), vec2<f32>(_wgslsmith_f_op_f32(-func_2().e.c.x), _wgslsmith_div_f32(149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1334f) + func_2().e.c.x))), select(select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)), true, u_input.d.x == -1i), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), select(!func_2().e.d, vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), true);
    var var_1 = func_2().e;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.x, 181f, -476f), vec3<f32>(var_0.c.x, var_1.c.x, -1252f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-215f, 914f, -135f), vec3<f32>(var_1.c.x, var_1.c.x, var_0.c.x), false))), vec3<f32>(390f, _wgslsmith_f_op_f32(abs(-646f)), _wgslsmith_f_op_f32(-var_1.c.x))))), vec3<f32>(698f, _wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x)))))));
    var_0 = Struct_1(4294967295u ^ _wgslsmith_mult_u32((var_1.a & 4294967295u) & (var_1.b | 5439u), var_0.b), abs(var_1.b), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), func_2().e.d, false);
    return vec4<bool>(var_0.d.x, true, func_3(any(!(!vec4<bool>(var_0.d.x, true, false, var_0.e)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1368f))))));
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1464f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.c.x, 1f));
    var_0 = vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x))), -595f);
    var var_1 = var_0.x;
    var_0 = vec3<f32>(var_0.x, -319f, _wgslsmith_f_op_f32(exp2(func_2().e.c.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1249f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1112f))))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.c.x, -562f))))), vec3<f32>(2266f, _wgslsmith_f_op_f32(var_0.x - arg_0.c.x), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(865f - _wgslsmith_f_op_f32(-247f + 933f)), -782f, -1473f))));
    let var_1 = vec2<bool>(true, true);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(~18411u, _wgslsmith_clamp_u32(4294967295u, 83077u, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -759f) - vec2<f32>(var_0.x, var_0.x)), func_1(), true)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x));
    let var_2 = ~vec3<u32>(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(51196u, 4294967295u), vec2<u32>(1u, 4294967295u), true), vec2<u32>(15295u, 24390u)), 1u, _wgslsmith_sub_u32(1u, 1u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-572f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2460f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(365f - -924f), _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = vec3<f32>(216f, -114f, -774f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(-21577i, u_input.d.x, 53851i)), -52606i) & _wgslsmith_add_i32(u_input.d.x, ~u_input.a), select(2147483647i, 17682i, var_1.x)), _wgslsmith_f_op_f32(exp2(var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-894f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, -1249f))) + var_3.xz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.wx) + _wgslsmith_f_op_vec2_f32(-var_3.yy)))), -u_input.d);
}

