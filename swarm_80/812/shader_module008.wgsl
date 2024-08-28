struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: bool) -> vec2<i32> {
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>((arg_0.a.d.x ^ arg_1.x) >> (~arg_0.b.b.x % 32u), u_input.e.x), arg_1) >> (~vec2<u32>(firstLeadingBit(arg_0.a.a), arg_0.a.a) % vec2<u32>(32u));
    var var_0 = select(select(select(vec2<bool>(any(vec2<bool>(true, true)), false), select(!vec2<bool>(arg_2, arg_0.a.e), !vec2<bool>(false, arg_0.a.e), true), select(!vec2<bool>(arg_0.a.b, arg_2), vec2<bool>(true, true), arg_0.a.b)), !(!select(vec2<bool>(false, false), vec2<bool>(arg_0.a.e, true), vec2<bool>(true, arg_0.a.e))), vec2<bool>(select(true, true, true), false)), vec2<bool>(true, !any(!vec3<bool>(arg_2, arg_2, false))), select(!vec2<bool>(any(vec3<bool>(arg_0.a.e, false, false)), !arg_2), vec2<bool>(arg_0.a.b, arg_2), false));
    let var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.c.x, var_1.a.c.x, -1761f), vec3<f32>(arg_0.a.c.x, arg_0.b.a, arg_0.a.c.x), var_0.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(199f, 1498f, var_1.a.c.x)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.a, var_1.a.c.x, 394f), _wgslsmith_f_op_vec3_f32(vec3<f32>(129f, -1171f, 402f) + vec3<f32>(var_1.b.a, -704f, 586f))), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.c.x)), 832f, _wgslsmith_f_op_f32(f32(-1f) * -1021f)))), var_1.a.e, arg_0.a, Struct_2(_wgslsmith_div_u32(var_1.b.b.x, 1u), countOneBits(var_1.a.a) < var_1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.a, 1024f))) * _wgslsmith_div_vec2_f32(vec2<f32>(356f, var_1.b.a), vec2<f32>(arg_0.a.c.x, var_1.a.c.x)))), vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(46193i, global0.x), u_input.d.xz), 1853i, -2147483647i ^ u_input.c) ^ arg_0.a.d, true));
    global0 = var_1.b.c;
    return _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(arg_1.x, -2147483647i), reverseBits(_wgslsmith_add_i32(arg_1.x, -9241i))), arg_1) >> ((arg_0.b.b.yy | reverseBits(reverseBits(arg_0.b.b.yz))) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_5 {
    let var_0 = 1u ^ (~4294967295u ^ ~firstLeadingBit(~arg_1.x));
    global0 = func_3(Struct_4(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(138f))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.wxx, vec3<u32>(arg_0.a, arg_0.a, 30560u)), var_0, arg_0.a, var_0), abs(u_input.d.zy))), firstLeadingBit(~reverseBits(vec2<i32>(17534i, global0.x))), arg_0.b);
    var var_1 = ~1u;
    var var_2 = 4294967295u;
    var var_3 = Struct_2(48948u, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.c, arg_0.c) * _wgslsmith_f_op_vec2_f32(-arg_0.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(arg_0.c * vec2<f32>(1186f, arg_0.c.x)))))), vec4<i32>(global0.x, u_input.e.x, _wgslsmith_mod_i32(-abs(-29326i), _wgslsmith_add_i32(-1i, func_3(Struct_4(arg_0, Struct_1(arg_0.c.x, arg_1, vec2<i32>(-4446i, 1i))), arg_0.d.wx, false).x)), -_wgslsmith_div_i32(-1i, -1i)), arg_0.b);
    return Struct_5(arg_0, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + var_3.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_3.c.x)), arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - _wgslsmith_f_op_f32(max(-139f, 625f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.c.x, -465f, var_3.c.x)))), select(!(!vec3<bool>(true, var_3.e, false)), !vec3<bool>(arg_0.e, true, false), !any(vec4<bool>(true, arg_0.e, var_3.e, true))))), _wgslsmith_mod_i32(18754i, -16105i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-415f - arg_0.c.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(220f))))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4078u, 3908u, 0u), arg_1) & vec4<u32>(var_0, 6132u, 35780u, arg_1.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, arg_1.x, var_0, 0u), vec4<u32>(arg_0.a, 51180u, 4294967295u, 4294967295u)), ~3067u, min(55373u, arg_0.a), 91176u)), reverseBits(firstTrailingBit(vec2<i32>(40774i, u_input.c)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), select(vec4<u32>(~var_0, _wgslsmith_mult_u32(var_0, 1u), ~4294967295u, arg_0.a), arg_1, vec4<bool>(true, true, true, true)), vec2<i32>(_wgslsmith_mod_i32(-7760i, _wgslsmith_mult_i32(-27959i, arg_0.d.x)), -1i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: Struct_5) -> Struct_2 {
    global0 = vec2<i32>(1i, -2147483647i);
    let var_0 = -108f;
    var var_1 = arg_3.a.c;
    return arg_3.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = 1u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(907f, -1555f, -457f), vec3<f32>(-1000f, -290f, arg_2.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(475f, -196f, arg_2.c.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 1231f, arg_2.c.x))))), !(!select(true, arg_2.b, true)), func_4(arg_2.d.zx, arg_0.ywy, func_2(func_4(func_3(Struct_4(Struct_2(arg_1, true, arg_2.c, arg_2.d, arg_2.b), Struct_1(-914f, vec4<u32>(var_0, arg_1, 31658u, var_0), vec2<i32>(u_input.c, -1i))), u_input.e, arg_2.b), !arg_0.zyz, func_2(arg_2, vec4<u32>(arg_1, var_0, 49860u, 4294967295u)), func_2(arg_2, vec4<u32>(9296u, arg_1, 0u, arg_2.a))), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_2.a, 0u, 0u, var_0), ~vec4<u32>(var_0, arg_2.a, 0u, var_0))), Struct_5(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, arg_2.c.x, 1237f))), 37740i, Struct_1(_wgslsmith_f_op_f32(ceil(715f)), func_2(arg_2, vec4<u32>(4294967295u, 1u, 4294967295u, 3719u)).d.b, vec2<i32>(u_input.d.x, global0.x) << (vec2<u32>(var_0, arg_1) % vec2<u32>(32u))), func_2(Struct_2(arg_1, arg_2.b, arg_2.c, arg_2.d, true), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, arg_1, arg_2.a, var_0), vec4<u32>(arg_1, arg_1, 3504u, 20953u))).e)), arg_2);
    var var_2 = vec3<u32>(arg_1, select(~(~var_0), firstLeadingBit(4294967295u | (4294967295u << (var_1.c.a % 32u))), true), firstTrailingBit(func_2(arg_2, countOneBits(max(vec4<u32>(110027u, 0u, 4294967295u, arg_2.a), vec4<u32>(1u, arg_1, 1u, arg_1)))).e.b.x));
    var_2 = (reverseBits(~(~vec3<u32>(var_2.x, 28382u, 67220u))) >> (reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, var_0, var_0), vec3<u32>(var_1.c.a, var_1.d.a, 1u))) % vec3<u32>(32u))) >> ((~_wgslsmith_add_vec3_u32(vec3<u32>(29409u, 25256u, var_0), vec3<u32>(var_0, var_1.d.a, var_0)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(24434u, _wgslsmith_mult_u32(8277u, 10596u), ~4294967295u), reverseBits(~vec3<u32>(0u, var_2.x, arg_2.a))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = arg_2.c;
    return Struct_4(arg_2, func_2(Struct_2(min(var_2.x, 0u), func_2(arg_2, vec4<u32>(var_2.x, var_0, 19590u, var_2.x) | vec4<u32>(1u, arg_2.a, 1u, 1u)).a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, -430f), arg_2.c))), -arg_2.d ^ var_1.d.d, var_1.d.e), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, arg_2.a, var_1.d.a, var_1.d.a), vec4<u32>(var_1.c.a, arg_2.a, 12034u, arg_1)) ^ min(vec4<u32>(arg_2.a, 4294967295u, 1u, 24992u), vec4<u32>(1u, var_1.c.a, arg_1, var_2.x)))).d);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    global0 = vec2<i32>(arg_3.c.d.x, arg_0.b.c.x);
    var var_0 = _wgslsmith_clamp_u32(~arg_3.d.a, select(29113u, arg_3.c.a, true), 34310u) >> (select(~4294967295u << (_wgslsmith_dot_vec3_u32(~arg_0.b.b.yzz, vec3<u32>(71127u, arg_3.d.a, arg_3.d.a)) % 32u), _wgslsmith_add_u32(func_4(-u_input.e, vec3<bool>(false, arg_0.a.e, arg_1.x), Struct_5(Struct_2(arg_0.a.a, true, arg_3.c.c, arg_0.a.d, arg_0.a.e), vec3<f32>(arg_3.a.x, arg_3.c.c.x, -1000f), 4150i, arg_0.b, Struct_1(-1942f, vec4<u32>(arg_0.b.b.x, 23787u, 42092u, 0u), vec2<i32>(11031i, arg_0.a.d.x))), Struct_5(arg_0.a, arg_3.a, 2147483647i, Struct_1(arg_2.x, vec4<u32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.a.a, arg_3.c.a), vec2<i32>(u_input.c, arg_0.b.c.x)), arg_0.b)).a, abs(_wgslsmith_dot_vec4_u32(arg_0.b.b, arg_0.b.b))), 33866u >= func_5(!vec4<bool>(true, arg_0.a.b, true, arg_3.b), _wgslsmith_mult_u32(arg_0.a.a, 10299u), Struct_2(arg_0.a.a, true, vec2<f32>(arg_0.a.c.x, -2387f), vec4<i32>(8864i, -1i, arg_3.d.d.x, global0.x), true)).b.b.x) % 32u);
    let var_1 = Struct_2(4294967295u, any(vec4<bool>(func_5(!vec4<bool>(arg_0.a.e, arg_0.a.e, false, arg_1.x), arg_3.d.a, func_4(vec2<i32>(arg_0.b.c.x, global0.x), vec3<bool>(false, arg_3.b, arg_1.x), Struct_5(arg_0.a, arg_3.a, arg_3.c.d.x, Struct_1(arg_3.a.x, vec4<u32>(0u, arg_3.c.a, 33423u, 0u), u_input.d.xy), Struct_1(-1329f, vec4<u32>(0u, arg_0.b.b.x, arg_3.d.a, arg_0.a.a), arg_3.d.d.yy)), Struct_5(Struct_2(arg_0.a.a, arg_3.b, arg_2, vec4<i32>(arg_0.a.d.x, 1i, u_input.e.x, arg_3.c.d.x), arg_3.c.b), arg_3.a, 2147483647i, arg_0.b, arg_0.b))).a.e, all(vec4<bool>(arg_3.c.b, arg_3.d.e, arg_0.a.b, arg_0.a.e)) && arg_0.a.e, any(select(vec2<bool>(false, true), arg_1, false)), false)), arg_0.a.c, arg_0.a.d, true);
    var var_2 = vec2<u32>(1u & ~_wgslsmith_sub_u32(countOneBits(var_1.a), var_1.a), 0u);
    var var_3 = firstLeadingBit(39223u);
    return var_1;
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1008f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1023f, -698f)))), _wgslsmith_f_op_f32(-290f * -298f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-992f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(756f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1992f * var_0.x) * 352f);
    global0 = u_input.d.yy;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2455f, 1425f) + var_0.yzx)))), true, func_6(func_5(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23574u, 49178u, 1u), vec4<u32>(1u, 46159u, 1u, 1u)), func_4(-vec2<i32>(0i, global0.x), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), Struct_5(Struct_2(78117u, true, vec2<f32>(var_0.x, -660f), vec4<i32>(-38554i, u_input.a, u_input.d.x, 20624i), true), vec3<f32>(1028f, var_0.x, var_1), u_input.e.x, Struct_1(-446f, vec4<u32>(0u, 37219u, 4294967295u, 1u), vec2<i32>(global0.x, global0.x)), Struct_1(var_0.x, vec4<u32>(4294967295u, 13422u, 4294967295u, 4294967295u), vec2<i32>(u_input.b, 14899i))), func_2(Struct_2(27859u, true, var_0.xy, vec4<i32>(u_input.e.x, 1i, u_input.a, u_input.e.x), false), vec4<u32>(94141u, 4294967295u, 2854u, 11843u)))), vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1))))), Struct_3(var_0.xwy, func_5(vec4<bool>(true, true, true, true), 20164u, func_2(Struct_2(5322u, true, vec2<f32>(148f, 1054f), vec4<i32>(u_input.a, u_input.a, -35915i, -1i), false), vec4<u32>(4951u, 41217u, 12442u, 1u)).a).a.b, func_5(vec4<bool>(true, false, true, true), 1u, Struct_2(480u, false, vec2<f32>(-439f, var_0.x), vec4<i32>(395i, 2147483647i, global0.x, 21955i), false)).a, func_4(-vec2<i32>(u_input.e.x, 7925i), vec3<bool>(true, true, true), Struct_5(Struct_2(24015u, false, var_0.xx, vec4<i32>(global0.x, global0.x, -23413i, u_input.e.x), true), vec3<f32>(-145f, var_1, 871f), u_input.a, Struct_1(var_1, vec4<u32>(1u, 818u, 4294967295u, 4294967295u), u_input.e), Struct_1(var_1, vec4<u32>(36171u, 80357u, 72336u, 95152u), vec2<i32>(2147483647i, global0.x))), Struct_5(Struct_2(32638u, true, var_0.zw, vec4<i32>(u_input.a, global0.x, u_input.d.x, 2147483647i), true), var_0.yxx, 2147483647i, Struct_1(var_1, vec4<u32>(0u, 0u, 12782u, 55052u), u_input.d.yz), Struct_1(805f, vec4<u32>(0u, 22557u, 4294967295u, 16696u), u_input.d.yy))))), func_4(u_input.e, vec3<bool>(true, true, true), func_2(func_6(Struct_4(Struct_2(13147u, true, vec2<f32>(654f, 575f), vec4<i32>(global0.x, global0.x, global0.x, global0.x), true), Struct_1(var_1, vec4<u32>(58817u, 4294967295u, 57994u, 57303u), u_input.e)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1311f, -647f)), Struct_3(var_0.yzz, true, Struct_2(4294967295u, true, vec2<f32>(-501f, var_0.x), vec4<i32>(global0.x, 18185i, global0.x, global0.x), true), Struct_2(1u, false, var_0.yw, vec4<i32>(global0.x, 2147483647i, u_input.c, -2147483647i), true))), ~min(vec4<u32>(18873u, 1u, 15773u, 4294967295u), vec4<u32>(70157u, 1u, 4294967295u, 1u))), func_2(Struct_2(~1u, true, vec2<f32>(-694f, var_0.x), ~vec4<i32>(u_input.b, u_input.a, u_input.c, global0.x), true), _wgslsmith_div_vec4_u32(~vec4<u32>(15762u, 1u, 61081u, 4294967295u), vec4<u32>(36728u, 1u, 1u, 1u)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yzx)))), !(var_2.c.d.x > func_4(-vec2<i32>(0i, -1i), select(vec3<bool>(false, var_2.b, var_2.d.b), vec3<bool>(true, true, false), vec3<bool>(var_2.b, var_2.d.b, true)), Struct_5(Struct_2(45294u, var_2.d.b, var_0.zz, vec4<i32>(global0.x, global0.x, u_input.e.x, -19421i), true), var_2.a, -57631i, Struct_1(var_0.x, vec4<u32>(var_2.d.a, var_2.d.a, var_2.c.a, 25748u), u_input.e), Struct_1(-188f, vec4<u32>(4294967295u, 14913u, 0u, 4294967295u), var_2.c.d.zx)), func_2(Struct_2(var_2.c.a, var_2.c.b, var_0.zy, vec4<i32>(global0.x, global0.x, -36455i, -2147483647i), false), vec4<u32>(0u, var_2.d.a, var_2.d.a, 40748u))).d.x), Struct_2(~1u, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.wx * var_0.ww)), -vec4<i32>(~u_input.d.x, _wgslsmith_mod_i32(global0.x, global0.x), var_2.d.d.x, _wgslsmith_add_i32(var_2.c.d.x, u_input.d.x)), false), Struct_2(51052u, false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-530f, -762f)) + vec2<f32>(_wgslsmith_div_f32(689f, -797f), _wgslsmith_f_op_f32(f32(-1f) * -1667f))), -vec4<i32>(global0.x, global0.x, -2147483647i, u_input.c) & -(~var_2.d.d), false));
    return ~vec3<u32>(abs(~(~16181u)), ~abs(0u), 24021u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = ~global0.x;
    let var_1 = _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -1i, 1i), ~vec2<i32>(19478i, 2147483647i))), u_input.e);
    var var_2 = min(vec2<u32>(38450u, ~3056u), reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(44160u, 1u), vec2<u32>(4294967295u, 129414u)), reverseBits(reverseBits(10599u)))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(797f)), 1726f)))), -1276f), vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.x, var_2.x, 12009u), func_1(), all(vec2<bool>(true, false))), vec3<u32>(1930u, 4294967295u, var_2.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(27616u, 1u, 0u), vec3<u32>(var_2.x, var_2.x, 14490u)) % vec3<u32>(32u))), firstTrailingBit(~reverseBits(var_2.x)), ~_wgslsmith_add_u32(var_2.x ^ var_2.x, abs(var_2.x)), var_2.x), vec2<i32>(var_1.x, u_input.c) >> (vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 14719u), vec3<u32>(1u, var_2.x, var_2.x)), 86037u) % vec2<u32>(32u)));
    var_2 = var_3.b.yw << (var_3.b.yz % vec2<u32>(32u));
    var var_4 = vec3<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), true, any(vec3<bool>(true, true, true)) | !(!all(vec3<bool>(false, true, true))));
    let var_5 = -(~(-54556i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(45533u, 55721u, 59871u), ~26410u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(955f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(var_3.a, 867f), _wgslsmith_f_op_f32(-var_3.a), var_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -903f, -1000f)))))));
}

