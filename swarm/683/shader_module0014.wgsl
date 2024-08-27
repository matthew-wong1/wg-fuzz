struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1157f, -159f, arg_0.a.b), vec3<f32>(arg_0.a.b, 707f, arg_0.a.a.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-376f, arg_0.a.a.x, 982f), vec3<f32>(arg_0.a.b, arg_0.a.a.x, arg_0.a.b), arg_0.c.x))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.b + 180f), arg_0.a.a.x, arg_0.a.b) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1098f, arg_0.a.a.x, -1165f), vec3<f32>(-1381f, -341f, arg_0.a.a.x), arg_0.c.x))) + vec3<f32>(_wgslsmith_f_op_f32(min(741f, _wgslsmith_div_f32(950f, -432f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.a.b)), -811f)), 2320f)));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.b, var_0.x, 1224f))))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.a.x, -1010f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 615f, arg_0.a.a.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.b, 180f, arg_0.a.b)))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-661f, _wgslsmith_f_op_f32(arg_0.a.b - 1000f), _wgslsmith_f_op_f32(arg_0.a.b + -779f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.a.a.x, var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-911f, -1250f)), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_0.a.b) * _wgslsmith_f_op_f32(315f + var_0.x)), 933f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1229f, -1012f, arg_0.a.a.x), vec3<f32>(-636f, arg_0.a.b, 224f), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, var_0.x, var_0.x) + vec3<f32>(arg_0.a.b, -725f, arg_0.a.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1192f, var_0.x, -104f), vec3<f32>(-393f, arg_0.a.a.x, 1089f)))))));
    let var_1 = Struct_4(-1284f, 918f, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a.c, u_input.b | countOneBits(61254u), _wgslsmith_add_u32(1u, u_input.b)), ~arg_0.a.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a.x, -1595f, arg_0.a.b) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, arg_0.a.b, -2245f), vec3<f32>(var_0.x, arg_0.a.b, var_0.x), true))), vec3<f32>(_wgslsmith_f_op_f32(-973f * 1558f), 197f, arg_0.a.b), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, var_0.x))), vec3<f32>(599f, var_0.x, 283f))), !(_wgslsmith_f_op_f32(trunc(1839f)) < -566f))));
    return ~firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.c, 39765u, arg_0.a.c, arg_0.a.c) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, u_input.a, u_input.b), vec4<u32>(80003u, 8578u, u_input.a, arg_0.a.c)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 1u, var_1.c, 15030u)) ^ reverseBits(vec4<u32>(var_1.c, var_1.c, 10502u, arg_0.a.c))));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(max(1835f, -752f))) + vec2<f32>(-218f, 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1023f)))), 4294967295u), vec4<i32>(-countOneBits(1i), -51998i, i32(-1i) * -2147483647i, ~(~(-2876i))) >> (vec4<u32>(~(u_input.b | 23160u), ~select(u_input.b, 4294967295u, true), func_3(Struct_2(Struct_1(vec2<f32>(-1000f, 616f), -1598f, 4294967295u), vec4<i32>(1i, 0i, -1i, 0i), vec4<bool>(false, false, false, true))), u_input.b) % vec4<u32>(32u)), select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), all(vec2<bool>(true, true))), false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), true), true));
    var var_1 = select(var_0.c, var_0.c, vec4<bool>(all(var_0.c.xx), var_0.c.x && all(select(var_0.c.ywy, var_0.c.zyx, false)), var_0.c.x, true));
    var_1 = vec4<bool>(false, all(var_0.c), false, !(!(!var_1.x)) && !select(!var_1.x, any(vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_0.c.x));
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(3702u, ~u_input.b, u_input.a, ~4938u), vec4<u32>(_wgslsmith_mod_u32(var_0.a.c, 4294967295u), ~4294967295u, ~var_0.a.c, _wgslsmith_dot_vec2_u32(vec2<u32>(14801u, var_0.a.c), vec2<u32>(78367u, u_input.b))), min(vec4<u32>(1u, 4294967295u, 8544u, u_input.b) & vec4<u32>(u_input.b, var_0.a.c, var_0.a.c, var_0.a.c), ~vec4<u32>(82912u, 24063u, u_input.a, u_input.b))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_0.a.c, 2479u), vec4<u32>(0u, var_0.a.c, var_0.a.c, 0u)), firstLeadingBit(~min(vec4<u32>(37457u, 66419u, var_0.a.c, var_0.a.c), vec4<u32>(var_0.a.c, var_0.a.c, 12374u, 7097u)))) << (vec4<u32>(0u, reverseBits(var_0.a.c), ~(~33940u), ~11507u) % vec4<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a.a - _wgslsmith_f_op_vec2_f32(var_0.a.a * vec2<f32>(_wgslsmith_f_op_f32(-398f * var_0.a.b), _wgslsmith_f_op_f32(-var_0.a.a.x)))), _wgslsmith_f_op_f32(trunc(1442f)), ~abs(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b), ~var_0.a.c, 3958u)));
    return _wgslsmith_f_op_vec2_f32(var_3.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a)) * var_3.a));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2()), arg_0.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.a, 32405u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, 47076u, u_input.a)), ~u_input.b)), func_3(Struct_2(Struct_1(vec2<f32>(-1215f, arg_0.x), 1000f, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 27901i, 26478i, 21388i), vec4<i32>(1i, 0i, 2147483647i, -34481i)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(66426u, var_0.c)) & min(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 33829u), vec2<u32>(4294967295u, u_input.b)), _wgslsmith_clamp_vec2_u32(min(vec2<u32>(0u, var_0.c) | vec2<u32>(u_input.b, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(47525u, var_0.c), vec2<u32>(16040u, 1u))), vec2<u32>(4294967295u, firstLeadingBit(u_input.a)), vec2<u32>(~u_input.b, 53800u))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2035f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_0.x) - _wgslsmith_div_f32(440f, arg_0.x)), -406f) + vec4<f32>(1000f, var_0.b, _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) + _wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_4 = vec3<bool>(var_1.x, true, var_1.x);
    return Struct_2(Struct_1(vec2<f32>(-1507f, _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 365f)), 1u), vec4<i32>(~(~abs(-25992i)), -1748i, -2147483647i, abs(select(0i, 0i << (u_input.a % 32u), true || var_4.x))), !select(select(select(vec4<bool>(var_4.x, var_4.x, false, var_4.x), vec4<bool>(true, true, true, false), vec4<bool>(true, var_1.x, var_1.x, var_4.x)), vec4<bool>(false, false, var_4.x, true), any(vec3<bool>(var_1.x, var_1.x, var_4.x))), !(!vec4<bool>(var_4.x, false, var_4.x, true)), !(false & var_4.x)));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> Struct_1 {
    let var_0 = func_1(arg_0.b);
    let var_1 = arg_1;
    let var_2 = Struct_3(vec4<f32>(477f, -670f, _wgslsmith_f_op_f32(f32(-1f) * -144f), var_0.a.b));
    return func_1(_wgslsmith_f_op_vec2_f32(var_2.a.yz * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(trunc(-1000f))))))).a;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2770f)) + 1177f)))), -418f, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(78196u, 1888u, 4294967295u, arg_1.c), vec4<u32>(1u, 92471u, arg_1.c, 18105u)), ~u_input.a)), ~select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(66812u, arg_1.c) << (vec2<u32>(u_input.b, arg_1.c) % vec2<u32>(32u)), func_1(vec2<f32>(-972f, 318f)).c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(2415f, -453f, arg_1.b), vec3<f32>(881f, arg_1.a.x, 2257f)))))));
    var_0 = Struct_4(1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x), 1u | func_4(Struct_5(_wgslsmith_f_op_f32(-1452f + -1249f), vec2<f32>(1234f, 430f), func_1(vec2<f32>(-345f, 663f)), arg_1), 1u).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, arg_1.b, arg_1.a.x)) - var_0.d) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x), 491f, var_0.b)));
    var_0 = Struct_4(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(min(-1318f, arg_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b - arg_1.b), var_0.a), arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1668f, arg_1.a.x) + var_0.d) * vec3<f32>(2266f, -505f, -316f)), vec3<f32>(194f, _wgslsmith_f_op_f32(var_0.b * 1523f), -1188f))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -122f);
    var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(895f, var_0.b), vec2<f32>(var_0.d.x, -440f)), var_0.d.xy))))).a.a.x;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, 1000f, arg_1.a.x, arg_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1559f, 360f, arg_1.a.x, 141f), vec4<f32>(var_0.d.x, arg_1.b, -406f, arg_1.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, 1000f, -714f, arg_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1432f, -1000f)), _wgslsmith_div_f32(1244f, -136f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1024f, -435f))))))), 1204f, ~u_input.a);
    let var_2 = func_5(_wgslsmith_div_u32(var_1.c, 0u), func_4(Struct_5(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(sign(-500f))), var_1.a, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-978f, var_1.b))), Struct_1(var_1.a, var_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(90953u, var_1.c), vec2<u32>(4369u, var_0)))), 0u));
    var var_3 = !func_1(var_1.a).c.x;
    var var_4 = 13990i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, 4294967295u), abs(19994u), ~(~select(vec4<u32>(var_1.c, 1u, var_1.c, var_0), vec4<u32>(0u, u_input.b, var_1.c, var_1.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))));
}

