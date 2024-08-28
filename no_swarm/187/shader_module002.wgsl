struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = min(_wgslsmith_clamp_u32(~(~121873u) << (_wgslsmith_mult_u32(abs(1u), 1u) % 32u), max(_wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(0u, 0u, 25359u)), 1u), 4294967295u), 6164u);
    var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(4066u, 1u, select(41992u, 66015u, true)), firstLeadingBit(vec3<u32>(7136u, 4294967295u, 0u))) | _wgslsmith_clamp_u32(26852u, ~4294967295u, 0u);
    var var_1 = Struct_1(true, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 63735u), vec2<u32>(0u, 40830u), vec2<bool>(true, true)), vec2<u32>(1u, 4294967295u)), vec2<u32>(45079u, 4294967295u), vec2<u32>(31337u, reverseBits(39123u))), vec4<f32>(991f, -666f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-845f, -368f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f * -420f)))), _wgslsmith_div_vec2_i32(arg_0, max(arg_0, arg_0)), ~(_wgslsmith_mod_u32(5233u, firstLeadingBit(0u)) << (1u % 32u)));
    var var_2 = Struct_1(var_1.a, vec2<u32>(_wgslsmith_div_u32(var_1.b.x, select(30823u << (1u % 32u), 4294967295u, !var_1.a)), abs(~9066u)), var_1.c, ~(~(var_1.d >> (var_1.b % vec2<u32>(32u))) >> (~var_1.b % vec2<u32>(32u))), firstTrailingBit(~var_1.b.x));
    let var_3 = Struct_1(!var_1.a, select(abs(min(vec2<u32>(0u, var_2.b.x), vec2<u32>(10638u, 71373u))), ~abs(var_1.b), !vec2<bool>(true, var_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_2.c.x, var_2.c.x, var_1.c.x)) * _wgslsmith_f_op_vec4_f32(abs(var_1.c))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.c * var_1.c))))), reverseBits(var_2.d), 30250u);
    return vec3<bool>(true, true, !(!(true || var_1.a) || any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, -405f, -1526f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 340f) - -492f);
    let var_3 = select(!func_3(reverseBits(countOneBits(vec2<i32>(u_input.a, 32896i)))), func_3(vec2<i32>(u_input.a, -u_input.a ^ _wgslsmith_clamp_i32(u_input.a, -1i, u_input.a))), true);
    var var_4 = Struct_1(all(var_3.zx), ~vec2<u32>(~firstTrailingBit(4294967295u), ~abs(2441u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2), -880f, -539f)), vec2<i32>(firstLeadingBit(u_input.a), -2147483647i), 30365u);
    return Struct_1(true, vec2<u32>(var_4.e, var_4.e), _wgslsmith_f_op_vec4_f32(step(var_4.c, _wgslsmith_f_op_vec4_f32(sign(var_4.c)))), var_4.d, ~(~(~_wgslsmith_mult_u32(49279u, 74794u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = func_2(arg_3.c.x);
    var var_1 = select(select(select(vec4<bool>(!arg_3.a, var_0.a, true, true), vec4<bool>(var_0.a, arg_3.a, !arg_3.a, arg_3.b.x > 29767u), vec4<bool>(true, !var_0.a, arg_3.a && true, true)), !select(vec4<bool>(true, arg_0.x, arg_0.x, false), select(vec4<bool>(false, arg_3.a, arg_0.x, false), vec4<bool>(false, arg_3.a, false, false), vec4<bool>(arg_3.a, false, false, arg_0.x)), vec4<bool>(true, true, true, arg_0.x)), false), select(select(!(!vec4<bool>(true, var_0.a, true, arg_0.x)), select(!vec4<bool>(true, arg_3.a, true, arg_0.x), vec4<bool>(true, false, false, var_0.a), arg_3.a), !(!vec4<bool>(var_0.a, false, true, false))), vec4<bool>(var_0.a, true | (true | arg_0.x), all(vec4<bool>(arg_3.a, var_0.a, var_0.a, false)), true), select(false || var_0.a, !select(var_0.a, true, var_0.a), arg_3.a)), !(!select(select(vec4<bool>(var_0.a, arg_0.x, false, arg_0.x), vec4<bool>(false, true, false, arg_3.a), vec4<bool>(var_0.a, arg_3.a, arg_3.a, false)), select(vec4<bool>(true, arg_0.x, arg_3.a, arg_0.x), vec4<bool>(false, var_0.a, var_0.a, false), var_0.a), false)));
    var var_2 = arg_1.x;
    let var_3 = var_1.yz;
    var var_4 = !(!vec3<bool>(all(vec4<bool>(arg_0.x, var_0.a, arg_0.x, var_1.x)), true, func_3(var_0.d).x));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1231f + _wgslsmith_f_op_f32(select(arg_3.c.x, _wgslsmith_f_op_f32(trunc(-410f)), 1i < u_input.a))), _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) * _wgslsmith_f_op_f32(arg_2.x - arg_2.x)))), var_0.c.x));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var var_0 = func_2(arg_1.x).c;
    let var_1 = arg_2.a && select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + arg_2.c.x) <= -563f, true, arg_2.a);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(350f))), _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_div_f32(1050f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, arg_1.x, var_0.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.x, 1237f, 1000f, -360f))))))));
    global0 = _wgslsmith_f_op_f32(step(303f, var_0.x));
    return arg_2;
}

