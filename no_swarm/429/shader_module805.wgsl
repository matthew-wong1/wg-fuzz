struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> vec2<f32> {
    let var_0 = firstTrailingBit((u_input.a ^ ~vec4<u32>(65534u, u_input.e.x, arg_0.x, 27276u)) << ((countOneBits(u_input.a) << ((select(vec4<u32>(arg_1, 1u, 1u, 89649u), arg_0, vec4<bool>(false, true, false, false)) & vec4<u32>(arg_0.x, 78778u, 120013u, arg_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1181f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -961f)))) - _wgslsmith_f_op_f32(sign(1262f))));
    let var_2 = Struct_4(all(select(vec2<bool>(true, true), vec2<bool>(false, false), firstTrailingBit(27529i) < _wgslsmith_clamp_i32(u_input.b.x, -1i, -2147483647i))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-611f, 1057f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-210f, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, -1126f))), select(select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, false), var_2.a), select(vec2<bool>(true, var_2.a), vec2<bool>(false, var_2.a), vec2<bool>(true, false)), all(vec3<bool>(var_2.a, var_2.a, var_2.a))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, -549f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(-1012f, var_1)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = Struct_2(min(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), -u_input.c.xz), -31721i), arg_0, select(vec3<bool>(any(vec2<bool>(true, true)), arg_1.x, arg_1.x), vec3<bool>(all(vec3<bool>(true, false, false)), arg_1.x, all(arg_1)), arg_1.x), Struct_1(reverseBits(_wgslsmith_sub_u32(1u, u_input.a.x)), u_input.b.x, u_input.e.x, u_input.a.x), _wgslsmith_f_op_f32(step(1920f, arg_0.x)));
    let var_1 = Struct_2(_wgslsmith_clamp_i32(-36012i, ~(-var_0.a) << (~u_input.a.x % 32u), ~(-u_input.c.x) ^ -11403i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(651f)), arg_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), -375f))), vec3<bool>(true, false, true || arg_1.x), Struct_1(_wgslsmith_sub_u32(var_0.d.a | _wgslsmith_mod_u32(1u, var_0.d.a), ~min(0u, u_input.e.x)), ~select(u_input.c.x, -11822i, var_0.c.x) << (u_input.a.x % 32u), _wgslsmith_mod_u32(var_0.d.d, abs(91629u)) ^ u_input.a.x, var_0.d.d), _wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = !(!(var_0.a == select(_wgslsmith_add_i32(28315i, u_input.b.x), -32281i, true)));
    let var_3 = Struct_5(vec3<f32>(_wgslsmith_div_f32(var_1.e, -1229f), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e), arg_0.x, false))), -27611i);
    let var_4 = var_0.e == -638f;
    return var_1.a;
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1201f), -746f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.e, 48340u, 50505u))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, _wgslsmith_f_op_f32(round(-102f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1273f, _wgslsmith_f_op_f32(max(-2678f, 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, -542f))))), vec3<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), all(vec2<bool>(false, false)))), any(vec4<bool>(true, true, true, true))), Struct_1(~u_input.a.x, (i32(-1i) * -10560i) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, arg_0)), vec2<u32>(59668u, 1u)) % 32u), 21151u, 1u), -651f);
    let var_1 = vec2<bool>(any(vec3<bool>(!var_0.c.x, select(var_0.c.x, 34819i <= u_input.b.x, all(vec4<bool>(var_0.c.x, false, false, false))), all(vec3<bool>(true, var_0.c.x, var_0.c.x)))), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.b.x) - vec4<f32>(2542f, var_0.b.x, var_0.e, -1343f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.e, 1665f, -479f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2037f, 1273f, var_0.e, 387f), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.e)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 556f, -660f, var_0.e))))))));
    let var_3 = Struct_4(!var_1.x);
    let var_4 = countOneBits(_wgslsmith_mult_vec2_u32(min(countOneBits(u_input.e.xy), ~u_input.a.xz), ~u_input.a.wx));
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_0.e) * var_2.x)), _wgslsmith_f_op_f32(var_2.x + 896f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-530f * var_0.b.x))), var_2.x))), abs(u_input.c.x));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(-func_2(countOneBits(max(126582u, 0u))).a.xx), arg_3, Struct_1(u_input.e.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_2.b, -90027i, u_input.c.x), u_input.b), vec4<i32>(arg_2.b, -2147483647i, u_input.c.x, -2147483647i)), i32(-1i) * -u_input.b.x, abs(firstLeadingBit(arg_2.b))), reverseBits(u_input.e.x), _wgslsmith_mod_u32(27996u, _wgslsmith_mult_u32(u_input.e.x, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-532f)) - _wgslsmith_f_op_f32(-arg_2.a.x)))));
    var var_1 = Struct_2(2147483647i, arg_2.a.zx, select(!select(select(vec3<bool>(var_0.c.x, arg_0, arg_3.x), arg_3, vec3<bool>(var_0.c.x, true, arg_0)), !var_0.c, false), !var_0.c, !vec3<bool>(any(vec4<bool>(arg_3.x, var_0.c.x, arg_3.x, arg_3.x)), arg_0, arg_0 | false)), Struct_1(4294967295u, -16934i, select(~(u_input.a.x ^ u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_clamp_u32(60966u, 4294967295u, var_0.d.a)), any(select(var_0.c.xz, var_0.c.xy, arg_3.x))), 1u), var_0.b.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-426f, var_0.e) + var_0.e);
    var var_3 = Struct_1(select(u_input.a.x, 4294967295u, var_0.c.x), -_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.b, arg_2.b), vec2<i32>(var_0.a, -19593i)), _wgslsmith_add_i32(1i, -2147483647i)), -1i), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(131u, 1u, 17491u, var_1.d.d), reverseBits(u_input.e))), 49270u);
    var_0 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.e, 375f), var_1.b, select(max(1u, 77005u), var_3.a, all(vec4<bool>(false, arg_3.x, var_1.c.x, arg_3.x))) >= _wgslsmith_mult_u32(1u, u_input.a.x))), select(var_0.c, select(select(vec3<bool>(true, true, true), !arg_3, true), select(select(vec3<bool>(false, true, arg_0), arg_3, arg_3.x), vec3<bool>(true, true, arg_0), var_1.d.c > u_input.e.x), !var_0.c), var_0.c.x), var_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-315f, arg_2.a.x)))))));
    return Struct_3(_wgslsmith_mult_u32(91437u, ~(~var_0.d.d)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(-9071i, 2147483647i) & ((i32(-1i) * -1232i) >> (u_input.a.x % 32u));
    var var_1 = func_5(true, arg_0.x, func_2(4294967295u), !vec3<bool>(_wgslsmith_f_op_vec2_f32(func_3(u_input.a, 4294967295u, 33515u)).x >= -1593f, true, true));
    var_1 = func_5(true, _wgslsmith_div_i32(u_input.d.x, ~arg_0.x), func_2(var_1.a), vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(761f, _wgslsmith_f_op_f32(-1450f + -683f))));
    var var_3 = Struct_1(var_1.a, ~_wgslsmith_mod_i32(26102i, _wgslsmith_mult_i32(func_2(var_1.a).b, arg_0.x)), 1u, var_1.a);
    return Struct_2(var_3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, -1139f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(485f, -1000f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_2(var_1.a).a.yz, vec2<f32>(-1402f, -1668f)) - vec2<f32>(-138f, _wgslsmith_f_op_f32(f32(-1f) * -375f)))), select(select(vec3<bool>(any(vec3<bool>(true, true, false)), true, 4294967295u != var_1.a), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), false), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), Struct_1(min(_wgslsmith_add_u32(_wgslsmith_mod_u32(42502u, 4294967295u), _wgslsmith_div_u32(u_input.e.x, u_input.e.x)), ~4294967295u), -_wgslsmith_add_i32(~arg_0.x, -30103i), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.a.x), vec4<u32>(var_3.a, 0u, var_3.d, 45559u)), ~u_input.a.x, ~var_3.d), var_1.a, ~4294967295u), _wgslsmith_add_u32(~select(0u, 28380u, true), ~(~u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -808f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(287f, 971f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1026f, var_0.e, var_0.e) * vec3<f32>(412f, -576f, var_0.b.x)), false))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(vec4<i32>(-13592i, 62704i, -52783i, var_0.d.b)).b.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), _wgslsmith_f_op_f32(-1749f * _wgslsmith_f_op_f32(var_0.e - _wgslsmith_div_f32(1046f, var_1.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(u_input.e, var_0.d.a, _wgslsmith_div_u32(_wgslsmith_mult_u32(func_5(false, 1i, Struct_5(vec3<f32>(var_1.x, var_2.x, -1000f), u_input.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x)).a, var_0.d.c) ^ ~46988u, ~var_0.d.a))).x;
    var var_4 = func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(~var_0.d.b >> (1u % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.wxy, vec3<i32>(var_0.d.b, var_0.d.b, u_input.d.x)), 1i >> (u_input.a.x % 32u)), countOneBits(u_input.d.x), ~_wgslsmith_sub_i32(var_0.a, -71335i)), u_input.b)).d;
    var var_5 = Struct_4(false);
    var var_6 = -11613i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(495f, var_0.e, 1287f, var_2.x), vec4<f32>(var_3, var_1.x, -187f, -912f), !vec4<bool>(var_0.c.x, false, false, false)))) + vec4<f32>(-276f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2.x, var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -907f)), -1102f)), abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(43280u, var_0.d.d), vec2<u32>(var_0.d.d, 0u))) & ~func_5(true, _wgslsmith_mult_i32(1i, var_4.b), func_2(u_input.e.x), select(var_0.c, var_0.c, false)).a);
}

