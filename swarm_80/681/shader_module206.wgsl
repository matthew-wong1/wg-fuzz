struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(select(-899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) - _wgslsmith_f_op_f32(sign(-2910f))))), !(!(_wgslsmith_f_op_f32(sign(744f)) != -906f))));
    let var_0 = select(vec2<bool>(any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), select(true, false, true) || true), vec2<bool>(true, true), all(vec3<bool>(true, true, false)));
    let var_1 = !select(select(select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, false, false), true), !vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(false, true, var_0.x)), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x | var_0.x, select(true, true, true), any(vec3<bool>(var_0.x, var_0.x, var_0.x)))), !(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, true), var_0.x)), var_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1320f, -1000f), vec2<f32>(1052f, 627f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, -1431f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-573f, -1258f))))))));
    let var_3 = any(vec4<bool>(!var_1.x, var_1.x, !any(vec2<bool>(var_1.x, true)), abs(arg_0) > reverseBits(arg_0))) || true;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(1453f, _wgslsmith_f_op_f32(f32(-1f) * -387f), select(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(638f)), -184f, _wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1120f, 430f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(arg_0);
    global0 = arg_0.c.x;
    var var_1 = !all(select(!vec2<bool>(arg_1.a.x, false), arg_1.a, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -149f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(27533u, firstLeadingBit(~vec4<i32>(arg_0.e, 1i, -29777i, 62264i)))).x - var_0.a.c.x);
    return true;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(-955f, 1312f)))), 1460f, func_4(Struct_1(vec2<bool>(true, true), 75810u << (arg_0.x % 32u), _wgslsmith_f_op_vec3_f32(func_3(arg_0.x, vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i))), firstTrailingBit(vec4<u32>(0u, 4294967295u, arg_0.x, arg_0.x)), max(u_input.a.x, -635i)), Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, true), true), 0u | arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1395f, 397f, 346f) * vec3<f32>(-100f, -1288f, 1067f)), vec4<u32>(4294967295u, arg_0.x, 61547u, 0u), 2147483647i)))));
    var var_0 = firstLeadingBit(34747i);
    return func_4(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), 1u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1040f, -275f, 503f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(956f, -591f, -707f), vec3<f32>(-1000f, -108f, 767f))))))), vec4<u32>(38089u, arg_0.x, 16315u, 0u), -u_input.a.x), Struct_1(vec2<bool>(!all(vec2<bool>(false, false)), true), 34320u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-192f, -1159f, 1888f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1221f, 570f, 174f) + vec3<f32>(-713f, -1199f, 413f)))), ~vec4<u32>(~4294967295u, ~arg_0.x, ~5578u, ~arg_0.x), u_input.a.x ^ u_input.a.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> bool {
    let var_0 = select(vec2<bool>(-arg_1 <= reverseBits(arg_1), func_2(max(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(63480u, 79152u, 4294967295u))) | true), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), select(false, false, false)), func_4(Struct_1(vec2<bool>(true, true), 78312u, vec3<f32>(1215f, 240f, 585f), vec4<u32>(4294967295u, 6762u, 55509u, 0u), arg_2.x), Struct_1(vec2<bool>(true, false), 49830u, vec3<f32>(615f, 399f, 476f), vec4<u32>(0u, 0u, 14215u, 10825u), arg_1))), any(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)));
    let var_1 = !select(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, false, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, false, var_0.x, false)), select(select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), select(!vec4<bool>(false, false, var_0.x, false), !vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), vec4<bool>(all(vec4<bool>(var_0.x, false, var_0.x, false)), var_0.x, var_0.x, all(var_0))), !vec4<bool>(true, 1i == arg_1, var_0.x, !var_0.x));
    global0 = 2522f;
    global0 = _wgslsmith_f_op_f32(round(573f));
    let var_2 = Struct_1(!select(select(vec2<bool>(false, true), var_0, !var_0), vec2<bool>(var_1.x, true), any(vec4<bool>(var_1.x, false, true, false))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(5203u, 0u, 1u), vec3<u32>(0u, 1u, 4294967295u)) | 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), min(~vec2<u32>(44143u, 1u), vec2<u32>(6542u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), -557f, _wgslsmith_f_op_f32(f32(-1f) * -992f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1347f, -844f, -196f), vec3<f32>(-919f, 506f, -306f)))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(93757u, 28413u, 15157u, 62512u))), vec4<u32>(1u, min(22268u, 95948u), _wgslsmith_mod_u32(1u, 53663u), firstLeadingBit(1u))), abs(abs(~vec4<u32>(1563u, 49771u, 66486u, 4294967295u))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(arg_2.x, arg_0.x, -1i))), reverseBits(-select(u_input.a.xxz, u_input.a.zzw, vec3<bool>(var_0.x, false, var_1.x)))));
    return abs(_wgslsmith_mod_u32(var_2.d.x, 6086u)) > _wgslsmith_div_u32(var_2.d.x, 29702u & var_2.d.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-625f)) * -957f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2186f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1143f, 704f, true)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(~(~29902u), arg_0)).x);
    global0 = -778f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(4294967295u, u_input.a)).x + _wgslsmith_f_op_f32(-1298f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-959f, 1053f))))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1392f + _wgslsmith_f_op_f32(-420f * 295f)) * _wgslsmith_f_op_f32(ceil(-905f)))))));
    return _wgslsmith_f_op_f32(min(-167f, -1383f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-750f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1864f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1681f, -1450f, 424f), vec3<f32>(-1091f, 975f, 699f), true)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(318f * 1330f) - _wgslsmith_f_op_f32(func_5(vec4<i32>(2147483647i, u_input.a.x, -14671i, u_input.a.x) ^ vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 37746i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), func_1(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.wx)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(trunc(771f)));
    var var_1 = firstTrailingBit(select(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-29787i, -22886i, -2147483647i, u_input.a.x), u_input.a), -6922i, i32(-1i) * -70523i), vec3<bool>(false, true, true))) >> (select(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), select(vec3<u32>(22379u, 0u, 37605u), vec3<u32>(1u, 62686u, 4294967295u), true))), firstLeadingBit(~vec3<u32>(105395u, 4294967295u, 4294967295u)), func_1(~abs(vec2<i32>(22642i, u_input.a.x)), -13921i, u_input.a.xx)) % vec3<u32>(32u));
    var var_2 = Struct_1(vec2<bool>(true, true), abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1356u, 105818u), vec4<u32>(1u, 27588u, 74406u, 0u)), ~_wgslsmith_mult_u32(0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2397f, -1456f, -1787f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -337f) * vec3<f32>(464f, var_0.x, var_0.x))))), vec3<bool>(false, true, false))), min(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), max(vec4<u32>(0u, 35434u, 1u, 67512u), vec4<u32>(9844u, 1u, 97734u, 1u)), reverseBits(vec4<u32>(2964u, 4294967295u, 4294967295u, 0u))), vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, abs(62644u), ~4294967295u), 35866u, select(24229u, 1u, false), select(_wgslsmith_dot_vec3_u32(vec3<u32>(8103u, 60608u, 1u), vec3<u32>(44600u, 13149u, 18247u)), ~4294967295u, true))), 0i);
    let var_3 = abs(var_2.d.wzw);
    let var_4 = firstTrailingBit(1u) > 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_2.d.x, var_2.d.x ^ _wgslsmith_div_u32(max(var_3.x, var_2.d.x), max(1u, 36565u))), var_3.x, -1728f);
}

