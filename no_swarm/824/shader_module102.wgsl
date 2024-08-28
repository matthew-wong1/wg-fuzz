struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_2(Struct_1(~arg_1.x, !vec2<bool>(arg_0 > u_input.b.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(855f, -1704f, -670f, 940f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(644f, 1755f, -1007f, -166f)))))), ~(-arg_1.x), -17378i);
    var var_1 = Struct_1(~(-(~(~28103i))), select(var_0.a.b, vec2<bool>(var_0.a.b.x, all(select(vec3<bool>(false, var_0.a.b.x, var_0.a.b.x), vec3<bool>(true, true, var_0.a.b.x), vec3<bool>(true, var_0.a.b.x, false)))), any(var_0.a.b) | !var_0.a.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(sign(var_0.a.c.x))), _wgslsmith_f_op_f32(-1055f * _wgslsmith_f_op_f32(-var_0.a.c.x)), -511f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1214f - var_0.a.c.x))))));
    var_1 = Struct_1(arg_1.x, var_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(var_0.a.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.c) * vec4<f32>(var_1.c.x, -751f, -813f, 1591f))))));
    var_0 = Struct_2(Struct_1(-1i, !var_1.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(756f)), _wgslsmith_div_f32(214f, var_1.c.x), _wgslsmith_f_op_f32(1255f - 1016f), _wgslsmith_f_op_f32(-var_0.a.c.x)), vec4<f32>(var_1.c.x, -417f, -429f, _wgslsmith_f_op_f32(-410f - var_1.c.x)), !select(vec4<bool>(true, var_0.a.b.x, true, var_1.b.x), vec4<bool>(false, var_1.b.x, var_0.a.b.x, var_1.b.x), vec4<bool>(true, true, true, false))))), arg_1.x, 8102i);
    let var_2 = var_0.a;
    return 25351u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = -_wgslsmith_sub_i32(2147483647i, ~arg_2.a.a) & u_input.a.x;
    let var_1 = abs(~vec3<u32>(func_3(firstTrailingBit(4294967295u), abs(vec4<i32>(arg_1.x, arg_1.x, u_input.a.x, u_input.a.x))), ~(67667u >> (u_input.c.x % 32u)), func_3(firstTrailingBit(32687u), vec4<i32>(-45841i, 2454i, 15623i, 2147483647i))));
    var_0 = -3825i;
    return Struct_2(Struct_1(_wgslsmith_add_i32(arg_1.x, -firstLeadingBit(-2147483647i)), select(vec2<bool>(all(arg_2.a.b), arg_2.a.c.x > 895f), arg_2.b, arg_2.b.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_2.a.c, vec4<f32>(arg_0.x, -1000f, arg_2.a.c.x, -570f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-554f, arg_2.a.c.x, 1578f, arg_0.x) * vec4<f32>(1045f, 777f, arg_2.a.c.x, arg_2.a.c.x))))))), -(~abs(-1i)), _wgslsmith_div_i32(-(~select(arg_1.x, 0i, false)), 14428i));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = -9481i;
    var var_1 = all(!vec2<bool>(arg_1.a.b.x, !arg_0.x & func_2(arg_1.a.c.zy, vec3<i32>(arg_1.a.a, arg_1.a.a, var_0), Struct_3(arg_1.a, arg_0.yz), 1u).a.b.x));
    var_1 = false;
    var_1 = true;
    let var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_1.c), vec2<i32>(-2147483647i, -48710i))), ~(-vec2<i32>(-56839i, arg_1.c))), arg_1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.c.x, 409f, 1236f, 2181f)))), select(func_2(arg_1.a.c.zw, u_input.a.yzz, Struct_3(func_2(vec2<f32>(-428f, 596f), u_input.a.yzz, Struct_3(Struct_1(arg_1.a.a, arg_0.zz, arg_1.a.c), vec2<bool>(true, arg_0.x)), u_input.b.x).a, func_2(vec2<f32>(arg_1.a.c.x, -981f), vec3<i32>(u_input.a.x, -1i, 2147483647i), Struct_3(arg_1.a, arg_0.yz), 28108u).a.b), reverseBits(4294967295u)).a.b, !arg_1.a.b, vec2<bool>(arg_1.a.b.x, true)));
    return var_2.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_4(vec4<i32>(reverseBits(20487i), -2147483647i, u_input.a.x | u_input.a.x, u_input.a.x), Struct_1(func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_2.x)))), u_input.a.zwy, Struct_3(Struct_1(-2147483647i, arg_1.b, arg_1.c), arg_1.b), countOneBits(arg_0)).a.a, arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(-583f - 1f), 1117f, arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(arg_2.x + arg_1.c.x)))), u_input.b.x, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(86669u, 78240u, 38637u, 7848u)), vec4<u32>(u_input.b.x, 15591u, 89918u, 4294967295u)) >> (_wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_0, arg_0, arg_0, u_input.b.x), vec4<u32>(1u, 11228u, 53951u, u_input.c.x)), vec4<u32>(u_input.b.x, 0u, arg_0, u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b.x, u_input.c.x), arg_0, _wgslsmith_sub_u32(1u, 1u)) << (vec4<u32>(~53668u, u_input.c.x, u_input.c.x, func_3(arg_0, vec4<i32>(u_input.a.x, -22205i, arg_1.a, -49082i))) % vec4<u32>(32u))), abs(0i));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1262f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_2.x))))))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.x)), _wgslsmith_f_op_f32(-var_0.b.c.x)), reverseBits(vec3<i32>(abs(2147483647i), var_0.e, 1i)), Struct_3(func_2(_wgslsmith_f_op_vec2_f32(-arg_2.yx), vec3<i32>(arg_1.a, -2147483647i, arg_1.a) << (var_0.d.www % vec3<u32>(32u)), Struct_3(Struct_1(10846i, var_0.b.b, arg_1.c), vec2<bool>(true, true)), 5259u).a, vec2<bool>(arg_1.a < u_input.a.x, var_0.b.b.x)), abs(1u)).a.c.zw);
    return Struct_2(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c.x, arg_1.c.x) - arg_1.c.ww))), firstLeadingBit(~(~vec3<i32>(2147483647i, 29006i, 2147483647i))), Struct_3(arg_1, !vec2<bool>(false, arg_1.b.x)), var_0.d.x).a, -(~(~2147483647i)), ~(~_wgslsmith_clamp_i32(arg_1.a, 1i, -var_0.a.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = func_5(4294967295u ^ arg_0.x, Struct_1(0i, func_4(vec3<bool>(arg_2 & arg_1, all(vec3<bool>(false, false, true)), true), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, 858f)), vec3<i32>(2147483647i, -6782i, arg_3.x), Struct_3(Struct_1(arg_3.x, vec2<bool>(arg_2, true), vec4<f32>(758f, 1007f, -1508f, 1379f)), vec2<bool>(false, arg_1)), arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1438f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1038f, -541f, _wgslsmith_f_op_f32(ceil(455f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-228f + -749f), _wgslsmith_f_op_f32(-1570f + -819f), _wgslsmith_f_op_f32(-1421f - 741f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-946f, 1000f, -2007f), vec3<f32>(639f, -301f, 457f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1017f, 1376f), vec3<f32>(610f, -655f, 587f)))))));
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-432f + 575f))), var_0.a.c.x) - var_0.a.c.wz), vec3<i32>(17048i, 4637i, ~(~1i)), Struct_3(Struct_1(var_0.c, vec2<bool>(true, true), var_0.a.c), !(!(!var_0.a.b))), countOneBits(arg_0.x));
    var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, -2147483647i), firstTrailingBit(vec3<i32>(-2147483647i, arg_3.x, 0i))), abs(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(var_0.c, var_0.b)))), select(func_5(41639u, Struct_1(10433i, var_0.a.b, var_0.a.c), func_5(u_input.b.x, Struct_1(var_0.c, var_0.a.b, var_0.a.c), vec3<f32>(-2253f, -100f, var_0.a.c.x)).a.c.zxx).a.b, func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(51297u, u_input.c.x, arg_0.x, u_input.c.x), arg_0), func_5(46809u, var_0.a, vec3<f32>(var_0.a.c.x, 1725f, var_0.a.c.x)).a, vec3<f32>(var_0.a.c.x, var_0.a.c.x, 623f)).a.b, var_0.a.b), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.c.x, 209f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.a.c.x), func_5(0u, var_0.a, vec3<f32>(var_0.a.c.x, var_0.a.c.x, -1352f)).a.c.x, true)), -1442f, var_0.a.c.x)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.a.a, -arg_3.x) & (~arg_3.x >> (~u_input.c.x % 32u)), -33794i ^ u_input.a.x), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(reverseBits(arg_3.xx), vec2<i32>(arg_3.x, -47828i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, var_0.a.a) >> (arg_0.yyx % vec3<u32>(32u)), max(arg_3, u_input.a.xzw))));
    var_0 = func_5(960u, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(969f, var_0.a.c.x) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.c.x, var_0.a.c.x))))), (countOneBits(vec3<i32>(0i, arg_3.x, u_input.a.x)) >> (arg_0.xyy % vec3<u32>(32u))) ^ ((vec3<i32>(12518i, var_0.b, u_input.a.x) >> (arg_0.wzw % vec3<u32>(32u))) & arg_3), Struct_3(func_5(~1u, var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, var_0.a.c.x, var_0.a.c.x))).a, select(var_0.a.b, !var_0.a.b, func_5(0u, var_0.a, vec3<f32>(1005f, -1024f, 130f)).a.b)), 0u).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, var_0.a.c.x, 947f)), vec3<f32>(253f, _wgslsmith_div_f32(var_0.a.c.x, var_0.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x), vec4<u32>(u_input.b.x, arg_0.x, 7993u, u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(20809u, 61633u, u_input.b.x, 0u), vec4<u32>(47290u, arg_0.x, u_input.b.x, 60991u))), u_input.b.x, 4294967295u), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.xyy, arg_0.xwx, vec3<u32>(1u, 4294967295u, u_input.b.x)) << (vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(131641u, 38082u), u_input.b.x, arg_0.x))), func_5(1u, func_5(_wgslsmith_clamp_u32(7042u, 0u, arg_0.x), Struct_1(min(-1338i, u_input.a.x), vec2<bool>(arg_2, var_0.a.b.x), vec4<f32>(var_0.a.c.x, 763f, 2366f, var_0.a.c.x)), vec3<f32>(_wgslsmith_f_op_f32(floor(-289f)), -2129f, _wgslsmith_f_op_f32(var_0.a.c.x * 1146f))).a, vec3<f32>(_wgslsmith_f_op_f32(-117f * 1f), -765f, _wgslsmith_f_op_f32(var_0.a.c.x - _wgslsmith_f_op_f32(var_0.a.c.x * -884f)))).a, _wgslsmith_f_op_vec3_f32(var_0.a.c.xzy + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, 227f, var_0.a.c.x))))));
    return Struct_1(~13203i, !func_5(_wgslsmith_sub_u32(arg_0.x, u_input.b.x), var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.c.zzz + var_0.a.c.xxw), var_0.a.c.ywx)).a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.a.c))));
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_i32(2147483647i, -arg_0.a) << (67041u % 32u), !(!func_5(u_input.b.x, Struct_1(u_input.a.x, vec2<bool>(arg_0.b.x, true), arg_0.c), arg_0.c.wyy).a.b), func_5(abs(_wgslsmith_div_u32(u_input.c.x, 5918u)), Struct_1(~88038i, arg_0.b, arg_0.c), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)).a.c), arg_0.b);
    let var_1 = select(~_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.b.x, 46163u), vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.b.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(75195u, u_input.c.x, 0u, 434u), firstTrailingBit(vec4<u32>(1u, 31843u, 3002u, u_input.b.x)))), vec4<u32>(_wgslsmith_sub_u32(select(u_input.c.x, u_input.b.x, arg_0.b.x), u_input.b.x), countOneBits(u_input.b.x), _wgslsmith_div_u32(0u, u_input.c.x & u_input.b.x), 136865u) << (vec4<u32>(~(~u_input.c.x), firstTrailingBit(1u), u_input.c.x, 0u) % vec4<u32>(32u)), !vec4<bool>(all(func_4(vec3<bool>(false, var_0.b.x, true), Struct_2(arg_0, arg_0.a, arg_0.a))), ~u_input.b.x < u_input.c.x, true, arg_0.b.x));
    var var_2 = func_1(var_1, true, any(!arg_0.b), u_input.a.yyz);
    var var_3 = vec4<i32>(~abs(-39084i), u_input.a.x, -24268i, _wgslsmith_div_i32(0i, arg_0.a));
    var_2 = Struct_1(-2147483647i, !vec2<bool>(!func_5(1u, Struct_1(arg_0.a, var_2.b, var_2.c), var_2.c.zxz).a.b.x, var_2.b.x), vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + 1781f)), -417f, -718f));
    return -func_2(var_2.c.yw, var_3.wxw, Struct_3(func_1(~var_1, !arg_0.b.x, var_2.b.x & false, var_3.zyw), vec2<bool>(false, var_2.b.x)), 1u).b;
}

