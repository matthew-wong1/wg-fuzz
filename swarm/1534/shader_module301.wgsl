struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_3.a - _wgslsmith_div_vec4_f32(vec4<f32>(1022f, arg_3.a.x, -2030f, 135f), arg_3.a))))), vec3<bool>(!(abs(0u) != ~u_input.c.x), true, arg_3.b.x), u_input.a);
    let var_1 = _wgslsmith_dot_vec4_u32(~(~max(firstTrailingBit(vec4<u32>(36806u, u_input.c.x, 0u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, 10304u, 80334u))), firstTrailingBit(~(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u) | _wgslsmith_mult_vec4_u32(vec4<u32>(8993u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(66822u, 0u, 1u, u_input.c.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a)), true))), vec3<bool>(!(!var_0.b.x || arg_0), any(vec4<bool>(!var_0.b.x, arg_3.b.x, arg_0, arg_0)), arg_0), arg_3.c);
    var var_3 = ~select(firstLeadingBit(abs(var_1 & var_1)), _wgslsmith_div_u32(abs(reverseBits(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(4294967295u, 34018u)) | _wgslsmith_add_u32(var_1, var_1)), var_0.c == ~(~arg_1.x));
    let var_4 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(369f - var_0.a.x), -720f))), var_2.a.x, arg_2), vec3<bool>(false, arg_3.b.x, arg_3.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-arg_1, reverseBits(arg_1)), ~arg_1), var_2.c));
    return _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(~5475u), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_1, 4294967295u), ~vec2<u32>(1u, var_1), var_2.b.x == true), ~vec2<u32>(u_input.c.x, u_input.c.x) >> (u_input.c.yz % vec2<u32>(32u))), var_1, 10385u), abs(countOneBits(select(vec4<u32>(1u, 28976u, 0u, u_input.c.x) << (vec4<u32>(20615u, var_1, 52808u, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 49160u, 0u, 793u), vec4<bool>(arg_3.b.x, var_2.b.x, false, var_4.b.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    var var_0 = vec2<i32>(max(u_input.b, u_input.a), -18212i);
    var var_1 = select(select(!vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), !vec3<bool>(2147483647i <= u_input.a, true, false)), vec3<bool>(all(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), false, true), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), vec3<bool>(select(false, false, false) && (u_input.c.x < 96812u), true, false)));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-911f + 874f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(-254f * -417f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(283f)) * _wgslsmith_f_op_f32(max(-156f, 1058f))))), _wgslsmith_f_op_f32(711f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(892f, -1100f) + -566f))), select(vec3<bool>(any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), any(vec4<bool>(var_1.x, var_1.x, false, true)), var_1.x), vec3<bool>(false, !var_1.x || select(var_1.x, var_1.x, var_1.x), 1i != var_0.x), !vec3<bool>(var_1.x, !var_1.x, false)), -(~(~1i << ((u_input.c.x | u_input.c.x) % 32u))));
    var_1 = select(vec3<bool>(!var_1.x, var_1.x, any(vec4<bool>(var_1.x, false, var_2.b.x, var_1.x)) == !(var_2.c >= 1i)), var_2.b, any(vec4<bool>(true, false, false, !var_2.b.x & true)));
    var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, var_2.c)), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(38583i, -2147483647i), vec2<i32>(0i, 13307i), vec2<i32>(var_0.x, -16657i)), -vec2<i32>(var_0.x, var_2.c))), min(-(~vec2<i32>(2147483647i, var_2.c)), min(reverseBits(vec2<i32>(2147483647i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.c, u_input.a), vec2<i32>(-1i, -1i)))), abs(firstLeadingBit(vec2<i32>(var_2.c, var_2.c) | vec2<i32>(var_0.x, u_input.a)))) << (~((~vec2<u32>(4294967295u, arg_1) << (arg_0.wy % vec2<u32>(32u))) >> (~(u_input.c.zz ^ u_input.c.yy) % vec2<u32>(32u))) % vec2<u32>(32u));
    return 5840u;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    var var_0 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~u_input.c.x, ~u_input.c.x), _wgslsmith_div_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), u_input.c.xz), ~(~u_input.c.x & (_wgslsmith_sub_u32(15656u, u_input.c.x) >> (~23768u % 32u))), u_input.c.x);
    var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.x, 1u >> (var_0.x % 32u), 30863u), 4633u), abs(abs(_wgslsmith_mod_u32(var_0.x, 4294967295u))), ~(~var_0.x | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 1172u, 92448u, 1u))), 4294967295u), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(70599u, 17719u, u_input.c.x, var_0.x), vec4<u32>(1u, 4294967295u, 11772u, 35089u)), max(vec4<u32>(4294967295u, 33206u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, var_0.x, 0u, 3494u))) | abs(vec4<u32>(15084u, var_0.x, var_0.x, var_0.x))), vec4<u32>(~firstLeadingBit(1u), firstTrailingBit(var_0.x), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, var_0.x), 53091u), ~(~1u)));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_0.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 6303u, 4294967295u, 4294967295u)) ^ reverseBits(vec4<u32>(u_input.c.x, 47607u, 91045u, 0u))), _wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(var_0.x, 78570u, var_0.x, var_0.x)), firstTrailingBit(vec4<u32>(75500u, 32543u, 4294967295u, u_input.c.x) & vec4<u32>(var_0.x, var_0.x, var_0.x, 9301u)))), vec4<u32>(func_4(func_3(arg_1.x, vec4<i32>(16112i, arg_3, -24666i, arg_2.x), _wgslsmith_f_op_f32(-arg_0), Struct_1(vec4<f32>(arg_0, arg_0, 1122f, arg_0), vec3<bool>(true, true, arg_1.x), arg_2.x)), var_0.x), ~1u, ~var_0.x, 15207u));
    var var_1 = arg_0;
    var_0 = vec4<u32>(u_input.c.x, firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), u_input.c.x)) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~var_0.x, var_0.x), ~(u_input.c.x | 1u), ~1u) % 32u), countOneBits(u_input.c.x), reverseBits(28812u));
    return ~max(0u, u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_u32(~(~reverseBits(abs(vec4<u32>(1u, 0u, 1u, 6619u)))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 18450u, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.c.x)) << (max(u_input.c.x, u_input.c.x) % 32u), _wgslsmith_add_u32(1u, reverseBits(u_input.c.x)), select(min(u_input.c.x, 41657u), firstLeadingBit(4294967295u), true)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(26470u, 40593u), u_input.c.zy)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 24894u, 14639u), u_input.c), func_2(2672f, vec4<bool>(false, true, arg_0.b.x, false), vec4<i32>(u_input.a, arg_0.c, 34712i, arg_0.c), arg_0.c)), _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.c), ~u_input.c)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 495f, arg_0.a.x, arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(arg_0.a.x, arg_0.a.x, 281f, -151f)))) * arg_0.a))), arg_0.b, 20324i);
    let var_2 = var_0.yyz;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(step(arg_0.a, _wgslsmith_f_op_vec4_f32(-var_1.a)))))), var_1.b, _wgslsmith_add_i32(~countOneBits(-5277i) ^ arg_0.c, var_1.c));
    let var_4 = var_0.yy;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(vec4<f32>(2144f, _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), arg_0.a.x, !select(false, arg_0.b.x, false)))), vec3<bool>(arg_3.b.x || arg_3.b.x, true, arg_3.b.x), -arg_2.x >> (49976u % 32u));
    var_0 = func_1(func_1(arg_0, var_0.c, abs(-8822i)), _wgslsmith_mult_i32(max(arg_3.c & var_0.c, arg_0.c), 2147483647i ^ u_input.b), _wgslsmith_dot_vec3_i32(-(vec3<i32>(9363i, arg_2.x, arg_3.c) >> (firstTrailingBit(vec3<u32>(1u, arg_1, arg_1)) % vec3<u32>(32u))), vec3<i32>(-(~(-2147483647i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, 2147483647i)), arg_2.yx), 0i)));
    var var_1 = arg_3.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    var_0 = arg_3;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~51385u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, 745f, -1316f, 769f))))) + _wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_1(vec4<f32>(402f, -227f, 1283f, -653f), vec3<bool>(true, false, false), u_input.a), u_input.a, u_input.b), ~func_3(false, vec4<i32>(u_input.b, -12754i, 2147483647i, u_input.b), -471f, Struct_1(vec4<f32>(1832f, -126f, 464f, -197f), vec3<bool>(false, false, false), u_input.a)).x, ~vec3<i32>(u_input.a, -27327i, 1i) | _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 16494i, u_input.a), vec3<i32>(u_input.b, -2147483647i, 18680i)), Struct_1(vec4<f32>(-342f, 355f, 1000f, 650f), vec3<bool>(true, true, true), min(u_input.a, 4547i))))), func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1679f, 1435f, -1000f, 2275f)), vec3<bool>(true, true, true), _wgslsmith_mult_i32(49832i, u_input.b)), 1i, abs(-5127i)), countOneBits(~u_input.b), -(~u_input.a) ^ ~select(-2147483647i, -32526i, true)).b, u_input.b);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1031f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), -630f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), !vec3<bool>(any(!var_1.b.xx), false, var_1.b.x), 0i);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-717f)) + -444f))), 706f), vec3<bool>(!any(!vec4<bool>(true, var_1.b.x, true, var_1.b.x)), !any(vec3<bool>(var_1.b.x, true, var_1.b.x)), var_1.b.x), var_1.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-func_1(Struct_1(vec4<f32>(-1000f, var_1.a.x, var_1.a.x, var_1.a.x), var_1.b, -38219i), u_input.b, -1i).a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_1.a.x) - _wgslsmith_f_op_f32(var_1.a.x - 1417f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, -1561f, var_1.a.x, var_1.a.x) + vec4<f32>(1853f, var_1.a.x, 1050f, var_1.a.x)) - var_1.a)));
    let var_3 = vec4<bool>(true, all(select(!vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x), select(select(vec4<bool>(var_1.b.x, var_1.b.x, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, var_1.b.x, false, var_1.b.x)), select(vec4<bool>(false, var_1.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), vec4<bool>(false, false, var_1.b.x, true)), !vec4<bool>(true, true, var_1.b.x, true)), var_1.b.x && (var_2.x >= -580f))), true, !all(var_1.b));
    var var_4 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(660f, var_1.a.x, -285f, var_2.x) - vec4<f32>(-683f, var_1.a.x, var_1.a.x, var_2.x))), vec4<f32>(var_1.a.x, -453f, _wgslsmith_f_op_f32(max(var_2.x, var_1.a.x)), _wgslsmith_f_op_f32(min(var_1.a.x, 792f))))), var_3.wzy, var_1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 9187i, var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, u_input.b, var_1.c, -2147483647i), vec4<i32>(u_input.b, -25680i, 1i, u_input.a)) & u_input.b), -vec4<i32>(u_input.b, var_1.c, firstLeadingBit(22582i), min(44283i, -13035i))), _wgslsmith_div_i32(-_wgslsmith_mult_i32(~1i, -1i), -10449i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

