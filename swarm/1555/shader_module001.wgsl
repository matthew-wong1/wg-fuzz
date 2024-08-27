struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4947i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> vec2<u32> {
    var var_0 = any(vec3<bool>(select(!(-24235i > u_input.b), true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false))), true, any(vec4<bool>(true, true, true, true))));
    var var_1 = -314f;
    global0 = firstLeadingBit(13436i);
    var var_2 = Struct_2(-320f, Struct_1(arg_0.yz), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-882f - 218f), _wgslsmith_f_op_f32(select(-526f, 770f, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.zx, arg_0.xx)))), _wgslsmith_f_op_f32(-arg_0.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(349f, arg_0.x, true))))));
    var_2 = Struct_2(1343f, var_2.b, var_2.b, _wgslsmith_f_op_f32(abs(816f)), Struct_1(arg_0.xx));
    return abs(_wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.c, ~0u), vec2<u32>(u_input.c, u_input.a)), (reverseBits(vec2<u32>(u_input.c, u_input.c)) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, 65670u)), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1.b;
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, arg_1.e.a.x))))));
    let var_2 = arg_1;
    var_1 = ~(~(~arg_2.zx));
    let var_3 = select(arg_0, vec4<i32>(arg_0.x, u_input.b, _wgslsmith_div_i32(abs(~37821i), min(arg_0.x, 1i)), -2147483647i), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true))));
    return Struct_2(-1675f, arg_1.e, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(146f, 1000f), _wgslsmith_f_op_f32(max(-658f, 701f))) - _wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(var_0.a + var_2.c.a)))), -1000f, arg_1.c);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    global0 = -40470i;
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.e.a.x, 702f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1306f, arg_3.b.a.x) - vec2<f32>(arg_3.d, -174f)))))));
    let var_1 = max(firstLeadingBit(_wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a, 79804u, u_input.c), ~vec3<u32>(1u, u_input.c, 23216u)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.a, u_input.c), vec3<u32>(0u, 4294967295u, u_input.a))))), countOneBits(~vec3<u32>(~1u, u_input.a << (u_input.c % 32u), 1u)));
    let var_2 = arg_3.e;
    var var_3 = max(arg_0.x >> ((~8540u ^ u_input.a) % 32u), arg_0.x);
    return 38216u;
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_3(~func_4(~vec4<i32>(u_input.b, 2147483647i, -1i, u_input.b), all(arg_0.www), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1832f, -1497f, -1907f))), func_2(vec4<i32>(-2147483647i, u_input.b, 1i, 1i), Struct_2(572f, Struct_1(vec2<f32>(1788f, -710f)), Struct_1(vec2<f32>(1000f, 511f)), -105f, Struct_1(vec2<f32>(-590f, 1099f))), vec4<u32>(u_input.c, 99888u, u_input.c, 122908u), 33406u)) ^ u_input.a, func_2(-vec4<i32>(u_input.b, u_input.b, u_input.b, -u_input.b), Struct_2(-305f, func_2(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), func_2(vec4<i32>(-6247i, u_input.b, -1i, 2147483647i), Struct_2(-556f, Struct_1(vec2<f32>(-949f, 530f)), Struct_1(vec2<f32>(969f, -192f)), 432f, Struct_1(vec2<f32>(-811f, -125f))), vec4<u32>(u_input.a, u_input.a, 0u, 23186u), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 47264u, 40378u), vec4<u32>(77817u, 0u, 0u, 10999u), vec4<u32>(7419u, u_input.a, u_input.c, u_input.c)), u_input.c).c, func_2(-vec4<i32>(u_input.b, u_input.b, 0i, -1i), func_2(vec4<i32>(24065i, u_input.b, u_input.b, u_input.b), Struct_2(1000f, Struct_1(vec2<f32>(-664f, 1635f)), Struct_1(vec2<f32>(-153f, -534f)), -136f, Struct_1(vec2<f32>(500f, 797f))), vec4<u32>(u_input.c, u_input.a, 66556u, u_input.a), u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 31400u) | vec4<u32>(u_input.a, 107739u, u_input.c, u_input.c), firstLeadingBit(u_input.a)).c, _wgslsmith_div_f32(-104f, -837f), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2058f, -180f))))), firstTrailingBit(vec4<u32>(15323u, firstTrailingBit(u_input.a), ~u_input.c, ~u_input.a)), 1u), u_input.b);
    var var_1 = vec2<u32>(select(var_0.a, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.a.x, 1102f, var_0.b.e.a.x) + vec3<f32>(var_0.b.e.a.x, var_0.b.a, -493f))).x | (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c)) ^ var_0.a), arg_0.x), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(func_4(vec4<i32>(1i, -1i, 1i, -41253i), arg_0.x, vec3<f32>(985f, -1336f, var_0.b.c.a.x), var_0.b), func_4(vec4<i32>(u_input.b, u_input.b, -1i, var_0.c), arg_0.x, vec3<f32>(var_0.b.a, -929f, var_0.b.d), Struct_2(var_0.b.a, var_0.b.c, Struct_1(var_0.b.e.a), -290f, Struct_1(vec2<f32>(-1382f, -1783f))))), 32262u));
    var_1 = vec2<u32>(_wgslsmith_mult_u32(1u | ~var_1.x, func_3(vec3<f32>(_wgslsmith_div_f32(-968f, -500f), _wgslsmith_f_op_f32(f32(-1f) * -796f), 1482f)).x), 1u);
    let var_2 = -1248f;
    let var_3 = var_1.x;
    return func_2(~vec4<i32>(abs(var_0.c), countOneBits(~u_input.b), u_input.b, -(var_0.c >> (0u % 32u))), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.a))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1224f - var_0.b.e.a.x), _wgslsmith_f_op_f32(var_2 * var_0.b.e.a.x))), Struct_1(vec2<f32>(3647f, _wgslsmith_f_op_f32(-var_0.b.a))), var_0.b.c.a.x, var_0.b.e), max(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, var_1.x, 5343u) << (vec4<u32>(u_input.c, var_0.a, var_1.x, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(14274u, var_1.x, 32308u, 58378u)), min(vec4<u32>(42626u, 4294967295u, 0u, 31240u), vec4<u32>(var_1.x, 0u, 0u, var_0.a)), select(select(arg_0, arg_0, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(false, arg_0.x, true, arg_0.x)), var_0.c < -2147483647i)), (vec4<u32>(var_0.a, 0u, u_input.c, var_1.x) << (vec4<u32>(4294967295u, var_0.a, u_input.c, 4294967295u) % vec4<u32>(32u))) & max(~vec4<u32>(u_input.c, u_input.a, var_1.x, var_0.a), ~vec4<u32>(var_1.x, var_1.x, var_0.a, 28347u))), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_0.b.c.a.x), 818f) - vec3<f32>(_wgslsmith_f_op_f32(min(2870f, var_2)), _wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(var_0.b.c.a.x * var_0.b.a)))).x);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global0 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, firstTrailingBit(u_input.b), firstLeadingBit(u_input.b), u_input.b), vec4<i32>(u_input.b, -1158i, u_input.b, u_input.b << (u_input.c % 32u))));
    var var_0 = ~vec3<u32>(u_input.c, 58453u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c), ~u_input.a), vec2<u32>(35227u, u_input.c) << (vec2<u32>(u_input.c, 10131u) % vec2<u32>(32u))));
    var_0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, ~2094u, 4294967295u), vec3<u32>(~51027u, ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, u_input.a), vec3<u32>(53764u, var_0.x, u_input.a)))));
    var var_1 = all(!(!(!vec4<bool>(arg_1, arg_1, arg_1, false))));
    var var_2 = select(select(vec3<bool>(!all(vec2<bool>(arg_1, false)), all(vec3<bool>(arg_1, false, arg_1)), any(!vec3<bool>(arg_1, arg_1, true))), select(!select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), false), select(!vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, arg_1))), vec3<bool>(true, true, true)), arg_0.a <= func_1(vec4<bool>(true, true, arg_1, arg_1)).b.a.x), vec3<bool>(arg_1, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(15398u, var_0.x, 24132u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 7313u, 27436u, 74373u), vec4<u32>(96424u, var_0.x, u_input.c, var_0.x))) == var_0.x, arg_1 || true), vec3<bool>(true, true, true));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.x), -179f));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_mult_u32(arg_1, 0u), Struct_2(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0, arg_0, arg_0.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(min(arg_0.a, arg_0.a)))), u_input.b);
    var var_1 = 45606u;
    var var_2 = vec3<u32>(countOneBits(_wgslsmith_div_u32(~(~var_0.a), 4294967295u)), ~4294967295u << ((firstLeadingBit(arg_1) & var_0.a) % 32u), u_input.a);
    var var_3 = Struct_3(select(max(firstTrailingBit(reverseBits(arg_1)), u_input.a), abs(func_3(vec3<f32>(1974f, arg_0.a.x, var_0.b.b.a.x)).x) & func_3(vec3<f32>(828f, var_0.b.c.a.x, var_0.b.e.a.x)).x, !any(vec2<bool>(true, false))), var_0.b, min(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -14167i, 3831i, var_0.c), vec4<i32>(var_0.c, var_0.c, var_0.c, u_input.b)) | u_input.b, -12882i), -var_0.c));
    var_2 = vec3<u32>(~11402u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_2.xx & var_2.zy, var_2.xy), var_2.yy, select(vec2<u32>(var_2.x, var_0.a), select(vec2<u32>(u_input.c, u_input.a), var_2.xy, arg_2.x), true)), vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(27962u, var_0.a)) & ~4294967295u, 1u ^ (0u ^ u_input.a))), _wgslsmith_mult_u32(~28490u, u_input.a));
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-960f * _wgslsmith_div_f32(var_3.b.c.a.x, _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(-var_3.b.a), 365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(arg_0.a.x, var_0.b.b, var_3.b.e, 610f, Struct_1(var_3.b.b.a)), false).a.x - -1667f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(i32(-1i) * -u_input.b);
    global0 = countOneBits(~u_input.b);
    global0 = ~reverseBits(u_input.b << (u_input.a % 32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(func_1(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), !any(vec3<bool>(true, true, true))), min((_wgslsmith_mult_u32(7753u, 19562u) | u_input.c) ^ _wgslsmith_div_u32(u_input.c >> (4294967295u % 32u), ~u_input.c), 0u), !vec3<bool>(true & all(vec4<bool>(false, true, true, false)), select(all(vec2<bool>(true, false)), 2716u <= u_input.a, select(true, true, false)), any(vec3<bool>(false, true, false)))));
    let var_1 = Struct_3(~u_input.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * 206f), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -33785i)), -1i, -22618i, -2147483647i), Struct_2(_wgslsmith_f_op_f32(-var_0.x), Struct_1(vec2<f32>(var_0.x, var_0.x)), Struct_1(var_0.zx), _wgslsmith_f_op_f32(-var_0.x), Struct_1(vec2<f32>(1046f, -726f))), ~_wgslsmith_div_vec4_u32(vec4<u32>(34375u, u_input.a, 4294967295u, u_input.a), vec4<u32>(51841u, u_input.a, u_input.c, u_input.c)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(32181u, u_input.a, u_input.c), ~58547u)).e, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.yy)))), _wgslsmith_f_op_f32(-var_0.x), func_2(vec4<i32>(16800i, -1i, 8739i, 1i) | ~vec4<i32>(-9794i, 0i, u_input.b, u_input.b), func_2(vec4<i32>(u_input.b, 2147483647i, 0i, u_input.b), Struct_2(-809f, Struct_1(var_0.xz), Struct_1(vec2<f32>(-307f, var_0.x)), var_0.x, Struct_1(var_0.xz)), vec4<u32>(4294967295u, 0u, u_input.a, u_input.c), _wgslsmith_mod_u32(16807u, 4294967295u)), select(~vec4<u32>(4294967295u, u_input.c, u_input.a, 4294967295u), vec4<u32>(1u, 0u, u_input.a, 9647u), vec4<bool>(false, false, false, true)), 0u).c), i32(-1i) * -12312i);
    var var_2 = -firstTrailingBit(-abs(vec4<i32>(-1i, 1056i, var_1.c, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(firstTrailingBit(vec2<u32>(u_input.c, 0u)))), reverseBits(2147483647i), ~(~(~u_input.c << (_wgslsmith_div_u32(u_input.c, 1u) % 32u))));
}

