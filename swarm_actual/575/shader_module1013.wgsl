struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(872f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(421f * 1441f)))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 474f) + 1396f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f))))));
    let var_1 = vec4<bool>(!(!(-1i != _wgslsmith_sub_i32(u_input.b.x, 7605i))), !any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), true, any(vec3<bool>(true, true, 4294967295u > select(u_input.e.x, u_input.c, false))));
    var var_2 = u_input.b.x;
    var var_3 = Struct_4(vec3<i32>(1i, _wgslsmith_sub_i32(2147483647i, abs(u_input.b.x)), -(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) >> (_wgslsmith_add_u32(0u, u_input.d) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, 1221f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -573f, var_0.x, 700f))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -2674f, 525f)))), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(326f, var_0.x, 968f) + vec3<f32>(187f, -197f, -1714f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -266f), vec2<f32>(-1497f, 2580f), abs(vec3<i32>(-2147483647i, 33630i, u_input.b.x) & u_input.b), _wgslsmith_f_op_f32(ceil(-155f))), vec4<u32>(u_input.e.x, abs(u_input.d), 70926u, 95509u) << (~vec4<u32>(0u, u_input.d, u_input.d, 62482u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 61133u, u_input.e.x), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(7053u, u_input.e.x, 1u, 4294967295u), vec4<u32>(u_input.d, 1u, u_input.e.x, 1065u), var_1), vec4<u32>(4294967295u, u_input.c, 45580u, u_input.a) ^ vec4<u32>(u_input.d, 64317u, u_input.e.x, u_input.a), vec4<u32>(15048u, u_input.c, 4294967295u, 1u) << (vec4<u32>(12101u, u_input.e.x, 1u, u_input.e.x) % vec4<u32>(32u))), ~vec4<u32>(0u, u_input.e.x, 46827u, u_input.e.x))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-590f, var_0.x, 820f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(593f * var_0.x), -190f), _wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(0i, -1i, -1i))), _wgslsmith_f_op_f32(-var_0.x)), ~(vec4<u32>(u_input.d, u_input.c, u_input.a, u_input.d) >> (vec4<u32>(u_input.c, 22361u, 32337u, 4294967295u) % vec4<u32>(32u))) >> (vec4<u32>(reverseBits(14469u), ~u_input.c, 19774u, 18474u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.e.x, 25252u, u_input.a) | vec4<u32>(u_input.e.x, 4294967295u, 1u, u_input.d), ~vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.d)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1000f, var_0.x), _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(var_0.x * 322f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 1651f)))), ~vec3<i32>(60626i, -25762i, -21372i) & -u_input.b, -340f), _wgslsmith_add_vec4_u32((vec4<u32>(0u, 16303u, u_input.c, u_input.d) & vec4<u32>(u_input.a, u_input.c, u_input.e.x, u_input.e.x)) | ~vec4<u32>(u_input.d, 2726u, 1u, u_input.a), countOneBits(~vec4<u32>(0u, 0u, u_input.d, u_input.e.x))), firstLeadingBit(vec4<u32>(1u, 1u, countOneBits(1u), ~24952u))));
    var var_4 = vec2<bool>(true, any(var_1.xzz));
    return _wgslsmith_f_op_vec2_f32(-var_0);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), !(!select(false, true, true)), !(_wgslsmith_f_op_f32(round(-685f)) <= _wgslsmith_div_f32(222f, -1000f)), true), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), false), vec4<bool>((u_input.d << (u_input.e.x % 32u)) >= 1u, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, any(vec2<bool>(false, false)), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_2 = 1u > u_input.e.x;
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(reverseBits(1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 69622i, 43353i), vec4<i32>(u_input.b.x, 31696i, -1i, u_input.b.x)), _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), ~u_input.b.x)));
    return Struct_1(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-394f - var_0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-128f)), var_0.x))))), vec3<i32>(min(1i, select(~var_3.x, min(u_input.b.x, 36332i), var_1.x)), u_input.b.x, var_3.x), _wgslsmith_f_op_f32(1846f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_3(func_2());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)), var_0.a.b.x));
    var var_2 = Struct_3(func_2());
    var_2 = var_0;
    var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_div_vec3_i32(vec3<i32>(func_2().c.x, -1i >> (u_input.e.x % 32u), 0i), var_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1861f + _wgslsmith_f_op_f32(select(-1569f, var_1, false))))));
    return Struct_4(countOneBits(countOneBits(vec3<i32>(1i, var_0.a.c.x, _wgslsmith_sub_i32(0i, -1i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1287f * -494f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -509f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b.x, -425f, -1000f, -130f) * vec4<f32>(var_0.a.a, -942f, var_1, 113f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1303f, var_2.a.b.x, 3008f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.a))), var_2.a.b, ~(-vec3<i32>(-1710i, var_0.a.c.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, -1000f))), ~(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.e.x, 33358u, 1u, u_input.a)) | _wgslsmith_sub_vec4_u32(vec4<u32>(8231u, u_input.e.x, 4294967295u, u_input.d), ~vec4<u32>(1u, 41690u, u_input.d, u_input.c)), vec4<u32>(9739u, 41694u, ~(~u_input.c), 1u)), Struct_2(vec3<f32>(-1193f, var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.d - var_1))), func_2(), abs((vec4<u32>(u_input.d, u_input.d, 26047u, u_input.d) << (vec4<u32>(u_input.a, 69717u, 1u, 54174u) % vec4<u32>(32u))) & ~vec4<u32>(u_input.e.x, u_input.a, 36135u, 29841u)), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, u_input.e.x, 77342u, 68402u), ~vec4<u32>(9727u, 18858u, 0u, u_input.c)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.e.x, u_input.d), 11388u, 1u >> (u_input.c % 32u)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1164f, -1548f, 262f), vec3<f32>(var_2.a.d, -533f, var_2.a.a), false)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1, -1228f, var_0.a.b.x), vec3<f32>(var_0.a.d, -1176f, -1629f))))), func_2(), reverseBits(~vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.c)), ~select(vec4<u32>(0u, u_input.d, 1u, 126515u), reverseBits(vec4<u32>(u_input.c, u_input.d, u_input.d, 4294967295u)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 44028i, 76403i, -12886i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -10321i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 19591i), vec4<i32>(u_input.b.x, -1i, -2147483647i, u_input.b.x))));
    var_0 = Struct_4(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(-var_0.b)) - vec4<f32>(var_0.e.a.x, _wgslsmith_f_op_f32(ceil(-326f)), 771f, 1000f)), var_0.c, func_1(firstLeadingBit(vec4<i32>(~(-46850i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(-34103i, 24275i), min(var_0.d.b.c.x, var_0.d.b.c.x)))).e, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-966f, _wgslsmith_f_op_f32(-798f + 1277f), var_0.c.b.d)), var_0.d.b, ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, u_input.c, var_0.e.d.x, 0u), var_0.c.d), var_0.d.d));
    var var_1 = Struct_3(var_0.e.b);
    var var_2 = Struct_3(Struct_1(1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.b.b))), abs(var_0.c.b.c), -1402f));
    var_1 = Struct_3(var_2.a);
    var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-343f))), vec2<f32>(_wgslsmith_div_f32(201f, -838f), -738f), vec3<i32>(var_0.e.b.c.x, func_1(vec4<i32>(var_0.e.b.c.x, var_2.a.c.x, 24905i, -1i)).e.b.c.x, 7621i) & _wgslsmith_add_vec3_i32(countOneBits(var_1.a.c), abs(var_0.a)), _wgslsmith_f_op_f32(var_0.b.x * -811f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32((_wgslsmith_sub_i32(var_0.a.x, var_2.a.c.x) ^ 4176i) >> (~(var_0.c.d.x << (u_input.c % 32u)) % 32u), ~var_1.a.c.x & firstLeadingBit(-1i), var_0.e.b.c.x), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(func_2().c.x, max(var_0.d.b.c.x, var_0.d.b.c.x), _wgslsmith_clamp_i32(11963i, var_1.a.c.x, var_2.a.c.x)), vec3<i32>(0i, -1i, -1i)), vec3<i32>(-1i, _wgslsmith_mod_i32(2147483647i, u_input.b.x), var_0.d.b.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(753f, 1585f)), _wgslsmith_f_op_f32(var_0.b.x - -630f))), u_input.c);
}

