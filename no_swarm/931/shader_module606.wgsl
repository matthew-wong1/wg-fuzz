struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.d;
    var_0 = arg_3.d >> ((_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.e, u_input.a, arg_2.x, 52349u), vec4<u32>(58779u, 1u, 28268u, u_input.a)), u_input.a) << (u_input.a % 32u)) % 32u);
    let var_1 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, -535f))))))));
    var var_2 = 1u;
    var var_3 = arg_3;
    return _wgslsmith_f_op_f32(step(295f, var_1.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - -804f) - 1324f)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1625f, -1282f)))), u_input.a), (_wgslsmith_f_op_f32(func_3(vec4<f32>(-451f, -159f, 1821f, 666f), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), vec2<u32>(u_input.a, 8015u) ^ arg_2.xy, Struct_2(Struct_1(false, 189f, vec3<bool>(true, true, false), 293f, arg_2.x), false, vec4<bool>(false, true, false, true), 0i))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -420f))) & false, select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), false), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, false, true), true), true), 0i >> (~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(63452u, u_input.a)), ~1u) % 32u));
    var var_1 = Struct_2(var_0.a, var_0.b, var_0.c, _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, arg_1), arg_0.x));
    let var_2 = var_0;
    var_1 = var_0;
    var var_3 = var_0.d;
    return Struct_1(!all(vec4<bool>(true, var_2.a.a, 447f <= var_2.a.d, any(var_0.c.yw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.b))) - 1080f)), var_2.a.c, -1928f, _wgslsmith_mult_u32(u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.e, 8048u, 2882u, 2897u), firstTrailingBit(vec4<u32>(var_0.a.e, 11160u, 0u, u_input.a))) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.e, 1u, 4294967295u, arg_2.x) >> ((vec4<u32>(4294967295u, var_0.a.e, arg_2.x, var_1.a.e) & vec4<u32>(0u, var_1.a.e, 0u, 15566u)) % vec4<u32>(32u)), countOneBits(firstTrailingBit(vec4<u32>(var_1.a.e, arg_2.x, var_2.a.e, 38831u))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = 745f;
    let var_1 = Struct_2(func_2(select(vec4<i32>(firstTrailingBit(-81179i), 12710i, 14980i, -2147483647i), ~(-vec4<i32>(2147483647i, -63558i, 56568i, -2147483647i)), vec4<bool>(true, true, true, any(vec3<bool>(false, true, true)))), -1i, vec3<u32>(_wgslsmith_div_u32(u_input.a, 0u) << (7412u % 32u), _wgslsmith_clamp_u32(u_input.a, abs(12211u), ~u_input.a), ~121993u)), arg_0, select(!select(vec4<bool>(true, true, arg_0, true), !vec4<bool>(true, arg_0, false, true), -1756f > var_0), !vec4<bool>(arg_0, true, !arg_0, true), !(!select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), reverseBits(-(~1i)));
    var var_2 = func_2(vec4<i32>(i32(-1i) * -8612i, 12514i, var_1.d, 0i), 30950i, abs(~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 22669u, 36711u)), reverseBits(vec3<u32>(var_1.a.e, u_input.a, 4294967295u)))));
    let var_3 = var_1;
    let var_4 = func_2(~reverseBits(vec4<i32>(min(-1i, var_1.d), _wgslsmith_mod_i32(0i, 2147483647i), abs(var_1.d), var_1.d)), var_3.d, _wgslsmith_mod_vec3_u32(~min(abs(vec3<u32>(var_3.a.e, 13730u, 0u)), vec3<u32>(u_input.a, 63379u, var_2.e)), ~max(vec3<u32>(32231u, u_input.a, var_3.a.e), vec3<u32>(24671u, 4294967295u, 13361u) ^ vec3<u32>(u_input.a, var_3.a.e, u_input.a))));
    return func_2(_wgslsmith_clamp_vec4_i32(firstLeadingBit(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(43408i, var_3.d, var_3.d, var_1.d), vec4<i32>(13524i, var_3.d, -30546i, var_1.d), vec4<i32>(var_1.d, -11475i, var_1.d, 14649i)), vec4<i32>(36751i, 2147483647i, 9771i, var_3.d), select(var_3.c, var_1.c, true))), ~firstTrailingBit(vec4<i32>(-2147483647i, 0i, 2147483647i, -8459i)), vec4<i32>(var_1.d, var_3.d, abs(var_1.d), countOneBits(max(2147483647i, 0i)))), var_1.d, select(vec3<u32>(var_3.a.e, abs(var_4.e) ^ _wgslsmith_div_u32(var_1.a.e, var_1.a.e), ~_wgslsmith_sub_u32(var_2.e, var_4.e)), ~(~vec3<u32>(u_input.a, var_1.a.e, 1u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(false), false, !vec4<bool>(true, any(vec2<bool>(true, true)), true, true), firstTrailingBit(reverseBits(min(_wgslsmith_mod_i32(-2147483647i, -32864i), ~10001i))));
    var_0 = Struct_2(Struct_1(false, var_0.a.b, !vec3<bool>(any(var_0.c.zx), !var_0.b, !var_0.c.x), 1079f, 1u), !all(func_2(vec4<i32>(-40961i, var_0.d, -41329i, 0i), _wgslsmith_div_i32(17113i, var_0.d), ~vec3<u32>(var_0.a.e, 0u, 31177u)).c), select(!vec4<bool>(false, !var_0.b, false, var_0.c.x), vec4<bool>(select(var_0.a.a, var_0.c.x, true), false, any(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), true), var_0.b), var_0.d);
    let var_1 = true;
    let var_2 = !(!var_0.c.ww);
    let var_3 = Struct_2(Struct_1(!any(vec4<bool>(var_1, true, false, var_1)), var_0.a.d, var_0.c.xyx, _wgslsmith_f_op_f32(var_0.a.d + var_0.a.d), func_2(~(-vec4<i32>(var_0.d, 65747i, var_0.d, var_0.d)), _wgslsmith_add_i32(-1i, -1i) ^ ~var_0.d, ~vec3<u32>(var_0.a.e, 1u, var_0.a.e)).e), func_2(firstLeadingBit(countOneBits(-vec4<i32>(-11319i, -12695i, 0i, 6233i))), -2147483647i, vec3<u32>(13608u, ~_wgslsmith_mod_u32(var_0.a.e, 24918u), 4294967295u)).a, vec4<bool>(true, var_1, all(!select(var_0.c.xyw, vec3<bool>(var_0.c.x, true, var_2.x), var_0.a.c)), true), _wgslsmith_clamp_i32(-36979i, ~(-27142i), var_0.d));
    var var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-380f)))), var_0.a.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a.b, var_0.a.d, var_3.a.b, var_3.a.b), vec4<f32>(-449f, -964f, -743f, 892f), false)), select(var_3.c, vec4<bool>(true, true, true, var_0.a.c.x), var_3.c), reverseBits(vec2<u32>(var_0.a.e, u_input.a)), Struct_2(Struct_1(true, var_0.a.d, var_3.c.zyy, var_3.a.d, u_input.a), true, vec4<bool>(var_2.x, false, var_0.a.a, var_2.x), var_0.d))))), -263f));
    var var_5 = func_1(true);
    var var_6 = var_2;
    let var_7 = vec4<bool>(var_0.a.c.x, true, !(!any(vec2<bool>(true, true))), !var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5.d, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1530f, 784f), _wgslsmith_f_op_f32(sign(var_3.a.d))))))));
}

