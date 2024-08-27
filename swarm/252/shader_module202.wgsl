struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    var var_0 = ~(_wgslsmith_div_u32(select(5422u, 1u, false) | (0u ^ u_input.b.x), 19555u) << (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u));
    var var_1 = firstTrailingBit(select(vec3<u32>(abs(~20019u), u_input.b.x, 4294967295u), vec3<u32>(0u >> (u_input.c.x % 32u), 58253u, _wgslsmith_clamp_u32(u_input.c.x, 89343u, 4676u)) | _wgslsmith_add_vec3_u32(vec3<u32>(5538u, 4294967295u, u_input.b.x) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, 0u, 4294967295u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = ~firstTrailingBit(u_input.d);
    var var_3 = Struct_1(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f + -1512f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-530f, 261f, false)))))) - 121f), vec4<u32>(_wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_1.x, var_1.x), vec4<u32>(u_input.c.x, u_input.b.x, var_1.x, 1u))), 0u, abs(var_1.x), var_1.x >> (_wgslsmith_mod_u32(select(u_input.c.x, 30418u, true), u_input.b.x) % 32u)), vec2<bool>(true, max(_wgslsmith_mult_i32(u_input.d, u_input.a.x), _wgslsmith_mult_i32(-28090i, var_2)) > _wgslsmith_sub_i32(abs(var_2), reverseBits(u_input.a.x))));
    var var_4 = firstTrailingBit(~min(_wgslsmith_clamp_i32(var_2, 43357i & var_2, u_input.d), abs(-1i) & (458i << (u_input.b.x % 32u))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b, var_3.b), vec2<f32>(var_3.b, 912f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.b, var_3.b))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) * vec2<f32>(var_3.b, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, -1894f))))))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = var_0.c;
    var var_2 = abs(var_0.c.xzx);
    var var_3 = -585f;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * arg_2.wz);
    return Struct_1(_wgslsmith_mod_u32(select(81979u, abs(_wgslsmith_clamp_u32(28008u, u_input.c.x, arg_0)), arg_1.x), firstLeadingBit(~arg_3.a)), -799f, _wgslsmith_mod_vec4_u32(~(var_0.c << (var_0.c % vec4<u32>(32u))), select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(49601u, u_input.b.x, var_1.x, 4294967295u), arg_3.c), ~vec4<u32>(41063u, 43395u, 0u, 73567u)), _wgslsmith_mod_vec4_u32(select(var_0.c, vec4<u32>(arg_3.a, 86944u, 23328u, var_0.a), arg_1.x), vec4<u32>(0u, arg_0, var_0.c.x, 35461u)), !vec4<bool>(var_0.d.x, true, arg_3.d.x, arg_3.d.x))), vec2<bool>(!any(select(vec3<bool>(false, false, var_0.d.x), vec3<bool>(arg_3.d.x, false, arg_3.d.x), true)), var_0.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(u_input.d, u_input.d, -1i))), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, 0i, u_input.d)), vec3<i32>(u_input.d, u_input.a.x, 1i))) | u_input.d;
    let var_1 = Struct_1(countOneBits(u_input.c.x), _wgslsmith_f_op_f32(-1f), reverseBits(vec4<u32>(~arg_3.a, 1u, u_input.b.x, arg_3.a)), !vec2<bool>(select(arg_3.d.x, false, any(vec4<bool>(false, arg_3.d.x, true, arg_3.d.x))), arg_0.d.x));
    let var_2 = vec3<f32>(arg_3.b, arg_1.x, arg_2);
    var var_3 = !(false != any(vec4<bool>(true, arg_3.d.x, true, true)));
    var var_4 = u_input.a;
    return func_2(_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(4294967295u), select(var_1.c.x, _wgslsmith_sub_u32(arg_3.a, 4294967295u) ^ 1u, (i32(-1i) * -28905i) == min(0i, u_input.a.x))), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.a, 30301u, 13792u), vec4<u32>(u_input.c.x, 4090u, 0u, arg_3.a)) > min(var_1.c.x, ~1u), arg_0.d.x | arg_3.d.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(ceil(var_1.b)), -1033f)), vec4<f32>(var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(f32(-1f) * -547f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + var_2.x) - _wgslsmith_div_f32(523f, arg_3.b)), arg_0.b)), func_2(firstLeadingBit(52581u), select(vec2<bool>(all(vec4<bool>(var_1.d.x, false, true, arg_0.d.x)), false), vec2<bool>(var_1.d.x, !var_1.d.x), !(!var_1.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-932f, _wgslsmith_f_op_f32(f32(-1f) * -1071f), arg_1.x, arg_3.b))), Struct_1(reverseBits(~var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_0.b), _wgslsmith_mult_vec4_u32(arg_3.c, arg_0.c), vec2<bool>(arg_0.d.x, true))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a >> (111164u % 32u), -1093f, firstLeadingBit(firstLeadingBit(arg_0.c) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_0.a, arg_0.a, arg_0.a), arg_0.c)) ^ func_2(0u, func_4(func_2(75846u, vec2<bool>(arg_0.d.x, arg_0.d.x), vec4<f32>(arg_0.b, -1000f, arg_0.b, arg_0.b), Struct_1(u_input.c.x, -212f, arg_0.c, vec2<bool>(arg_0.d.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1000f, arg_0.b, -284f)), _wgslsmith_f_op_f32(-2653f * arg_0.b), Struct_1(arg_0.c.x, arg_0.b, arg_0.c, vec2<bool>(true, true))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1298f, 366f, arg_0.b, arg_0.b), vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))), Struct_1(1u, arg_0.b, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, arg_0.c.x, u_input.b.x, arg_0.c.x), arg_0.c), !arg_0.d)).c, arg_0.d);
    var_0 = func_2(u_input.b.x << (u_input.c.x % 32u), vec2<bool>(true, var_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 1000f, var_0.b, -606f))))), func_4(func_2(countOneBits(var_0.a), func_4(Struct_1(0u, arg_0.b, vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, var_0.a), vec2<bool>(var_0.d.x, var_0.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, var_0.b, -735f), vec4<f32>(arg_0.b, var_0.b, -1303f, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -205f), Struct_1(0u, arg_0.b, vec4<u32>(u_input.c.x, u_input.c.x, arg_0.c.x, arg_0.a), vec2<bool>(true, false))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, arg_0.b, var_0.b, arg_0.b))), arg_0), vec4<f32>(-1630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(exp2(arg_0.b)), -1000f), -725f, Struct_1(~83616u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-840f, var_0.b) - var_0.b), arg_0.c, arg_0.d)));
    var var_1 = Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_vec2_f32(func_3()).x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(sign(-1000f)))), ~arg_0.c, arg_0.d);
    var_1 = Struct_1(_wgslsmith_sub_u32(var_1.a, _wgslsmith_sub_u32(var_0.a, min(_wgslsmith_dot_vec3_u32(vec3<u32>(50971u, 1u, var_0.c.x), vec3<u32>(var_0.c.x, 4294967295u, var_1.c.x)), 25278u & var_0.a))), var_1.b, func_2(4294967295u, !vec2<bool>(select(true, var_0.d.x, arg_0.d.x), arg_0.d.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, var_1.b, var_0.b, arg_0.b), vec4<f32>(687f, -778f, -1000f, var_1.b))), vec4<f32>(-1000f, var_1.b, 401f, 1703f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1512f, -1000f, 193f, arg_0.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(133f, arg_0.b, arg_0.b, -395f), vec4<f32>(1210f, 260f, var_0.b, -1616f))))), func_4(Struct_1(0u, var_1.b, arg_0.c, var_0.d), vec4<f32>(874f, -1000f, 2049f, var_1.b), arg_0.b, func_2(arg_0.c.x, arg_0.d, vec4<f32>(-175f, var_0.b, -1000f, var_0.b), Struct_1(var_1.a, var_0.b, vec4<u32>(5145u, u_input.b.x, var_0.a, var_1.c.x), var_0.d))).d.x)), arg_0).c, !(!var_0.d));
    var var_2 = vec3<f32>(548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(984f))))), arg_0.b);
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~func_2(reverseBits(1u), func_4(Struct_1(var_1.c.x, -836f, var_1.c, vec2<bool>(var_0.d.x, arg_0.d.x)), vec4<f32>(1557f, -1019f, var_2.x, 519f), 751f, Struct_1(u_input.c.x, 1000f, vec4<u32>(u_input.c.x, var_0.a, var_1.c.x, var_1.a), var_1.d)).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_2.x, 478f, 1231f)), arg_0).c.zz, var_0.c.zy), 71404u);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = !vec2<bool>(!(!arg_3.d.x), !(_wgslsmith_f_op_f32(var_0.b - arg_0.b) <= arg_3.b));
    var_0 = func_4(Struct_1(arg_1 & 15337u, _wgslsmith_f_op_f32(f32(-1f) * -1136f), ~(~vec4<u32>(arg_3.c.x, arg_3.c.x, u_input.b.x, 0u)) << (vec4<u32>(_wgslsmith_sub_u32(arg_1, 31462u), max(arg_1, 52367u), _wgslsmith_mod_u32(arg_0.a, 4294967295u), ~4294967295u) % vec4<u32>(32u)), arg_3.d), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(493f * -458f)), -925f, arg_3.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-462f, 784f)))))), arg_3);
    let var_2 = arg_0;
    var_0 = func_4(Struct_1(24534u, 1237f, _wgslsmith_clamp_vec4_u32(select(arg_0.c, vec4<u32>(3199u, 0u, var_2.a, 25106u), vec4<bool>(false, arg_0.d.x, true, var_2.d.x)), vec4<u32>(arg_2.x, arg_1, 42579u, 23833u) & vec4<u32>(arg_0.c.x, 4294967295u, var_2.a, 24485u), select(vec4<u32>(arg_1, arg_0.a, u_input.b.x, arg_3.c.x), vec4<u32>(0u, 1u, 29525u, u_input.c.x), var_0.d.x)) & _wgslsmith_add_vec4_u32(func_4(var_2, vec4<f32>(arg_3.b, arg_0.b, 1062f, -479f), var_0.b, Struct_1(arg_0.a, 1212f, arg_3.c, var_2.d)).c, ~vec4<u32>(u_input.c.x, 4294967295u, arg_3.a, 4294967295u)), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_3.b, -584f), _wgslsmith_f_op_f32(min(arg_3.b, -1000f)), _wgslsmith_f_op_f32(floor(-997f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, 722f, false)) * -2907f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -557f)), -1090f)), arg_3);
    return var_2;
}