fn func_6(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = 1u;
    var var_1 = arg_0;
    var_1 = Struct_1(!(!arg_0.a), var_1.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + var_1.c.x) * _wgslsmith_f_op_f32(-var_1.c.x))), 1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_div_f32(129f, -673f)))), _wgslsmith_f_op_vec3_f32(func_4(select(func_3(vec2<i32>(arg_0.d.x, 0i)), !vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(true, true, true)), ~_wgslsmith_div_vec4_u32(vec4<u32>(7789u, 0u, var_0, arg_0.e), vec4<u32>(4372u, 0u, 4294967295u, 67733u)), var_1.c.xxz, Struct_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 20980u), var_1.b), _wgslsmith_div_vec4_f32(vec4<f32>(-952f, arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.c), vec2<i32>(1i, var_1.d.x) >> (var_1.b % vec2<u32>(32u)), arg_0.e))).x), vec2<i32>(arg_0.d.x, var_1.d.x), firstLeadingBit(~5323u));
    var var_2 = -1456f != _wgslsmith_f_op_f32(-arg_0.c.x);
    var_1 = Struct_1(any(!select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, true), arg_0.a), select(vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, true, var_1.a), true), func_3(var_1.d))), var_1.b, _wgslsmith_f_op_vec4_f32(func_5(1i, vec3<f32>(-530f, _wgslsmith_f_op_f32(abs(var_1.c.x)), -1349f), func_5(_wgslsmith_mod_i32(0i, arg_0.d.x), func_5(48254i, vec3<f32>(arg_0.c.x, arg_0.c.x, 2717f), arg_0).c.yyz, func_5(68157i, vec3<f32>(-175f, arg_0.c.x, arg_0.c.x), arg_0))).c + _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(-arg_0.c)))), _wgslsmith_clamp_vec2_i32(select(firstLeadingBit(~vec2<i32>(20204i, -17100i)), -var_1.d << (reverseBits(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), func_3(firstLeadingBit(vec2<i32>(2147483647i, var_1.d.x))).xy), vec2<i32>(-_wgslsmith_mult_i32(arg_0.d.x, arg_0.d.x), arg_0.d.x), max(arg_0.d, _wgslsmith_div_vec2_i32(func_5(var_1.d.x, arg_0.c.wzw, arg_0).d, select(arg_0.d, var_1.d, arg_0.a)))), var_0);
    return var_1.c.www;
}

