struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = -abs(u_input.c & ~2147483647i);
    let var_1 = max(36181i, _wgslsmith_add_i32(u_input.c, reverseBits(0i))) | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_0, var_0, -2147483647i, var_0), ~vec4<i32>(var_0, -48106i, 1i, 0i), select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(false, true, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), vec4<i32>(2147483647i, -1i, _wgslsmith_mod_i32(0i, -26802i), firstLeadingBit(u_input.c))), -2147483647i);
    let var_2 = !select(vec3<bool>(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1.x != any(arg_1.zy), true), select(vec3<bool>(true, false, arg_1.x), select(vec3<bool>(true, false, arg_1.x), arg_1, arg_1.x), !arg_1), arg_1);
    let var_3 = abs(0u);
    var var_4 = Struct_2(vec4<bool>(arg_1.x, true, !(var_0 >= (-72708i << (u_input.b.x % 32u))), any(!arg_1)), 1u, Struct_1(select(vec3<u32>(var_3, _wgslsmith_mult_u32(u_input.b.x, 11737u), u_input.a.x), vec3<u32>(_wgslsmith_div_u32(1u, var_3), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, var_3), u_input.a.zy), _wgslsmith_mod_u32(u_input.a.x, 48587u)), select(any(vec2<bool>(true, var_2.x)), arg_1.x, false || var_2.x)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.a.zz)) & _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.xz, vec2<u32>(u_input.b.x, var_3))), arg_0, ~(-var_0)), ~(~var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * _wgslsmith_f_op_f32(923f * arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(-1210f - _wgslsmith_f_op_f32(arg_0 * -1740f)))), -148f));
    return _wgslsmith_dot_vec4_i32(min(countOneBits(select(~vec4<i32>(-1i, 1i, u_input.c, var_4.c.d), vec4<i32>(-2147483647i, var_4.d, var_1, u_input.c) >> (vec4<u32>(var_3, var_3, 8481u, var_3) % vec4<u32>(32u)), true)), -firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-22381i, var_1, u_input.c, -2147483647i), vec4<i32>(0i, -1i, var_4.c.d, 1i)))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0, var_1), vec2<i32>(u_input.c, 1i)), ~vec2<i32>(u_input.c, 31297i)), 46858i), ~max(-1i, -1i | u_input.c), _wgslsmith_clamp_i32(select(abs(-1i), u_input.c, arg_1.x && arg_1.x), _wgslsmith_add_i32(2147483647i | u_input.c, ~u_input.c), -8542i), var_4.c.d));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<f32>) -> u32 {
    return 37534u;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    var var_0 = func_4(10408u, Struct_2(vec4<bool>(_wgslsmith_f_op_f32(-arg_1.x) != -1000f, -3468i <= func_3(794f, vec3<bool>(true, false, false)), (arg_0 | -18632i) != 11931i, any(vec4<bool>(true, true, true, true))), 43146u, Struct_1(vec3<u32>(~56798u, _wgslsmith_dot_vec4_u32(vec4<u32>(62347u, 0u, u_input.a.x, u_input.b.x), vec4<u32>(34244u, 4294967295u, 0u, 19739u)), 0u | u_input.b.x), ~(~19829u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(198f, arg_1.x)), u_input.c), -arg_0 ^ u_input.c, arg_1), vec2<u32>(~_wgslsmith_mod_u32(2526u, u_input.a.x), 0u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-979f, arg_1.x, -503f, arg_1.x) + vec4<f32>(-287f, -854f, arg_1.x, 107f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 256f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -181f, arg_1.x) - vec4<f32>(arg_1.x, 162f, arg_1.x, 222f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 1876f, arg_1.x)))))));
    var_0 = _wgslsmith_clamp_u32(36645u, u_input.a.x, _wgslsmith_clamp_u32(4294967295u, ~(~(~u_input.b.x)), u_input.a.x));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1948f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(-1015f, arg_1.x))), arg_1);
    var_1 = arg_1;
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_1.x, arg_1.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1011f, 1177f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 1144f, arg_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -182f, arg_1.x) + vec3<f32>(-337f, -1999f, -498f)), _wgslsmith_f_op_vec3_f32(-arg_1), true)), _wgslsmith_div_vec3_f32(vec3<f32>(-943f, arg_1.x, 1000f), arg_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 225f, var_1.x))))));
    return 1i;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = 38863u;
    var_0 = firstTrailingBit(arg_1.b);
    var var_1 = reverseBits(0i);
    let var_2 = arg_1.c.c;
    var var_3 = Struct_2(!(!arg_1.a), ~u_input.a.x, Struct_1(_wgslsmith_sub_vec3_u32(select(countOneBits(arg_1.c.a), firstLeadingBit(u_input.b), vec3<bool>(true, arg_1.a.x, arg_1.a.x)), vec3<u32>(arg_1.c.b, 30127u, 4294967295u) | u_input.a), 2872u, 1064f, arg_0), ~(-(~(-7706i)) & select(arg_0 & arg_0, arg_0, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * var_2)), 1179f, arg_2.x) + vec3<f32>(var_2, 637f, _wgslsmith_f_op_f32(max(arg_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1191f))))));
    return Struct_2(var_3.a, var_3.b << (_wgslsmith_div_u32(1u, 49932u) % 32u), Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.c.a.x, u_input.a.x), _wgslsmith_clamp_u32(var_3.c.b, 13445u, var_3.c.a.x)), u_input.b.x, 4294967295u), reverseBits(~(~14546u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_3.c.c, var_3.c.c)))), 49313i), -arg_1.c.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-669f, var_2, var_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, var_2) + vec3<f32>(arg_1.c.c, var_3.c.c, -815f)), true)))));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = func_5(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-89383i >> (0u % 32u), min(1873i, u_input.c), ~u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.c)), firstLeadingBit(~vec4<i32>(u_input.c, 39179i, u_input.c, u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 589f, 946f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(968f, -1000f, 870f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-965f, 1837f, 799f), vec3<f32>(2003f, 480f, -1562f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-351f, 477f, -563f) - vec3<f32>(-1252f, -624f, -209f))))), Struct_2(vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), false), reverseBits(arg_0), Struct_1(u_input.a, 1u, _wgslsmith_f_op_f32(select(-569f, _wgslsmith_f_op_f32(ceil(534f)), false)), func_3(-530f, select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), (func_3(251f, vec3<bool>(true, true, true)) ^ abs(45588i)) | u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1099f, 337f, -1799f)), vec3<f32>(-587f, 106f, 1170f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(632f, 100f))))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-396f, 1661f))))));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(select(~select(var_0.c.a, vec3<u32>(arg_0, 4294967295u, 10965u), true), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.c.a.yx, var_0.c.a.zz), min(49058u, 0u), arg_0), select(!vec3<bool>(var_0.a.x, false, true), select(vec3<bool>(true, var_0.a.x, true), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, true)), !var_0.a.wzy)), ~u_input.a ^ _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(4294967295u, arg_0, 1u)), vec3<u32>(4294967295u, 1u, u_input.b.x))), _wgslsmith_dot_vec2_u32(abs(u_input.a.xx), var_0.c.a.yx), _wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_sub_i32(countOneBits(~(i32(-1i) * -45463i)), -19860i));
    var var_2 = func_5(-(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, var_0.d, 2147483647i)), vec3<i32>(0i, 1i, 35410i))), func_5(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, var_0.d, var_0.d, 2147483647i), vec4<i32>(u_input.c, var_1.d, var_1.d, -49750i)), vec4<i32>(var_0.c.d, u_input.c, -1i, var_1.d)), var_1.d), Struct_2(vec4<bool>(all(var_0.a), false, !var_0.a.x, true), max(u_input.b.x, 4294967295u), func_5(u_input.c, Struct_2(var_0.a, u_input.b.x, Struct_1(u_input.b, 56154u, var_1.c, var_1.d), var_0.d, var_0.e), _wgslsmith_f_op_vec2_f32(var_0.e.zy + vec2<f32>(var_0.c.c, var_0.e.x))).c, var_1.d, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1309f), -727f, 777f)), _wgslsmith_f_op_vec2_f32(-var_0.e.xz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_0.e.xx)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, 144f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c, var_1.c) + vec2<f32>(-975f, var_1.c)))))))).c;
    var var_3 = func_5(~(-13423i), func_5(14231i, Struct_2(func_5(firstLeadingBit(var_1.d), Struct_2(vec4<bool>(var_0.a.x, true, false, var_0.a.x), 7981u, var_0.c, -31164i, vec3<f32>(var_1.c, 177f, 1798f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-178f, var_2.c)))).a, 4294967295u, Struct_1(max(var_0.c.a, vec3<u32>(var_1.b, var_2.a.x, 1u)), var_2.b ^ 1u, var_1.c, reverseBits(5069i)), _wgslsmith_mult_i32(abs(var_2.d), u_input.c), _wgslsmith_f_op_vec3_f32(var_0.e + var_0.e)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_1.c)), vec2<f32>(538f, -1015f)), var_0.e.yz, select(func_5(var_0.d, Struct_2(vec4<bool>(false, false, var_0.a.x, false), var_2.a.x, var_0.c, u_input.c, var_0.e), vec2<f32>(var_1.c, var_2.c)).a.zx, !var_0.a.wz, 4294967295u != var_1.a.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e.zz)), var_0.e.zz, select(true, true, var_0.a.x))));
    let var_4 = func_5(2147483647i, func_5(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 1i, var_2.d, -1i), vec4<i32>(-13764i, var_0.d, -2147483647i, 28152i), var_0.a), reverseBits(vec4<i32>(var_3.c.d, 13998i, var_3.c.d, var_3.c.d)))), func_5(var_3.d | ~(-1i), func_5(_wgslsmith_mult_i32(u_input.c, -36455i), Struct_2(var_0.a, 110069u, var_3.c, var_0.c.d, var_0.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.c, -174f))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.c.c), var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.c, var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c + var_1.c), _wgslsmith_f_op_f32(-var_0.e.x))), 747f, var_3.a.x)), 1312f));
    return vec4<bool>(!all(!func_5(var_0.d, Struct_2(vec4<bool>(false, var_3.a.x, true, false), 0u, var_1, var_2.d, var_0.e), vec2<f32>(var_2.c, var_2.c)).a.zz), false, false, ~func_2(var_2.d >> (33126u % 32u), _wgslsmith_f_op_vec3_f32(-var_0.e)) < 22770i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_1(~42486u), ~u_input.a.x, Struct_1(vec3<u32>(~(~u_input.a.x), ~4294967295u, 1u << (u_input.a.x % 32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(22616u, 4294967295u, u_input.b.x)), ~abs(1u)), _wgslsmith_f_op_f32(f32(-1f) * -566f), 1i), _wgslsmith_add_i32(-1i, firstTrailingBit(~u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, -471f, -1054f))));
    var var_1 = func_5(var_0.d, Struct_2(func_1(func_4(1u, Struct_2(var_0.a, 4294967295u, var_0.c, 9154i, vec3<f32>(783f, var_0.e.x, -1321f)), vec2<u32>(0u, 16622u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c, var_0.e.x, var_0.e.x, -514f)))), var_0.b & ~(var_0.c.b | 12784u), var_0.c, firstLeadingBit(~_wgslsmith_mult_i32(17212i, var_0.c.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, _wgslsmith_f_op_f32(f32(-1f) * -225f), 1214f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f), var_0.e.x))))).c;
    var var_2 = func_5(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1209f))), var_0.a.wwx), Struct_2(func_1(~1u), ~var_1.a.x, Struct_1(reverseBits(vec3<u32>(75122u, 4294967295u, 0u) | var_0.c.a), var_1.a.x, var_0.e.x, 16022i), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.c.d, var_0.d, 0i)), ~vec3<i32>(u_input.c, var_1.d, 26029i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.c)) + _wgslsmith_f_op_f32(var_0.c.c - 612f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-412f))), _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.e.zy, var_0.e.yz) + var_0.e.yz))));
    let var_3 = var_0.c;
    var_0 = Struct_2(vec4<bool>(true | any(vec3<bool>(false, var_2.a.x, false)), true, var_2.a.x, !func_1(~6564u).x), ~(~4294967295u), Struct_1(_wgslsmith_div_vec3_u32(~var_2.c.a, vec3<u32>(var_2.c.b, ~66655u, ~27166u)), reverseBits(_wgslsmith_mod_u32(u_input.b.x, var_0.c.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(abs(var_0.c.c))), -1000f, var_2.e.x >= _wgslsmith_f_op_f32(step(-1060f, 387f)))), ~min(var_1.d, var_3.d)), -(~_wgslsmith_mod_i32(~var_0.d, ~(-86019i))), _wgslsmith_f_op_vec3_f32(-var_2.e));
    var_0 = func_5((var_1.d | (~u_input.c ^ (u_input.c & 22250i))) >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 70150u), min(vec2<u32>(0u, u_input.b.x), var_3.a.yx))) % 32u), func_5(var_3.d, Struct_2(vec4<bool>(all(var_0.a.zz), any(var_2.a.wzw), false, var_0.a.x), 38043u, Struct_1(countOneBits(var_3.a), var_1.b, var_2.e.x, var_0.c.d), var_0.c.d, var_2.e), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.c, -1000f)) - _wgslsmith_f_op_f32(-var_2.e.x)), 1360f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_2.e.xy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.c, 635f)))))));
    var var_4 = Struct_1(var_2.c.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_3.c, 123f)), _wgslsmith_f_op_f32(trunc(-607f)))))), func_2(-select(-var_3.d, select(u_input.c, var_1.d, var_2.a.x), 47238i >= var_1.d), var_0.e));
    var_2 = func_5(0i | u_input.c, Struct_2(func_1(var_2.c.a.x), 1u, Struct_1(u_input.b, _wgslsmith_mult_u32(~var_0.b, _wgslsmith_mod_u32(var_3.b, var_1.a.x)), var_0.c.c, var_2.d), var_3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.e))))), _wgslsmith_f_op_vec2_f32(func_5(func_3(-292f, vec3<bool>(true, var_0.a.x, var_0.a.x)), func_5(var_3.d, func_5(1i, Struct_2(vec4<bool>(var_2.a.x, var_0.a.x, var_2.a.x, var_0.a.x), var_3.a.x, Struct_1(var_3.a, 28007u, -827f, u_input.c), -18564i, vec3<f32>(112f, var_1.c, 930f)), var_0.e.yz), _wgslsmith_f_op_vec2_f32(floor(var_2.e.xx))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.e.yz)))).e.xx - _wgslsmith_f_op_vec2_f32(var_0.e.xz + _wgslsmith_f_op_vec2_f32(var_2.e.zy - _wgslsmith_f_op_vec2_f32(-var_2.e.yx)))));
    var var_5 = ~_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.d, var_3.d, var_0.d, -2147483647i), vec4<i32>(var_3.d, u_input.c, var_4.d, u_input.c)) | abs(-17334i)), -_wgslsmith_mod_i32(var_0.d & var_1.d, _wgslsmith_mod_i32(23090i, var_3.d)), -2147483647i | _wgslsmith_mod_i32(func_5(var_2.d, Struct_2(vec4<bool>(var_2.a.x, false, false, true), var_0.c.a.x, var_2.c, u_input.c, var_2.e), vec2<f32>(382f, 640f)).d, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(584f, _wgslsmith_mult_vec2_u32(~vec2<u32>(~var_0.c.a.x, var_1.a.x), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~var_0.c.a.xz, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, var_1.a.x), vec2<u32>(var_0.b, var_1.b))), vec2<u32>(var_3.b, var_0.b))));
}