fn func_7(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(-arg_3.x, arg_2.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c.x, _wgslsmith_div_f32(arg_0.b.c.x, 107f), func_5(arg_0.c, arg_0.b, vec3<f32>(arg_2.b.c.x, 404f, 1612f)).a.c.x, 1530f))), vec2<bool>(all(vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_2.b.b.x, any(vec3<bool>(arg_2.b.b.x, arg_0.b.b.x, arg_2.b.b.x)))), all(!func_1(arg_2.d, arg_2.b.b.x, arg_0.b.b.x, arg_0.a.wyz).b)));
    let var_1 = arg_0.b.b.x;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(arg_1, arg_0.a), ~_wgslsmith_sub_i32(u_input.a.x, 2147483647i));
    var_2 = _wgslsmith_mod_vec2_i32(arg_3.xy, vec2<i32>(-_wgslsmith_mult_i32(~1i, ~(-877i)), ~(~arg_2.e << ((arg_0.c << (36145u % 32u)) % 32u))));
    var_2 = vec2<i32>(-2147483647i, 2735i) | select(vec2<i32>(var_0.a.a, var_0.a.a), arg_0.a.zz, (_wgslsmith_clamp_u32(18402u, arg_2.d.x, arg_2.c) & arg_0.d.x) >= u_input.b.x);
    return Struct_1(_wgslsmith_sub_i32(-18572i, 1i), !var_0.a.b, _wgslsmith_f_op_vec4_f32(arg_0.b.c - _wgslsmith_f_op_vec4_f32(step(var_0.a.c, arg_0.b.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_4(u_input.a, Struct_1(u_input.a.x, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, -2533f, 2641f, -205f)) * vec4<f32>(-1844f, 639f, 422f, 1189f))), 1u, _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.b.x, 51592u, 0u)), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), u_input.b.x & u_input.b.x, u_input.b.x, ~u_input.b.x), vec4<u32>(~4294967295u, 1u, 31713u, 0u)), func_6(func_1(~vec4<u32>(43783u, u_input.b.x, 0u, u_input.b.x), any(vec2<bool>(true, true)), true, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, func_6(Struct_1(u_input.a.x, vec2<bool>(true, false), vec4<f32>(-854f, 747f, -1317f, -206f))), -7797i)), u_input.a), Struct_4(u_input.a, func_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x << (4294967295u % 32u), ~u_input.b.x), all(vec2<bool>(true, false)) && true, true, u_input.a.yww), u_input.c.x, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(0u, u_input.c.x, 1u, u_input.b.x)) ^ _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.c.x, 0u, 65949u, u_input.c.x)), ~vec4<u32>(u_input.c.x, 6457u, 4294967295u, u_input.c.x)), u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x));
    var var_1 = -122f;
    var_1 = -867f;
    var_1 = -146f;
    let var_2 = vec4<bool>((select(true, -1i != u_input.a.x, !var_0.b.x) || false) | var_0.b.x, true, var_0.b.x, func_5(abs(0u), var_0, var_0.c.xwx).a.b.x);
    var_1 = _wgslsmith_f_op_f32(round(-463f));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2062f + -1021f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(404f + var_0.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~87676u);
}