fn func_1() -> Struct_1 {
    var var_0 = -440f;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(361f, -482f, -795f)), vec3<f32>(177f, -552f, 175f), vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec3_f32(func_6(func_5(firstLeadingBit(u_input.a << (65562u % 32u)), _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(false, true, true), vec4<u32>(22607u, 25641u, 1u, 78828u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2621f, -680f, 669f))), func_2(-1263f))), func_2(368f)))), all(select(vec4<bool>(all(vec2<bool>(false, true)), func_2(314f).a, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(vec2<i32>(-8840i, 0i)).x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true))))));
    var var_2 = Struct_1(true, min(~min(~vec2<u32>(0u, 4294967295u), vec2<u32>(59440u, 0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(30988u, 68145u, 4453u, 1u), vec4<u32>(4294967295u, 7162u, 1u, 0u)), _wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(28439u, 26262u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -1244f, var_1.x, var_1.x))))))), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(firstLeadingBit(vec2<i32>(-16464i, u_input.a))), vec2<i32>(u_input.a, firstLeadingBit(55947i))), 1i), 0u);
    var var_3 = ~(~(~vec4<u32>(78393u | var_2.e, var_2.b.x, var_2.e, _wgslsmith_add_u32(20208u, var_2.b.x))));
    var_3 = vec4<u32>(~var_3.x, ~max(~var_2.b.x << (~2247u % 32u), min(var_2.b.x, _wgslsmith_clamp_u32(47052u, 4294967295u, 6486u))), var_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_2.b.x), _wgslsmith_mult_u32(var_3.x, 1u) & _wgslsmith_mult_u32(var_2.e, 4294967295u)), reverseBits(var_2.b)));
    return Struct_1(var_2.a, _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(var_2.e, var_3.x)), var_3.yw) | ~_wgslsmith_sub_vec2_u32(var_2.b | vec2<u32>(8268u, var_2.b.x), abs(vec2<u32>(4008u, 1u))), _wgslsmith_f_op_vec4_f32(var_2.c * vec4<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(var_2.c.x))), 861f, 2305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(761f)) - -1055f))), vec2<i32>(~(-29550i), ~1i), var_2.b.x);
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f - -494f));
    var var_0 = func_1();
    var var_1 = Struct_1(arg_1, reverseBits(~select(~vec2<u32>(79098u, 1u), func_2(arg_0.c.x).b, all(vec3<bool>(arg_2.a, false, true)))), func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-arg_3, -vec3<i32>(-56057i, 2147483647i, 8277i)), (vec3<i32>(u_input.a, var_0.d.x, arg_3.x) & vec3<i32>(-1i, 0i, -2147483647i)) & ~vec3<i32>(arg_0.d.x, -2147483647i, arg_3.x)), var_0.c.xyw, Struct_1(false, vec2<u32>(~arg_2.e, min(4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(var_0.c)))), var_0.d, _wgslsmith_clamp_u32(~arg_2.e, ~arg_2.e, arg_2.b.x & arg_0.e))).c, -var_0.d, 4294967295u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(min(161f, var_0.c.x))))) + _wgslsmith_f_op_f32(-func_5(abs(arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1401f, 2314f, -839f) + arg_2.c.zzx) * var_1.c.zxw), func_2(_wgslsmith_f_op_f32(arg_0.c.x - 1000f))).c.x));
    var_0 = Struct_1((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -21781i, 1i, var_1.d.x) | vec4<i32>(60076i, 2147483647i, 8498i, u_input.a), abs(vec4<i32>(-32230i, arg_3.x, var_0.d.x, -86323i))) <= -arg_2.d.x) | all(!select(vec4<bool>(arg_0.a, true, true, false), vec4<bool>(arg_2.a, true, true, arg_0.a), vec4<bool>(false, arg_1, false, true))), arg_0.b, func_1().c, arg_2.d, 4294967295u);
    return Struct_1(true, var_1.b, vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), 785f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2342f - _wgslsmith_f_op_f32(-var_0.c.x)), arg_0.c.x)), _wgslsmith_f_op_f32(select(-256f, _wgslsmith_f_op_f32(f32(-1f) * -406f), reverseBits(arg_3.x) < (u_input.a << (35176u % 32u))))), reverseBits(vec2<i32>(countOneBits(var_0.d.x), _wgslsmith_mod_i32(u_input.a, -arg_0.d.x))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1433f - 1390f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-168f)), -1198f))));
    var var_0 = func_7(func_1(), false, func_2(_wgslsmith_f_op_f32(f32(-1f) * -356f)), firstLeadingBit(abs(select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(u_input.a, 14393i, 11368i), true))));
    var var_1 = func_7(func_5(-2147483647i, func_2(_wgslsmith_f_op_f32(round(-1000f))).c.wyw, Struct_1(!func_7(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, 30472u), var_0.a, Struct_1(false, var_0.b, vec4<f32>(var_0.c.x, 927f, var_0.c.x, var_0.c.x), var_0.d, var_0.b.x), vec3<i32>(u_input.a, 8360i, -40928i)).a, ~firstLeadingBit(vec2<u32>(6574u, var_0.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - vec4<f32>(-2395f, var_0.c.x, var_0.c.x, 475f)), select(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.d.x, var_0.d.x), var_0.d), var_0.d, true), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.b.x, 39103u), 34u))), var_0.a, func_5(func_2(_wgslsmith_f_op_vec3_f32(func_6(func_5(var_0.d.x, var_0.c.zxw, Struct_1(false, var_0.b, vec4<f32>(var_0.c.x, -241f, var_0.c.x, var_0.c.x), vec2<i32>(12986i, var_0.d.x), 0u)))).x).d.x, vec3<f32>(_wgslsmith_f_op_f32(select(-1661f, _wgslsmith_f_op_f32(f32(-1f) * -797f), true)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x)), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x + 874f))))), vec3<i32>(-var_0.d.x, var_0.d.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, 1i, u_input.a)) << (min(vec3<u32>(var_0.e, 1u, var_0.e), vec3<u32>(var_0.b.x, var_0.e, var_0.b.x)) % vec3<u32>(32u)), ~(~vec3<i32>(u_input.a, u_input.a, 20663i)))));
    var var_2 = _wgslsmith_clamp_i32(var_1.d.x, ~var_1.d.x, _wgslsmith_clamp_i32(i32(-1i) * -var_1.d.x, firstLeadingBit(max(2147483647i, var_1.d.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, u_input.a, var_0.d.x, 2147483647i) ^ vec4<i32>(var_0.d.x, 39711i, var_0.d.x, u_input.a), select(vec4<i32>(32429i, var_0.d.x, var_0.d.x, var_0.d.x), vec4<i32>(var_1.d.x, var_0.d.x, -1i, 22999i), vec4<bool>(true, var_1.a, var_0.a, false))))) & _wgslsmith_div_i32(func_5(var_1.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.ywz * vec3<f32>(229f, var_0.c.x, var_0.c.x))), Struct_1(!var_0.a, vec2<u32>(var_1.b.x, var_1.e), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, 1176f, var_0.c.x, var_0.c.x), var_1.c), _wgslsmith_clamp_vec2_i32(var_0.d, vec2<i32>(u_input.a, 47487i), var_1.d), var_0.b.x)).d.x, var_0.d.x);
    var var_3 = ~(~max(~(vec3<i32>(95917i, var_1.d.x, -1446i) ^ vec3<i32>(u_input.a, 2147483647i, 1i)), (vec3<i32>(var_1.d.x, 25712i, var_1.d.x) & vec3<i32>(var_1.d.x, u_input.a, u_input.a)) ^ vec3<i32>(var_1.d.x, 2147483647i, u_input.a)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1012f, _wgslsmith_div_f32(1399f, 181f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f), -222f))), var_1.c.x, false)));
    var_1 = Struct_1(false, ~(~countOneBits(~var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_0.c.x, var_0.c.x, var_0.c.x) + var_0.c) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, -1000f, var_1.c.x), vec4<f32>(299f, -1464f, 514f, var_0.c.x))))), vec2<i32>(var_0.d.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a, var_1.d.x)), func_5(_wgslsmith_mult_i32(4278i, u_input.a), var_1.c.yww, Struct_1(false, var_1.b, vec4<f32>(var_1.c.x, 2199f, -384f, 189f), vec2<i32>(var_1.d.x, u_input.a), var_1.e)).d)), 38291u);
    var var_4 = firstTrailingBit(select(-(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, -42283i, u_input.a, 38605i), vec4<i32>(1i, 40850i, u_input.a, 44867i)) >> (~vec4<u32>(var_1.b.x, var_1.b.x, var_1.e, var_0.e) % vec4<u32>(32u))), vec4<i32>(~_wgslsmith_dot_vec2_i32(var_3.zz, vec2<i32>(2147483647i, 17540i)), var_1.d.x, var_3.x, var_0.d.x), vec4<bool>(var_0.a, true, !select(true, var_0.a, var_1.a), all(vec2<bool>(true, var_1.a)))));
    let var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(2074f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), 349f, _wgslsmith_f_op_f32(-var_1.c.x)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.c), var_1.c)))));
}

