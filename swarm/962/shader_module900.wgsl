struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = 36585u;
    let var_1 = _wgslsmith_mult_u32(~(var_0 ^ _wgslsmith_sub_u32(arg_0, 1u)), ~(~arg_2.b));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1228f, _wgslsmith_f_op_f32(floor(337f)))), 982f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1737f + 938f) * 142f)))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1583f, -1000f)))))));
    var var_4 = ~vec3<u32>(~_wgslsmith_div_u32(~arg_0, max(4294967295u, arg_2.a)), _wgslsmith_add_u32(firstTrailingBit(~var_1), firstLeadingBit(u_input.a)), reverseBits(4294967295u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1560f) - -138f)))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = 36473u;
    return u_input.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(max(~u_input.a, countOneBits(49695u)), u_input.a, abs(vec4<u32>(~4294967295u, u_input.a, 1u, ~(u_input.a >> (0u % 32u)))), u_input.a | (u_input.a ^ 67323u), i32(-1i) * -1i);
    var var_1 = ~var_0.e;
    var var_2 = ~max(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_0.b, 31679u, 0u)), select(vec4<u32>(1u, 1u, var_0.c.x, u_input.a), var_0.c, true)) ^ var_0.c, var_0.c);
    let var_3 = countOneBits(vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, var_0.b), ~vec2<u32>(var_0.c.x, 4294967295u))), 59513u, var_2.x));
    var var_4 = Struct_1(var_0.a, func_4(_wgslsmith_f_op_f32(func_3(abs(abs(8662u)), Struct_1(max(4294967295u, var_3.x), firstTrailingBit(0u), vec4<u32>(var_0.b, var_0.b, 4294967295u, var_0.c.x), 1u, firstTrailingBit(var_0.e)), Struct_1(0u, ~0u, _wgslsmith_mult_vec4_u32(var_0.c, var_0.c), var_0.a, countOneBits(var_0.e)))), var_0.e, true), ~var_0.c, min(var_0.c.x, _wgslsmith_add_u32(~_wgslsmith_sub_u32(var_3.x, 1u), 4294967295u)), 0i);
    return var_0.e;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_i32(abs(countOneBits(60255i)), func_2());
    var var_1 = ~86977i;
    var_1 = func_2() | func_2();
    let var_2 = ~vec4<i32>(func_2(), -16352i, -40519i, 1i);
    var_1 = _wgslsmith_add_i32(~_wgslsmith_sub_i32(var_2.x & (2147483647i ^ var_2.x), 0i), -69408i);
    return Struct_1(~26826u, _wgslsmith_mult_u32(~u_input.a, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 28741u | u_input.a), max(_wgslsmith_add_u32(1u, 44566u), ~0u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a, 45117u, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, 11440u, 13799u)), ~(~vec4<u32>(34790u, u_input.a, 29939u, u_input.a)), select(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(7877u, 4294967295u, 51814u, 41893u), true)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 70228u, 0u, 116403u), vec4<u32>(11164u, 86953u, 12154u, u_input.a)), ~vec4<u32>(36567u, 63680u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) | ~(~vec4<u32>(u_input.a, 16078u, 36998u, 0u)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(19156u, u_input.a, u_input.a), vec3<u32>(0u, 1u, 30419u), vec3<bool>(true, true, false)), reverseBits(vec3<u32>(73698u, 22095u, u_input.a))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 14700u)), u_input.a), (4294967295u | u_input.a) >> (~1u % 32u))), u_input.a, var_2.x ^ abs(-65832i));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = func_1(_wgslsmith_f_op_f32(318f * 500f));
    var var_1 = Struct_1(var_0.b, _wgslsmith_mod_u32(105815u, arg_2.a), vec4<u32>(_wgslsmith_mult_u32(0u, func_4(-1211f, arg_1.e, any(vec2<bool>(true, true)))), ~(~_wgslsmith_mult_u32(4294967295u, 0u)), firstLeadingBit(arg_1.c.x), u_input.a & ~arg_0), ~25602u, var_0.e);
    var_1 = Struct_1(29193u, min(~_wgslsmith_mult_u32(var_0.b, _wgslsmith_mod_u32(var_0.b, 0u)), var_0.d), var_0.c, 1u & _wgslsmith_sub_u32(arg_1.d, ~1u), -1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1536f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-790f, -971f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(606f)) * 1525f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + vec2<f32>(-645f, _wgslsmith_f_op_f32(round(-566f)))));
    let var_3 = var_0;
    return arg_1.c;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.e, 0i ^ ~arg_1.e, _wgslsmith_mult_i32(22647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -3607i, 20046i), vec3<i32>(arg_1.e, 38849i, 23396i))))), -(~(~vec3<i32>(-2147483647i, 49554i, arg_1.e))) | vec3<i32>(abs(arg_3), arg_1.e, 2147483647i), select(~_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.e, -1i, arg_1.e), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, arg_3), vec3<i32>(var_0.e, arg_1.e, var_0.e))), ~vec3<i32>(select(-5613i, arg_1.e, false), ~(-2147483647i), firstTrailingBit(-2147483647i)), true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 1668f) * _wgslsmith_f_op_f32(arg_0.x - -1000f))))));
    return func_1(_wgslsmith_f_op_f32(func_3(3340u, func_1(_wgslsmith_div_f32(-623f, arg_2.x)), func_1(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 439f))), _wgslsmith_div_vec2_f32(vec2<f32>(-435f, -187f), vec2<f32>(-519f, -495f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, -1436f))))), Struct_1(max(firstLeadingBit(4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(52026u, u_input.a, u_input.a, 29652u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 0u), u_input.a, func_5(~_wgslsmith_mod_u32(0u, u_input.a), Struct_1(~35097u, abs(u_input.a), ~vec4<u32>(1u, 0u, u_input.a, 0u), _wgslsmith_mult_u32(0u, 0u), 1i), func_1(_wgslsmith_f_op_f32(round(1000f)))), firstTrailingBit(~u_input.a), -_wgslsmith_dot_vec3_i32(-vec3<i32>(6873i, 1i, -1i), ~vec3<i32>(-580i, -2147483647i, -8069i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(482f, 474f)))))), 2147483647i);
    let var_1 = var_0.e;
    let var_2 = var_0.e | var_1;
    let var_3 = !vec3<bool>(true, !any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), true);
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(821f, -1598f)))), _wgslsmith_f_op_f32(trunc(1332f))));
    let x = u_input.a;
    s_output = StorageBuffer(-23532i, ~(~reverseBits(1040u >> (0u % 32u))), -vec4<i32>(-func_6(var_4, Struct_1(var_0.d, 16718u, vec4<u32>(u_input.a, var_0.c.x, 1u, var_0.c.x), u_input.a, -2147483647i), vec2<f32>(var_4.x, var_4.x), -37806i).e, 0i & -var_0.e, _wgslsmith_add_i32(-61905i, var_2), _wgslsmith_dot_vec4_i32(vec4<i32>(-41981i, 5981i, var_0.e, -156i), vec4<i32>(var_0.e, var_0.e, var_0.e, -1i))));
}

