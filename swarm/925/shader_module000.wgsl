struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-934f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2652f, arg_0.b)), _wgslsmith_f_op_f32(abs(arg_1.b))))))));
    var var_1 = Struct_3(~_wgslsmith_div_u32(~arg_0.a, arg_3));
    return arg_0.d;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-393f + 294f)))), vec4<bool>(true, true, true & any(vec3<bool>(true, true, true)), u_input.e < -44346i), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(42440u << (u_input.d.x % 32u), _wgslsmith_f_op_f32(-1363f - _wgslsmith_f_op_f32(-1000f + 1021f)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<f32>(-510f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(-1105f, 1659f), -897f)), Struct_2(Struct_1(4294967295u, -933f, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1054f, 482f, 145f, -441f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1309f)), 11743i, vec3<i32>(-64188i, _wgslsmith_mod_i32(27600i, -55748i), 0i), Struct_1(~10861u, -600f, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, 2577f, 1000f, -629f)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e, u_input.b, u_input.c.x), vec3<i32>(u_input.e, u_input.c.x, u_input.c.x)) >= ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e, -2147483647i), vec3<i32>(u_input.c.x, 34450i, u_input.b)), 0u)));
    var var_1 = ~vec3<i32>(_wgslsmith_clamp_i32(u_input.e, u_input.c.x, _wgslsmith_div_i32(u_input.e, -u_input.e)), 2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-53056i, u_input.b) ^ reverseBits(6004i), firstTrailingBit(u_input.b >> (10822u % 32u))));
    let var_2 = var_0.c.x & !(!all(vec2<bool>(var_0.c.x, var_0.c.x)));
    var_1 = _wgslsmith_add_vec3_i32(min(-vec3<i32>(-56929i, ~(-2147483647i), 1i), vec3<i32>(-var_1.x, _wgslsmith_mult_i32(countOneBits(8220i), 1i >> (1u % 32u)), ~_wgslsmith_clamp_i32(u_input.b, -68461i, -2891i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 1i & u_input.e), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -1i, u_input.b), vec3<i32>(1i, 1i, u_input.e))), 0i, min(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, var_1.x, 1i, 50196i), select(vec4<i32>(var_1.x, u_input.e, var_1.x, 0i), vec4<i32>(var_1.x, -1i, var_1.x, var_1.x), true)), 0i)));
    let var_3 = min(~(~(u_input.d & vec4<u32>(70236u, var_0.a, 0u, 1u))), u_input.d) >> (~select(vec4<u32>(u_input.a, ~var_0.a, firstTrailingBit(0u), u_input.a | u_input.a), ~vec4<u32>(30284u, 6619u, var_0.a, 4294967295u), var_0.c.x && all(var_0.c.zyy)) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-743f, 599f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-540f)), var_0.d.x)), _wgslsmith_f_op_f32(trunc(-358f)), _wgslsmith_f_op_f32(f32(-1f) * -1065f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = (u_input.c.x | (select(_wgslsmith_add_i32(933i, u_input.c.x), _wgslsmith_clamp_i32(u_input.b, u_input.c.x, -2147483647i), any(arg_2.c)) << (min(4447u, _wgslsmith_add_u32(arg_3.x, arg_2.a)) % 32u))) > -_wgslsmith_div_i32(-abs(-1i), abs(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c)));
    var var_1 = _wgslsmith_mult_i32(i32(-1i) * -26021i, _wgslsmith_mult_i32(u_input.b, abs(reverseBits(u_input.b)))) > (34201i >> (~(arg_2.a ^ _wgslsmith_mult_u32(4294967295u, 1u)) % 32u));
    var_1 = arg_2.c.x;
    var var_2 = Struct_1(35156u, -224f, arg_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(397f, arg_2.d.x, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2815f - -715f), _wgslsmith_f_op_f32(min(1293f, 517f))))));
    let var_3 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.b, i32(-1i) * -1i, u_input.c.x ^ 2147483647i, ~u_input.e) << (vec4<u32>(~arg_3.x, _wgslsmith_dot_vec2_u32(arg_3.yx, arg_3.wy), _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), 44323u) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, 0i, u_input.b, u_input.e), vec4<i32>(u_input.b, u_input.b, u_input.c.x, 2147483647i))));
    return arg_2.c.xxx;
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(select(vec2<i32>(21993i, u_input.e), vec2<i32>(2147483647i, -35716i), true), vec2<i32>(max(32229i, 0i), _wgslsmith_sub_i32(-28080i, -14065i)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.e, var_0.x, u_input.b, var_0.x), vec4<i32>(-36506i, var_0.x, u_input.e, -41413i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(6877i, var_0.x, var_0.x, u_input.c.x), vec4<i32>(-23674i, var_0.x, -2147483647i, var_0.x), vec4<i32>(u_input.e, var_0.x, var_0.x, u_input.e)))), firstTrailingBit(vec4<i32>(u_input.c.x | 46975i, ~u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, -2147483647i, 1i), vec4<i32>(0i, var_0.x, 32828i, -4169i)), 28451i))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-14292i, 1i)), abs(u_input.c)), reverseBits(-44901i), var_0.x >> (7328u % 32u), u_input.b), ~(~vec4<i32>(var_0.x, -4895i, 16450i, -36641i))), -abs(-u_input.b), -countOneBits(-(9449i ^ u_input.b)));
    var var_2 = ~(~1u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1184f))) * -156f), _wgslsmith_f_op_f32(-388f + _wgslsmith_f_op_f32(f32(-1f) * -459f)), -162f);
    var_2 = (~abs(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.a, 4294967295u, 43817u, u_input.d.x))) >> (1u % 32u)) ^ ((55271u << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(48623u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(36826u, u_input.a), u_input.d.zx)) % 32u)) | u_input.a);
    return Struct_1(_wgslsmith_div_u32(0u, ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f)), vec4<bool>(false, func_4(Struct_1(u_input.d.x ^ 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1041f), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1666f, -918f, -1529f, var_3.x)))), var_3, Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(0u, var_3.x, vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<f32>(-222f, 1000f, 104f, var_3.x)), Struct_2(Struct_1(u_input.d.x, -536f, vec4<bool>(false, false, true, true), vec4<f32>(var_3.x, 913f, 1000f, var_3.x)), var_3.x, 37505i, var_1.zzw, Struct_1(15922u, 1196f, vec4<bool>(arg_0.x, false, true, true), vec4<f32>(1094f, -1204f, var_3.x, -180f))), true, u_input.d.x)).x, !vec4<bool>(true, false, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, 1000f, var_3.x, var_3.x) * vec4<f32>(925f, -1213f, 122f, var_3.x))), u_input.d | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 1u, u_input.d.x, u_input.a))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_3.x)), var_3.x, true)) <= -421f, !(!arg_0.x)), vec4<f32>(var_3.x, -1645f, var_3.x, var_3.x));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_i32(~(-u_input.c) << (vec2<u32>(~(~u_input.d.x), 1u << (_wgslsmith_add_u32(11469u, u_input.a) % 32u)) % vec2<u32>(32u)), -u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), -605f)), _wgslsmith_f_op_f32(530f * -963f))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-440f, 1065f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1031f)) * _wgslsmith_f_op_f32(-1000f + var_1.x)))));
    var var_2 = _wgslsmith_mod_u32(reverseBits(arg_0), arg_0) << ((_wgslsmith_sub_u32(~max(arg_0, 1u), ~arg_0 & ~u_input.d.x) & u_input.a) % 32u);
    let var_3 = Struct_2(func_5(func_4(Struct_1(u_input.a, var_1.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 757f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-778f, -998f, 883f))), Struct_1(~arg_0, 621f, select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec4_f32(func_2())), max(~vec4<u32>(u_input.d.x, arg_0, 4294967295u, 0u), vec4<u32>(arg_0, arg_0, u_input.a, u_input.d.x)))), _wgslsmith_f_op_f32(-var_1.x), min(~var_0, -17260i), ~(~(~(-vec3<i32>(var_0, 17334i, var_0)))), Struct_1(_wgslsmith_mult_u32(1u, arg_0), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))), select(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(62540u, var_1.x, vec4<bool>(true, false, false, false), vec4<f32>(var_1.x, 270f, var_1.x, var_1.x)), Struct_2(Struct_1(4294967295u, -1217f, vec4<bool>(false, false, true, false), vec4<f32>(var_1.x, var_1.x, var_1.x, 1779f)), -1411f, var_0, vec3<i32>(var_0, var_0, -28600i), Struct_1(arg_0, var_1.x, vec4<bool>(false, true, true, true), vec4<f32>(-281f, -1274f, -2613f, var_1.x))), true, u_input.a)) - vec4<f32>(-1945f, -323f, var_1.x, var_1.x)), vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(trunc(-986f))))));
    return Struct_3(var_3.a.a & 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_3(u_input.d.x);
    var_1 = func_1(1u);
    var_1 = Struct_3(1u);
    var var_2 = -107f;
    let x = u_input.a;
    s_output = StorageBuffer(-18920i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(411f, -2709f, var_0)) - _wgslsmith_f_op_f32(171f + -983f))))), u_input.e);
}

