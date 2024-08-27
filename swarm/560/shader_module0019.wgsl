struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(448f, -391f, 1219f) + vec3<f32>(-960f, -1123f, -1116f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, 254f, -312f) - vec3<f32>(1000f, 824f, -252f)), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1337f, 1516f, 242f), vec3<f32>(-445f, 678f, -401f))))))));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) + _wgslsmith_f_op_f32(-716f * -755f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-741f, -1383f)))), 818f, -828f));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-411f, var_0.x, 918f), vec3<f32>(398f, 851f, var_0.x)), _wgslsmith_f_op_vec3_f32(func_3())), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -2164f))));
    let var_1 = Struct_2(_wgslsmith_div_u32(u_input.a, ~(u_input.b ^ u_input.b)) >> (u_input.a % 32u), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(arg_0, arg_0)), min(vec2<i32>(arg_0, 31209i), vec2<i32>(18010i, arg_0))) & ((vec2<i32>(arg_0, 1i) >> (u_input.c.xx % vec2<u32>(32u))) & ~vec2<i32>(arg_0, arg_0)), u_input.c, ~(~(vec2<u32>(1u, u_input.c.x) >> (vec2<u32>(14218u, 40629u) % vec2<u32>(32u))))), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), ~u_input.b <= 115783u)), u_input.c.yz, Struct_1(vec2<i32>(1i, abs(2147483647i)), ~u_input.c, vec2<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, u_input.b), u_input.c), u_input.a), 1u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x)))) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -600f)))));
    var_2 = vec2<f32>(-524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.x))))));
    return select(select(!vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x), vec4<bool>(false, var_1.c.x, true, true), vec4<bool>(all(vec3<bool>(true, var_1.c.x, var_1.c.x)), any(vec4<bool>(var_1.c.x, false, var_1.c.x, true)) & any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), all(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false)), any(select(vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(true, var_1.c.x, true), var_1.c.x)))), vec4<bool>(true, true, true & (var_1.b.a.x >= var_1.b.a.x), true), select(!(!vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x)), !(!select(vec4<bool>(var_1.c.x, true, var_1.c.x, true), vec4<bool>(var_1.c.x, false, var_1.c.x, true), false)), !(var_1.c.x & !var_1.c.x)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = -2289f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1020f, 258f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(616f, 290f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-363f, -635f)))))), !(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))))));
    var_0 = -110f;
    let var_1 = _wgslsmith_mult_u32(u_input.b, 48263u);
    let var_2 = vec4<bool>(!(true || any(vec3<bool>(true, true, false))) || all(func_2(~(-1i))), (i32(-1i) * -2147483647i) > -(4583i ^ (0i << (var_1 % 32u))), !(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), true);
    return Struct_2(_wgslsmith_clamp_u32(_wgslsmith_div_u32(101575u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(1u, 1u, 4294967295u)), u_input.c)), 1u, 1u), Struct_1(select(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, 40170i)), reverseBits(~vec2<i32>(20150i, 2147483647i)), true), countOneBits(u_input.c), vec2<u32>(~(var_1 << (u_input.b % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 30310u, arg_0.x), vec4<u32>(var_1, 59800u, 4294967295u, 18961u) & vec4<u32>(var_1, 0u, var_1, arg_0.x)))), select(!var_2.zx, func_2(~(i32(-1i) * -1088i)).xw, false), ~(arg_0 >> (((vec2<u32>(arg_0.x, 13016u) | arg_0) ^ ~vec2<u32>(0u, 48941u)) % vec2<u32>(32u))), Struct_1(abs(vec2<i32>(-14295i, ~1i)), u_input.c, select(countOneBits(~u_input.c.xz), vec2<u32>(4294967295u >> (u_input.b % 32u), var_1 << (28790u % 32u)), !var_2.xy)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.a, (arg_0.e.a ^ arg_0.b.a) | abs(vec2<i32>(19017i, arg_2.b.a.x))), 2933i), vec3<u32>(4294967295u, arg_2.b.b.x, max(10425u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 4294967295u), vec2<u32>(arg_0.e.c.x, 40654u)))), ~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(arg_0.b.b.x, 13926u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, arg_2.a) | u_input.c.zx, u_input.c.xy, u_input.c.zx)));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = arg_2.b;
    var var_1 = Struct_2(~2734u, arg_2, !(!(!select(vec2<bool>(true, true), vec2<bool>(arg_1, true), vec2<bool>(true, false)))), ~_wgslsmith_clamp_vec2_u32(~arg_2.b.zz, func_1(u_input.c.xx ^ var_0.yy).d, ~u_input.c.zz), arg_2);
    let var_2 = func_2(-max(-abs(arg_2.a.x), -53860i)).xyx;
    var_1 = func_1(var_0.yz);
    var var_3 = func_1(abs((~vec2<u32>(1u, var_1.a) | var_1.d) | (~var_1.d | ~vec2<u32>(var_0.x, 0u))));
    return vec2<i32>(countOneBits(func_1(var_0.xx).b.a.x), 12777i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(_wgslsmith_f_op_f32(sign(-676f)), true, func_4(Struct_2(u_input.c.x >> (u_input.a % 32u), Struct_1(vec2<i32>(2147483647i, 2147483647i), u_input.c, u_input.c.zy), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<u32>(u_input.c.x, u_input.a), Struct_1(vec2<i32>(1i, -45935i), u_input.c, vec2<u32>(u_input.a, 42622u))), 1f, func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), u_input.c.xz, vec2<u32>(61653u, u_input.a))), vec2<i32>(-1i, 2147483647i) | (vec2<i32>(-74370i, -46620i) >> (u_input.c.zz % vec2<u32>(32u))))), ~func_4(func_1(_wgslsmith_div_vec2_u32(u_input.c.zz, vec2<u32>(0u, u_input.c.x))), -1660f, func_1(min(u_input.c.zx, vec2<u32>(961u, 3735u))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 1i), min(vec2<i32>(42457i, -1i), vec2<i32>(2147483647i, -51697i)))).b, u_input.c.zy);
    var_0 = func_4(func_1(vec2<u32>(u_input.a, u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_div_f32(364f, _wgslsmith_f_op_f32(round(-1451f))))) + _wgslsmith_f_op_f32(1f * 1425f)), func_1(_wgslsmith_div_vec2_u32(u_input.c.zx, vec2<u32>(u_input.d, var_0.c.x ^ var_0.b.x))), _wgslsmith_add_vec2_i32(var_0.a, ~(-var_0.a ^ abs(var_0.a))));
    var var_1 = vec2<u32>(~_wgslsmith_div_u32(func_4(Struct_2(var_0.c.x, Struct_1(vec2<i32>(-13820i, -2147483647i), var_0.b, vec2<u32>(1u, var_0.c.x)), vec2<bool>(false, false), u_input.c.yz, Struct_1(var_0.a, vec3<u32>(var_0.b.x, 0u, u_input.c.x), vec2<u32>(u_input.c.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1040f), Struct_2(var_0.b.x, Struct_1(vec2<i32>(-2147483647i, var_0.a.x), vec3<u32>(4294967295u, 32584u, var_0.c.x), var_0.b.yy), vec2<bool>(true, false), vec2<u32>(4318u, var_0.b.x), Struct_1(vec2<i32>(-1i, 57427i), var_0.b, var_0.c)), ~var_0.a).c.x, 0u), ~1u);
    var var_2 = !vec3<bool>(func_1(vec2<u32>(1u, 0u)).c.x, any(vec3<bool>(true, true, true)), !func_2(select(1i, var_0.a.x, false)).x);
    var_0 = func_4(Struct_2(var_0.b.x, Struct_1(vec2<i32>(35660i, ~var_0.a.x), ~countOneBits(vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(min(var_0.c, u_input.c.xx), select(vec2<u32>(1u, 4294967295u), u_input.c.yy, vec2<bool>(var_2.x, false)), u_input.c.xx)), var_2.yy, u_input.c.zz, Struct_1(~_wgslsmith_mod_vec2_i32(var_0.a, vec2<i32>(1i, -20170i)), ~vec3<u32>(var_1.x, var_0.c.x, 20800u), _wgslsmith_div_vec2_u32(var_0.c, vec2<u32>(var_1.x, var_1.x)) & (vec2<u32>(46416u, 21232u) >> (u_input.c.zz % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-340f - 682f), Struct_2(57870u, func_4(func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 72494u), vec2<u32>(47719u, 9500u))), _wgslsmith_f_op_f32(trunc(-261f)), func_1(var_0.b.xx), -(~var_0.a)), var_2.zx, func_4(func_1(vec2<u32>(1u, var_0.b.x)), _wgslsmith_f_op_f32(min(-810f, -1477f)), func_1(var_0.b.zy), vec2<i32>(33322i, var_0.a.x >> (28384u % 32u))).b.yy, func_4(Struct_2(var_0.b.x, func_1(var_0.c).e, func_1(u_input.c.zx).c, _wgslsmith_div_vec2_u32(vec2<u32>(76725u, var_0.c.x), vec2<u32>(1u, var_0.b.x)), Struct_1(var_0.a, u_input.c, vec2<u32>(1u, 61702u))), _wgslsmith_f_op_f32(f32(-1f) * -1113f), Struct_2(_wgslsmith_mult_u32(var_1.x, 1u), func_4(Struct_2(52441u, Struct_1(var_0.a, u_input.c, var_0.c), var_2.yy, vec2<u32>(0u, var_0.c.x), Struct_1(vec2<i32>(var_0.a.x, 13383i), vec3<u32>(var_0.b.x, var_1.x, u_input.c.x), u_input.c.xx)), -981f, Struct_2(5876u, Struct_1(var_0.a, u_input.c, vec2<u32>(u_input.a, u_input.c.x)), vec2<bool>(true, true), var_0.b.yz, Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), var_0.b, u_input.c.yx)), vec2<i32>(1i, -43234i)), var_2.zy, vec2<u32>(var_0.c.x, 65577u), Struct_1(vec2<i32>(3088i, 0i), var_0.b, vec2<u32>(41494u, var_0.b.x))), -var_0.a)), vec2<i32>(1i, 18298i) & _wgslsmith_sub_vec2_i32(vec2<i32>(~(-45295i), _wgslsmith_div_i32(15784i, -2147483647i)), func_5(-194f, select(true, true, true), Struct_1(var_0.a, vec3<u32>(54487u, 4294967295u, 4294967295u), u_input.c.xx))));
    let var_3 = 1f;
    var_0 = Struct_1(select(-vec2<i32>(firstTrailingBit(var_0.a.x), var_0.a.x), vec2<i32>(firstTrailingBit(~0i), 10443i), !(!var_2.x)), ~vec3<u32>(var_0.c.x, 1u, 1u), ~select(vec2<u32>(u_input.a & var_0.c.x, 25364u), ~var_0.c, func_2(var_0.a.x).xw));
    var var_4 = true;
    var var_5 = max(~(-2147483647i), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(floor(var_3)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, var_3)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -268f))));
}