fn func_1() -> u32 {
    var var_0 = func_6(Struct_1(func_5(func_4(func_2(u_input.c.x, vec2<bool>(true, false), vec4<f32>(1644f, -894f, 786f, -237f), Struct_1(u_input.c.x, 1412f, vec4<u32>(u_input.c.x, 1409u, 40377u, 33691u), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -119f, -685f, -306f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(u_input.b.x, -302f, vec4<u32>(0u, 4294967295u, u_input.b.x, 1u), vec2<bool>(false, true)))), -1053f, vec4<u32>(_wgslsmith_sub_u32(~1989u, 0u), ~u_input.b.x, _wgslsmith_mult_u32(func_4(Struct_1(u_input.c.x, 338f, vec4<u32>(12246u, 38934u, u_input.c.x, u_input.b.x), vec2<bool>(false, false)), vec4<f32>(1231f, -909f, 299f, -1217f), -391f, Struct_1(5073u, 458f, vec4<u32>(17720u, 34498u, u_input.c.x, 60524u), vec2<bool>(false, true))).a, ~0u), ~1u), !func_4(func_4(Struct_1(u_input.b.x, -892f, vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 4294967295u), vec2<bool>(false, false)), vec4<f32>(1404f, 374f, -805f, 1201f), 545f, Struct_1(u_input.b.x, 1000f, vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1100f, -984f, 658f, -316f))), _wgslsmith_f_op_f32(step(1000f, -771f)), func_4(Struct_1(u_input.b.x, 746f, vec4<u32>(u_input.b.x, 4294967295u, u_input.c.x, u_input.c.x), vec2<bool>(false, false)), vec4<f32>(-1155f, -952f, 548f, -1314f), -1000f, Struct_1(u_input.b.x, -1000f, vec4<u32>(u_input.c.x, 16087u, 17791u, 33016u), vec2<bool>(false, true)))).d), ~max(~u_input.b.x, u_input.c.x) ^ 8069u, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(u_input.b.x, 0u, u_input.c.x) >> (vec3<u32>(1495u, 14665u, u_input.b.x) % vec3<u32>(32u))), abs(vec3<u32>(4294967295u, u_input.c.x, 39850u)), vec3<u32>(1u, ~1u, u_input.b.x)), func_4(func_2(0u, select(vec2<bool>(false, true), vec2<bool>(false, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, 778f, 413f, -622f))), Struct_1(u_input.b.x, _wgslsmith_f_op_f32(ceil(-591f)), vec4<u32>(44795u, 78015u, 4294967295u, u_input.b.x), func_2(4294967295u, vec2<bool>(false, false), vec4<f32>(1000f, 2128f, -1292f, 1000f), Struct_1(0u, -103f, vec4<u32>(29063u, 4294967295u, 65936u, 70702u), vec2<bool>(false, true))).d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1505f, 127f, -2541f, -813f), vec4<f32>(-1595f, -140f, -1130f, 1000f))))), -658f, Struct_1(_wgslsmith_add_u32(0u, u_input.c.x) | ~u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-384f)), _wgslsmith_f_op_f32(399f + -1000f)), ~max(vec4<u32>(u_input.b.x, u_input.c.x, 38164u, 47348u), vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x)), func_4(Struct_1(u_input.b.x, 1036f, vec4<u32>(27424u, 19093u, u_input.b.x, u_input.b.x), vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -616f, -417f, -2325f), vec4<f32>(-1104f, 1531f, -387f, -645f))), _wgslsmith_f_op_f32(-2201f + -1000f), Struct_1(0u, -948f, vec4<u32>(u_input.b.x, 37298u, 1u, u_input.c.x), vec2<bool>(true, true))).d)));
    var_0 = Struct_1(~(~(~var_0.c.x)), -1339f, vec4<u32>(49981u >> (0u % 32u), u_input.c.x, u_input.b.x, var_0.c.x), var_0.d);
    var var_1 = var_0.d.x;
    let var_2 = Struct_1(1u ^ u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + 780f), vec4<u32>((10992u | (u_input.b.x >> (var_0.a % 32u))) << ((var_0.a | u_input.b.x) % 32u), _wgslsmith_mod_u32(~abs(var_0.c.x), ~var_0.c.x), var_0.c.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(4163u, u_input.c.x), var_0.c.wy), select(u_input.b.x, 35865u, any(!vec4<bool>(true, false, var_0.d.x, false)))), vec2<bool>(all(vec4<bool>(func_4(Struct_1(4294967295u, var_0.b, var_0.c, vec2<bool>(true, true)), vec4<f32>(var_0.b, var_0.b, var_0.b, -2517f), -662f, Struct_1(0u, var_0.b, var_0.c, var_0.d)).d.x, true, all(vec3<bool>(var_0.d.x, true, var_0.d.x)), true)), func_6(Struct_1(var_0.c.x, _wgslsmith_div_f32(var_0.b, var_0.b), var_0.c & var_0.c, !var_0.d), _wgslsmith_div_u32(var_0.c.x, 0u), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_0.c.wxz, var_0.c.xyx), func_4(Struct_1(18041u, var_0.b, var_0.c, vec2<bool>(true, false)), vec4<f32>(var_0.b, var_0.b, 1188f, var_0.b), var_0.b, Struct_1(52197u, 1108f, vec4<u32>(24174u, u_input.c.x, 8948u, var_0.a), vec2<bool>(true, false))).c.xzx), func_4(Struct_1(4294967295u, var_0.b, var_0.c, var_0.d), vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b), _wgslsmith_f_op_f32(-var_0.b), Struct_1(0u, 479f, vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 16997u), var_0.d))).d.x));
    return _wgslsmith_add_u32(var_0.a, _wgslsmith_add_u32(var_2.c.x, ~abs(_wgslsmith_dot_vec3_u32(var_0.c.zxw, var_2.c.zyw))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(43274u, _wgslsmith_f_op_f32(min(-2231f, 613f)), vec4<u32>(firstTrailingBit(73999u >> (func_1() % 32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(69918u & u_input.b.x, u_input.c.x), 46564u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 24955u, u_input.c.x, u_input.c.x), vec4<u32>(47806u, u_input.b.x, 16284u, u_input.b.x) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 112766u) % vec4<u32>(32u))), _wgslsmith_mult_u32(u_input.c.x, 1u)), 1u), !func_4(func_2(~56457u, func_2(38371u, vec2<bool>(false, true), vec4<f32>(-627f, -360f, 748f, 422f), Struct_1(4294967295u, -2057f, vec4<u32>(24326u, u_input.b.x, u_input.c.x, 0u), vec2<bool>(true, true))).d, vec4<f32>(307f, 759f, 971f, -390f), Struct_1(4294967295u, -207f, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(784f * -1944f), _wgslsmith_f_op_f32(max(-876f, 1000f)), -1000f, -450f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1282f * 320f))), func_6(func_2(u_input.b.x, vec2<bool>(false, true), vec4<f32>(611f, -1284f, -975f, -102f), Struct_1(4294967295u, -1000f, vec4<u32>(56408u, u_input.b.x, u_input.b.x, 15681u), vec2<bool>(true, true))), 25972u, vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), Struct_1(0u, 1000f, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 24162u), vec2<bool>(false, true)))).d);
    var var_1 = vec4<bool>(func_4(Struct_1(~var_0.a, -184f, ~func_6(Struct_1(u_input.c.x, 866f, vec4<u32>(var_0.c.x, u_input.b.x, 0u, var_0.a), var_0.d), 4294967295u, var_0.c.wxx, Struct_1(var_0.c.x, 393f, var_0.c, var_0.d)).c, !vec2<bool>(var_0.d.x, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b - var_0.b), -2266f, _wgslsmith_f_op_f32(var_0.b * 1455f), _wgslsmith_f_op_f32(max(-459f, -397f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1844f, var_0.b, var_0.b, var_0.b)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -360f))), func_6(Struct_1(~9694u, _wgslsmith_f_op_f32(-var_0.b), var_0.c >> (vec4<u32>(33438u, 41817u, 24037u, 68292u) % vec4<u32>(32u)), var_0.d), firstLeadingBit(~u_input.b.x), vec3<u32>(48552u, ~1u, 4294967295u), Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(floor(var_0.b)), vec4<u32>(var_0.c.x, 9630u, 987u, u_input.c.x), func_4(Struct_1(u_input.b.x, var_0.b, vec4<u32>(var_0.c.x, var_0.c.x, u_input.c.x, var_0.c.x), vec2<bool>(true, var_0.d.x)), vec4<f32>(185f, var_0.b, -512f, -462f), var_0.b, Struct_1(u_input.c.x, var_0.b, var_0.c, var_0.d)).d))).d.x, !func_2(u_input.b.x, vec2<bool>(func_6(Struct_1(0u, var_0.b, vec4<u32>(var_0.c.x, 4294967295u, u_input.b.x, u_input.c.x), vec2<bool>(true, true)), 4294967295u, var_0.c.zyw, Struct_1(u_input.b.x, 667f, vec4<u32>(40151u, 0u, u_input.b.x, 4294967295u), vec2<bool>(true, false))).d.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1575f, var_0.b, var_0.b, var_0.b))), func_4(func_4(Struct_1(38686u, 298f, vec4<u32>(0u, var_0.c.x, 0u, var_0.c.x), vec2<bool>(false, true)), vec4<f32>(1335f, var_0.b, -2030f, -1962f), var_0.b, Struct_1(121568u, var_0.b, var_0.c, var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -150f, var_0.b, -673f) * vec4<f32>(-138f, -1301f, -919f, 761f)), _wgslsmith_f_op_f32(var_0.b + var_0.b), func_4(Struct_1(u_input.b.x, var_0.b, vec4<u32>(0u, u_input.b.x, var_0.c.x, 16186u), vec2<bool>(var_0.d.x, var_0.d.x)), vec4<f32>(-343f, var_0.b, 562f, 871f), var_0.b, Struct_1(u_input.b.x, -622f, var_0.c, vec2<bool>(var_0.d.x, var_0.d.x))))).d.x, var_0.d.x, !var_0.d.x);
    var_1 = !select(select(select(select(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_1.x, var_0.d.x, true), var_1.x), !vec4<bool>(var_1.x, false, false, true), vec4<bool>(false, var_1.x, var_0.d.x, false)), select(!vec4<bool>(false, var_1.x, true, false), vec4<bool>(var_0.d.x, false, var_0.d.x, var_0.d.x), any(var_1.ww)), vec4<bool>(select(var_1.x, var_0.d.x, false), all(vec4<bool>(false, var_1.x, false, var_1.x)), var_1.x && var_0.d.x, false)), !select(!vec4<bool>(var_1.x, var_1.x, true, true), select(vec4<bool>(false, false, true, var_0.d.x), vec4<bool>(var_1.x, false, var_1.x, var_0.d.x), var_1.x), vec4<bool>(var_1.x, var_0.d.x, false, false)), select(!(!vec4<bool>(var_0.d.x, var_1.x, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, false, var_1.x, false), var_0.d.x), !vec4<bool>(var_0.d.x, true, false, var_1.x)), vec4<bool>(var_0.d.x, true, select(true, var_0.d.x, true), false)));
    let var_2 = func_2(1u, vec2<bool>(0i > _wgslsmith_mult_i32(u_input.d, ~24065i), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, 216f, var_0.b, -637f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b))), vec4<f32>(var_0.b, -538f, var_0.b, var_0.b))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 1156f, -1238f, -1908f), vec4<f32>(var_0.b, var_0.b, 508f, var_0.b), false))) * vec4<f32>(func_2(u_input.c.x, var_0.d, vec4<f32>(-997f, var_0.b, var_0.b, 113f), Struct_1(var_0.c.x, 918f, var_0.c, vec2<bool>(false, false))).b, 2814f, -1045f, var_0.b))), Struct_1(firstTrailingBit(min(firstLeadingBit(1u), _wgslsmith_mult_u32(1u, 4294967295u))), _wgslsmith_f_op_vec2_f32(func_3()).x, vec4<u32>(max(u_input.c.x, 1u) | _wgslsmith_mod_u32(u_input.c.x, 0u), ~4294967295u, func_2(~4294967295u, func_6(Struct_1(u_input.c.x, var_0.b, vec4<u32>(15106u, 76450u, u_input.c.x, u_input.b.x), var_1.zw), u_input.c.x, vec3<u32>(u_input.b.x, 1u, 1u), Struct_1(34169u, -111f, var_0.c, vec2<bool>(var_1.x, false))).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, -479f, 2098f, 1320f) + vec4<f32>(var_0.b, -203f, var_0.b, var_0.b)), Struct_1(var_0.c.x, var_0.b, var_0.c, vec2<bool>(var_1.x, true))).a, _wgslsmith_mult_u32(u_input.c.x, ~1u)), var_1.wy));
    var_1 = select(!select(vec4<bool>(var_1.x, !var_2.d.x, false, 1150f == var_2.b), select(vec4<bool>(false, var_1.x, false, false), !vec4<bool>(var_0.d.x, var_2.d.x, var_2.d.x, true), !vec4<bool>(var_0.d.x, false, false, false)), var_0.d.x), select(!(!select(vec4<bool>(false, true, var_0.d.x, var_0.d.x), vec4<bool>(false, false, var_1.x, false), vec4<bool>(false, false, true, var_0.d.x))), select(!vec4<bool>(true, false, var_1.x, var_2.d.x), vec4<bool>(var_1.x, var_1.x & false, var_2.b == 1173f, var_2.d.x), !(!vec4<bool>(true, false, var_1.x, false))), !vec4<bool>(var_2.d.x, true, !var_0.d.x, true)), 429f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.b)), var_2.b)));
    let var_3 = all(!(!(!var_1.xxy)));
    var_0 = var_2;
    var_0 = var_2;
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2213f), var_0.b, 528f, 1616f), ~var_0.c.xww, 4294967295u);
}

