struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = 1i;
    var var_1 = select(select(vec3<bool>(true, true, true), !vec3<bool>(any(vec4<bool>(false, true, true, true)), -12857i > var_0, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(var_0 >= -2397i, true, true), vec3<bool>(true, true, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(select(false, true, true), false, select(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(all(vec2<bool>(true, false)), true, false), vec3<bool>(true, true, true), true)));
    var_1 = select(vec3<bool>(any(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, true))), select(!any(vec4<bool>(false, true, var_1.x, true)), !all(var_1.zx), true), false), vec3<bool>(var_1.x, false, true & select(true, any(vec2<bool>(false, false)), true)), any(!(!(!vec3<bool>(var_1.x, var_1.x, false)))));
    var_1 = select(vec3<bool>(any(vec2<bool>(var_1.x, var_1.x)), true, var_1.x || (81212u >= u_input.b)), vec3<bool>(true, true != !(!var_1.x), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, any(vec4<bool>(true, true, var_1.x, var_1.x)), !(1i >= u_input.c.x)), vec3<bool>(select(true, all(vec2<bool>(false, false)), true), true, !(!var_1.x)), select(select(!vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, false)), select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false)), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, false))), !select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x))));
    var_1 = select(vec3<bool>(!(!(!var_1.x)), all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x))), true), vec3<bool>(true, true, any(var_1.xy)), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -5098i, 38855i, 1506i), vec4<i32>(var_0, 2147483647i, 2147483647i, u_input.c.x))) < (u_input.c.x >> (firstTrailingBit(4294967295u) % 32u)));
    return vec3<bool>(!(!(var_1.x || false)), true | all(vec4<bool>(!var_1.x, true, false, !var_1.x)), false);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(abs(_wgslsmith_sub_u32(~arg_0, 13020u)), u_input.c.xx, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1976f), _wgslsmith_f_op_f32(f32(-1f) * -777f)), _wgslsmith_div_f32(-183f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), -1103f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(545f, 2373f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -443f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-441f)), _wgslsmith_f_op_f32(f32(-1f) * -512f), any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-712f))))), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(861f)), -1222f, _wgslsmith_f_op_f32(-1397f + -1077f)))));
    let var_1 = Struct_3(func_3(), Struct_1(~1u, var_0.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(867f, var_0.c.x, var_0.e.x, -1341f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 1500f, -419f, var_0.e.x) - vec4<f32>(2108f, var_0.e.x, 176f, var_0.e.x))))), abs(firstLeadingBit(-2147483647i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, arg_0, 0u, u_input.b), countOneBits(u_input.a)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c.xww)))), arg_1.zy, vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.e.x)), -173f))));
    let var_2 = !var_1.a;
    var var_3 = Struct_3(var_2, Struct_1(~(~_wgslsmith_add_u32(var_0.a, u_input.b)), select(-(u_input.c.zy >> (vec2<u32>(4294967295u, var_1.b.a) % vec2<u32>(32u))), vec2<i32>(-12369i, _wgslsmith_sub_i32(0i, -2147483647i)), true), var_1.b.c, abs(min(_wgslsmith_mult_i32(var_0.b.x, -11455i), ~2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.b.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_1.d.x, var_0.e.x) + vec3<f32>(var_1.d.x, var_1.b.e.x, var_1.d.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1067f), -2171f))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d, abs(arg_1.x)), arg_1.yw, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b.x, 2147483647i) << (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u)), -var_0.b)), vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(14600i), 0i | arg_1.x), var_1.b.b.x)), var_0.e.xx);
    var_0 = var_3.b;
    return _wgslsmith_mod_u32(arg_0, arg_0);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_2.yxy << (~vec3<u32>(countOneBits(select(56074u, 28571u, false)), abs(abs(13630u)), func_2(firstTrailingBit(u_input.a.x), max(vec4<i32>(-1i, 1i, -1i, u_input.c.x), vec4<i32>(-1i, u_input.c.x, -2147483647i, arg_3.a.b.x)))) % vec3<u32>(32u));
    var var_1 = 26043u;
    var var_2 = arg_3.a.e.xx;
    var_1 = abs(37739u);
    let var_3 = arg_3;
    return Struct_1(var_0.x, select(vec2<i32>((i32(-1i) * -2147483647i) >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), arg_3.d.b) ^ ~(-24314i)), vec2<i32>(-49222i, max(-u_input.c.x, -arg_0)), !vec2<bool>(select(true, arg_3.b, arg_3.b), false)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a.c) * _wgslsmith_f_op_vec4_f32(sign(arg_3.a.c))))), u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.e - arg_3.d.c.yzw) * vec3<f32>(-2046f, 247f, var_2.x))) - var_3.e));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_1(arg_2.a, ~vec2<i32>(~(u_input.c.x & arg_2.d), -_wgslsmith_sub_i32(u_input.c.x, arg_2.b.x)), arg_1.c, -37074i, arg_1.e);
    let var_1 = select(select(func_3(), !func_3(), !select(select(vec3<bool>(arg_3, arg_0.x, true), vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, arg_3, false)), vec3<bool>(arg_3, false, false), !vec3<bool>(arg_0.x, false, true))), !(!select(vec3<bool>(arg_0.x, arg_0.x, arg_3), vec3<bool>(arg_3, arg_3, arg_3), arg_0.x)), !select(vec3<bool>(any(vec4<bool>(false, arg_3, arg_0.x, arg_0.x)), false, !arg_3), func_3(), vec3<bool>(!arg_3, any(vec4<bool>(false, false, arg_0.x, arg_0.x)), any(vec4<bool>(false, false, false, arg_0.x)))));
    var_0 = Struct_1(arg_2.a, var_0.b, arg_2.c, 30202i & u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, arg_1.c.x, 610f))));
    var var_2 = Struct_2(func_1(-2147483647i, true, firstTrailingBit(~u_input.a), Struct_2(arg_1, arg_1.e.x != _wgslsmith_f_op_f32(min(var_0.c.x, 2052f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - -995f), func_1(~var_0.b.x, !arg_3, ~u_input.a, Struct_2(arg_2, arg_0.x, var_0.e.x, arg_1, var_0.c.ywy)), _wgslsmith_f_op_vec3_f32(-arg_2.e))), func_3().x, _wgslsmith_f_op_f32(abs(func_1(~270i, var_1.x, ~select(vec4<u32>(arg_1.a, var_0.a, arg_1.a, 0u), u_input.a, vec4<bool>(true, var_1.x, var_1.x, arg_0.x)), Struct_2(Struct_1(4294967295u, vec2<i32>(var_0.b.x, -2147483647i), vec4<f32>(161f, -868f, var_0.c.x, var_0.c.x), u_input.c.x, vec3<f32>(-1084f, arg_1.c.x, -635f)), any(vec4<bool>(false, false, arg_0.x, var_1.x)), arg_1.c.x, arg_2, _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e.x, var_0.e.x, 1485f), vec3<f32>(1000f, arg_1.c.x, arg_2.c.x)))).e.x)), arg_1, vec3<f32>(arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) + _wgslsmith_f_op_f32(-arg_2.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))));
    let var_3 = _wgslsmith_f_op_f32(step(arg_1.e.x, func_1(_wgslsmith_sub_i32(-2147483647i, 0i), var_2.b, min(~u_input.a, u_input.a), Struct_2(arg_2, var_1.x, -567f, func_1(-1i ^ u_input.c.x, all(vec3<bool>(arg_0.x, arg_3, false)), vec4<u32>(arg_1.a, 1u, var_2.a.a, arg_1.a), Struct_2(Struct_1(1u, arg_1.b, vec4<f32>(-907f, arg_2.c.x, 275f, 677f), arg_2.d, vec3<f32>(-1134f, arg_1.e.x, var_2.e.x)), arg_0.x, 259f, var_2.a, arg_2.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_0.e.x, -911f), var_2.a.e))))).e.x));
    return Struct_3(!var_1, Struct_1(~var_2.a.a, vec2<i32>(i32(-1i) * -38009i, _wgslsmith_dot_vec2_i32(~vec2<i32>(53689i, arg_1.b.x), vec2<i32>(-82539i, 1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -1206f, -857f, _wgslsmith_f_op_f32(-var_2.a.e.x))), arg_2.b.x, vec3<f32>(var_3, var_2.d.c.x, 965f)), _wgslsmith_mult_vec2_i32(-(vec2<i32>(-1i) * -var_2.a.b), select(-arg_1.b, vec2<i32>(~1i, arg_1.d), func_3().x)), arg_1.c.yw);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(390f + arg_0.d.x) * _wgslsmith_f_op_f32(-arg_2.e.x)) * -1750f) - arg_2.e.x) + arg_2.e.x);
    let var_1 = -(~(-u_input.c.yy));
    let var_2 = _wgslsmith_f_op_f32(min(-365f, 182f));
    var var_3 = arg_2;
    let var_4 = ~(~(~firstTrailingBit(reverseBits(u_input.a.zy))));
    return _wgslsmith_div_i32(95i, arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec4_i32(~(-firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), vec4<i32>(max(~7629i, max(u_input.c.x, 23101i)), _wgslsmith_div_i32(1i, -u_input.c.x), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c.x, 12175i), u_input.c.x | u_input.c.x), u_input.c.x));
    var var_1 = u_input.b;
    var var_2 = !vec3<bool>(any(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true)), u_input.c.x < (_wgslsmith_div_i32(12641i, 1i) << (~u_input.b % 32u)), !any(vec4<bool>(true, false, true, true)));
    var var_3 = ~u_input.c.yz;
    var var_4 = vec4<i32>(u_input.c.x, func_5(func_4(select(var_2.yx, var_2.zy, !vec2<bool>(true, var_2.x)), func_1(_wgslsmith_mod_i32(var_0.x, -2147483647i), true, ~u_input.a, Struct_2(Struct_1(122973u, vec2<i32>(-26431i, 18919i), vec4<f32>(1000f, 300f, 1212f, 140f), var_3.x, vec3<f32>(1971f, -970f, 225f)), true, 1521f, Struct_1(35608u, u_input.c.yx, vec4<f32>(1132f, 205f, 327f, -557f), var_0.x, vec3<f32>(461f, -232f, 1714f)), vec3<f32>(1000f, -275f, 1825f))), func_1(u_input.c.x, true, ~u_input.a, Struct_2(Struct_1(u_input.a.x, vec2<i32>(var_0.x, -2147483647i), vec4<f32>(1963f, -159f, -1637f, 431f), var_3.x, vec3<f32>(168f, -613f, 625f)), true, 545f, Struct_1(u_input.b, vec2<i32>(var_3.x, var_3.x), vec4<f32>(-1668f, 1074f, -209f, -111f), 9165i, vec3<f32>(-295f, 883f, 1137f)), vec3<f32>(311f, -731f, -1127f))), all(vec3<bool>(true, true, true))), !func_4(func_4(var_2.zy, Struct_1(51012u, var_0.yy, vec4<f32>(-1498f, -982f, 1050f, 2729f), 1i, vec3<f32>(629f, 2393f, 1903f)), Struct_1(u_input.b, var_0.zw, vec4<f32>(-1163f, 2310f, 1176f, 863f), var_0.x, vec3<f32>(806f, 1124f, -429f)), true).a.yy, func_1(0i, var_2.x, u_input.a, Struct_2(Struct_1(u_input.a.x, vec2<i32>(2147483647i, var_0.x), vec4<f32>(-343f, 1000f, -1455f, 494f), -2147483647i, vec3<f32>(1479f, -353f, -218f)), false, 1399f, Struct_1(u_input.b, vec2<i32>(-21002i, var_3.x), vec4<f32>(897f, -1058f, -403f, 515f), u_input.c.x, vec3<f32>(936f, -1705f, 1060f)), vec3<f32>(745f, 882f, -1082f))), Struct_1(4294967295u, u_input.c.xx, vec4<f32>(-1189f, 1001f, -2378f, -810f), -10743i, vec3<f32>(-574f, -150f, 1095f)), var_2.x).a.x, func_4(var_2.yx, func_4(!var_2.yy, Struct_1(u_input.a.x, vec2<i32>(var_3.x, var_0.x), vec4<f32>(-1239f, -1000f, -2393f, 899f), -1i, vec3<f32>(-1418f, 1202f, 1000f)), Struct_1(u_input.a.x, u_input.c.xx, vec4<f32>(-1280f, 1675f, 504f, -288f), var_0.x, vec3<f32>(-1447f, -421f, 877f)), false).b, Struct_1(71213u, reverseBits(vec2<i32>(var_0.x, u_input.c.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-369f, -696f, -548f, 862f), vec4<f32>(193f, 1296f, 259f, -872f)), _wgslsmith_mod_i32(0i, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1122f, 215f, 450f) * vec3<f32>(894f, -194f, -414f))), true | !var_2.x).b, u_input.c.xx), u_input.c.x, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(-29829i, 0i ^ var_3.x), _wgslsmith_mod_i32(-2147483647i, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.zx, 4294967295u, func_4(vec2<bool>(var_0.x > func_4(vec2<bool>(var_2.x, false), Struct_1(u_input.a.x, u_input.c.xz, vec4<f32>(-1000f, -829f, -257f, -212f), 7841i, vec3<f32>(255f, 168f, 212f)), Struct_1(3133u, vec2<i32>(var_3.x, -13099i), vec4<f32>(-323f, 108f, -263f, -148f), 2147483647i, vec3<f32>(525f, 527f, -133f)), true).b.d, select(false, false, true)), func_4(!vec2<bool>(var_2.x, true), Struct_1(firstTrailingBit(4294967295u), vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, 1171f, 137f, -722f)), -43117i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(471f, 1879f, -354f))), func_4(func_4(vec2<bool>(var_2.x, var_2.x), Struct_1(u_input.b, u_input.c.zz, vec4<f32>(606f, -399f, 1420f, -1198f), var_3.x, vec3<f32>(2138f, -1181f, -121f)), Struct_1(41650u, var_0.ww, vec4<f32>(-1957f, -450f, 119f, 1000f), var_0.x, vec3<f32>(1407f, 1886f, -826f)), var_2.x).a.yy, func_1(-2458i, var_2.x, u_input.a, Struct_2(Struct_1(43762u, vec2<i32>(-1i, 1i), vec4<f32>(1000f, -2032f, -382f, 1002f), var_4.x, vec3<f32>(995f, -1000f, -214f)), true, 367f, Struct_1(0u, u_input.c.yz, vec4<f32>(-1000f, 1116f, 191f, -822f), var_0.x, vec3<f32>(-590f, -359f, 205f)), vec3<f32>(1057f, 1111f, -561f))), func_1(var_0.x, var_2.x, vec4<u32>(72407u, u_input.b, 0u, u_input.b), Struct_2(Struct_1(u_input.b, var_0.zy, vec4<f32>(-1000f, -965f, -240f, 620f), -1i, vec3<f32>(1273f, 1050f, -1543f)), var_2.x, 1764f, Struct_1(u_input.b, vec2<i32>(-1i, 0i), vec4<f32>(373f, -1935f, 1892f, 1123f), 14480i, vec3<f32>(950f, 260f, 902f)), vec3<f32>(2605f, 1805f, -986f))), func_4(var_2.xz, Struct_1(u_input.a.x, vec2<i32>(var_4.x, 34192i), vec4<f32>(-635f, -199f, 165f, 2055f), 1i, vec3<f32>(635f, 1557f, 224f)), Struct_1(u_input.a.x, vec2<i32>(-20130i, -14856i), vec4<f32>(-1000f, -992f, 641f, 1358f), 755i, vec3<f32>(1192f, -989f, -1000f)), var_2.x).a.x).b, true).b, Struct_1(~(0u ^ u_input.a.x), ~u_input.c.xx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -785f, -2379f, 447f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-597f, -106f, 851f, 277f))))), _wgslsmith_mult_i32(50088i, var_4.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, 303f, 671f)))), false).d.x, ~vec4<i32>(func_4(vec2<bool>(var_2.x, true), func_1(1i, true, vec4<u32>(32878u, 0u, 0u, 207u), Struct_2(Struct_1(1u, var_0.wx, vec4<f32>(-579f, 1000f, -577f, 978f), u_input.c.x, vec3<f32>(-462f, 613f, 257f)), false, -1000f, Struct_1(42074u, vec2<i32>(var_0.x, u_input.c.x), vec4<f32>(1209f, -465f, 144f, -893f), 2147483647i, vec3<f32>(-465f, 668f, 2342f)), vec3<f32>(141f, -2115f, 461f))), func_1(var_0.x, var_2.x, u_input.a, Struct_2(Struct_1(u_input.a.x, var_0.zx, vec4<f32>(-339f, 1377f, 510f, -428f), var_3.x, vec3<f32>(499f, 491f, -559f)), false, 1915f, Struct_1(4294967295u, var_4.zy, vec4<f32>(-385f, -1674f, 1000f, 178f), var_0.x, vec3<f32>(124f, -2714f, 977f)), vec3<f32>(-1222f, -2813f, 603f))), true).c.x, u_input.c.x, -1i, _wgslsmith_clamp_i32(var_4.x, _wgslsmith_mod_i32(var_0.x, -2147483647i), 2147483647i)));
}

