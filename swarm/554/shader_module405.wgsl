struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    let var_0 = 0i;
    var var_1 = ((_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_2.b.b.xx, u_input.a.zy), _wgslsmith_mult_u32(1u, 1u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 33181u), vec2<u32>(arg_2.a.b.x, 24647u))) == arg_0.b.x) || (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(21646u, 1u, 32342u), u_input.a.x, 0u | arg_2.c.x) < firstLeadingBit(23294u));
    var var_2 = vec2<u32>(max(~_wgslsmith_add_u32(firstLeadingBit(arg_0.b.x), ~arg_2.b.b.x), ~min(~78228u, u_input.a.x)), 4294967295u);
    var_1 = arg_2.a.c.x & select(!(all(arg_2.a.c) | all(vec4<bool>(false, false, arg_2.b.c.x, arg_0.c.x))), any(vec4<bool>(true, true, arg_2.b.c.x, arg_2.b.c.x)), true);
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(-36986i, u_input.d.x, var_0, 1i) ^ vec4<i32>(arg_0.e, var_0, 17329i, -48176i)), countOneBits(-vec4<i32>(var_0, -2147483647i, 0i, 1i)) | vec4<i32>(~(-13464i), -u_input.d.x, arg_2.a.e, arg_1)), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, select(vec4<i32>(-73495i, var_0, arg_1, -2147483647i), vec4<i32>(arg_0.a.x, arg_1, -2147483647i, 0i), true)), 2147483647i, -countOneBits(-870i & arg_2.b.a.x), -min(max(-9272i, 54949i), arg_0.e)));
    return !arg_2.b.c;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = !(!vec3<bool>(!all(vec4<bool>(false, true, arg_0, arg_0)), false, !arg_0));
    let var_1 = Struct_1(u_input.d.xxw, max(vec4<u32>(39992u, ~(u_input.a.x << (u_input.a.x % 32u)), 35735u, min(abs(u_input.a.x), 0u)), vec4<u32>(4294967295u, 85972u, 25360u, u_input.a.x)), select(select(!vec4<bool>(false, true, arg_0, false), select(func_3(Struct_1(u_input.d.zyw, vec4<u32>(u_input.a.x, u_input.a.x, 14370u, 67063u), vec4<bool>(false, false, true, false), vec4<f32>(1271f, 447f, 941f, -2113f), u_input.d.x), 1i, Struct_2(Struct_1(u_input.d.zyz, vec4<u32>(1u, 0u, 4294967295u, u_input.a.x), vec4<bool>(var_0.x, arg_0, true, false), vec4<f32>(214f, 1355f, 565f, -2153f), -16235i), Struct_1(u_input.d.xzw, vec4<u32>(u_input.a.x, 60082u, u_input.a.x, 14891u), vec4<bool>(var_0.x, arg_0, var_0.x, false), vec4<f32>(-1096f, -646f, -521f, -968f), -22178i), vec3<u32>(u_input.a.x, 0u, u_input.a.x), -601f), false), func_3(Struct_1(u_input.d.zzz, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, true), vec4<f32>(-1082f, 2383f, 2236f, -467f), 0i), u_input.d.x, Struct_2(Struct_1(vec3<i32>(-2147483647i, -21497i, u_input.d.x), vec4<u32>(39063u, 24241u, u_input.a.x, 18277u), vec4<bool>(false, false, arg_0, var_0.x), vec4<f32>(-1000f, -260f, 505f, -1299f), 66128i), Struct_1(vec3<i32>(u_input.d.x, -15256i, -40043i), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), vec4<bool>(arg_0, arg_0, true, var_0.x), vec4<f32>(-300f, 537f, -489f, 1221f), u_input.b.x), u_input.a, 2268f), false), func_3(Struct_1(u_input.d.zzz, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, var_0.x, false, true), vec4<f32>(-1000f, 346f, -942f, 928f), u_input.d.x), 2147483647i, Struct_2(Struct_1(vec3<i32>(u_input.d.x, u_input.b.x, u_input.d.x), vec4<u32>(u_input.a.x, 76563u, 32424u, u_input.a.x), vec4<bool>(var_0.x, true, true, arg_0), vec4<f32>(315f, 358f, 488f, -1128f), 1571i), Struct_1(u_input.d.zwy, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, true, arg_0, false), vec4<f32>(1004f, 1724f, 694f, -286f), 1i), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), -1000f), true)), any(!vec4<bool>(arg_0, true, true, var_0.x))), !func_3(Struct_1(u_input.d.yzz, vec4<u32>(u_input.a.x, 0u, 1u, 29263u), vec4<bool>(arg_0, arg_0, var_0.x, var_0.x), vec4<f32>(843f, 1000f, -1210f, -1044f), -2147483647i), -2147483647i, Struct_2(Struct_1(u_input.d.wyy, vec4<u32>(69267u, 27308u, u_input.a.x, 6027u), vec4<bool>(true, true, true, var_0.x), vec4<f32>(1000f, 863f, -395f, 2092f), 1i), Struct_1(vec3<i32>(-7061i, u_input.c, u_input.b.x), vec4<u32>(19461u, 34806u, 1u, u_input.a.x), vec4<bool>(var_0.x, arg_0, true, true), vec4<f32>(1000f, 104f, 1000f, 701f), u_input.d.x), u_input.a, -722f), true), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, 232f, -123f, -500f)) + vec4<f32>(1032f, -507f, 448f, -549f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1080f, -696f, 992f, 1431f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, 385f, 519f, -518f)))))), ~_wgslsmith_div_i32(-(~(-18714i)), u_input.b.x));
    var_0 = !vec3<bool>(!(_wgslsmith_mult_u32(u_input.a.x, var_1.b.x) > (u_input.a.x ^ var_1.b.x)), var_0.x, all(var_1.c.xxz));
    var var_2 = Struct_2(Struct_1(~(-(~var_1.a)), var_1.b, var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, 166f, -571f, var_1.d.x))))), _wgslsmith_add_i32(1i << (1u % 32u), 0i)), Struct_1(vec3<i32>(var_1.a.x, _wgslsmith_div_i32(14944i, 1i), _wgslsmith_add_i32(var_1.a.x, u_input.b.x)) << (firstLeadingBit(~vec3<u32>(0u, var_1.b.x, var_1.b.x)) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(~21595u, _wgslsmith_add_u32(var_1.b.x, u_input.a.x)), _wgslsmith_mod_u32(34871u, abs(48065u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), var_1.b.xw), abs(20270u)), ~(~4294967295u)), vec4<bool>(!(!arg_0), arg_0, !var_0.x, (1u < u_input.a.x) && var_0.x), var_1.d, -_wgslsmith_add_i32(abs(-3821i), 51819i)), ~var_1.b.wzy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), _wgslsmith_f_op_f32(-634f * -1000f))))));
    var var_3 = var_2.d;
    return !select(func_3(var_1, select(var_2.b.a.x, _wgslsmith_mult_i32(var_2.a.a.x, 0i), false), Struct_2(Struct_1(vec3<i32>(u_input.c, -5850i, var_1.e), var_1.b, vec4<bool>(false, var_0.x, var_1.c.x, var_2.b.c.x), var_2.a.d, u_input.b.x), var_1, _wgslsmith_add_vec3_u32(vec3<u32>(18556u, var_1.b.x, 4698u), u_input.a), -887f), !any(vec4<bool>(true, false, false, false))).zxy, var_2.b.c.zwx, var_0.x && var_2.a.c.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> vec3<u32> {
    var var_0 = 80617u;
    var var_1 = firstTrailingBit(arg_0 >> (~select(arg_1, vec2<u32>(arg_1.x, 33875u) >> (vec2<u32>(arg_3, u_input.a.x) % vec2<u32>(32u)), select(vec2<bool>(arg_2, false), vec2<bool>(false, arg_2), false)) % vec2<u32>(32u)));
    var var_2 = u_input.a;
    let var_3 = !(!func_2(true));
    var var_4 = Struct_2(Struct_1(~u_input.d.zww, ~(~vec4<u32>(1u, 31327u, arg_1.x, u_input.a.x)), !vec4<bool>(-2147483647i >= u_input.c, select(false, var_3.x, false), true, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-925f, 931f, -1544f, 1000f)))))), _wgslsmith_add_i32(i32(-1i) * -68370i, u_input.b.x)), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, var_1.x, var_1.x), u_input.d.yyy, ~u_input.d.wwy), min(~u_input.d.xyz, _wgslsmith_clamp_vec3_i32(u_input.d.yww, vec3<i32>(u_input.d.x, arg_0.x, 2147483647i), u_input.d.wxx))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.x, arg_3, arg_1.x, 55191u)), ~vec4<u32>(18538u, 4294967295u, 88200u, 4294967295u)), !(!(!vec4<bool>(var_3.x, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1211f * 235f))), 322f, _wgslsmith_f_op_f32(step(-1360f, _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(891f, -1499f))))), max(-2147483647i, -firstTrailingBit(-30670i))), reverseBits(u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)))));
    return vec3<u32>(max(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.x, arg_3), _wgslsmith_clamp_u32(0u, 0u, arg_1.x)), 23704u) | (_wgslsmith_add_u32(arg_3 >> (var_2.x % 32u), var_4.b.b.x) & var_2.x), _wgslsmith_mult_u32(u_input.a.x, var_2.x), min(~abs(~var_2.x), ~44908u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = min(vec3<u32>(arg_1.c.x, arg_1.a.b.x, arg_0.x), min(_wgslsmith_mod_vec3_u32(vec3<u32>(2184u, arg_1.c.x, firstTrailingBit(0u)), u_input.a), vec3<u32>(firstLeadingBit(abs(4294967295u)), 52766u, _wgslsmith_mod_u32(arg_1.a.b.x, ~0u))));
    var var_1 = arg_1.b;
    var_1 = Struct_1(vec3<i32>(var_1.a.x, -16544i, -39832i), ~vec4<u32>(u_input.a.x, ~1u, _wgslsmith_sub_u32(1u, arg_1.b.b.x) >> ((var_1.b.x ^ var_0.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 10932u, var_0.x), ~vec3<u32>(var_1.b.x, 18000u, 4322u))), vec4<bool>(!any(vec4<bool>(var_1.c.x, true, var_1.c.x, false)), false, (var_0.x & _wgslsmith_add_u32(1u, u_input.a.x)) < (_wgslsmith_mult_u32(1u, 5486u) | firstTrailingBit(arg_1.a.b.x)), true | (_wgslsmith_mult_u32(var_0.x, 1u) >= 0u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, 1000f, arg_1.a.d.x, 248f), arg_1.b.d, vec4<bool>(true, var_1.c.x, arg_1.a.c.x, var_1.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.a.d)))), -var_1.e);
    var_1 = Struct_1(min(vec3<i32>(arg_1.a.e, _wgslsmith_clamp_i32(-38329i, u_input.b.x, -1i), i32(-1i) * -25227i) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.b.b.x, 33720u, var_1.b.x), countOneBits(var_1.b.zyy)) % vec3<u32>(32u)), vec3<i32>(86012i, u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 39083i, arg_1.b.e), vec3<i32>(arg_1.a.e, var_1.a.x, -30715i)), -1i))), vec4<u32>(func_1(vec2<i32>(u_input.d.x | u_input.d.x, -var_1.e), vec2<u32>(countOneBits(arg_0.x), var_0.x), true, _wgslsmith_add_u32(arg_0.x, var_0.x)).x, _wgslsmith_clamp_u32(~(~97417u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, var_0.x, var_0.x), var_1.b), 57895u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), vec4<u32>(18065u, 0u, 1u, var_0.x))), max(_wgslsmith_mult_u32(1u, abs(arg_0.x)), var_1.b.x)), select(vec4<bool>(var_1.c.x != var_1.c.x, arg_1.b.c.x, true, func_2(select(true, var_1.c.x, arg_1.b.c.x)).x), func_3(Struct_1(arg_1.a.a, vec4<u32>(1u, u_input.a.x, var_0.x, var_0.x) << (arg_1.a.b % vec4<u32>(32u)), !vec4<bool>(arg_1.a.c.x, true, true, arg_1.b.c.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(522f, -1000f, arg_1.d, 1000f))), i32(-1i) * -5714i), _wgslsmith_div_i32(-9156i & var_1.e, _wgslsmith_div_i32(var_1.e, arg_1.a.a.x)), arg_1, 4294967295u == var_1.b.x), vec4<bool>(true, !var_1.c.x, arg_1.a.c.x && var_1.c.x, func_2(arg_1.a.c.x).x)), _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-102f, var_1.d.x, arg_1.d, arg_1.d))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.b.d, vec4<f32>(arg_1.b.d.x, 294f, 815f, arg_1.a.d.x))))), (-var_1.a.x ^ _wgslsmith_mod_i32(~arg_1.a.e, arg_1.a.a.x)) << ((countOneBits(1u) << (arg_1.b.b.x % 32u)) % 32u));
    var var_2 = Struct_2(arg_1.a, Struct_1(vec3<i32>(-77490i, select(_wgslsmith_sub_i32(-24624i, var_1.e), var_1.a.x, func_2(true).x), var_1.a.x), firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_1.b.x, arg_0.x, 1u), var_1.b))), select(vec4<bool>(false, all(var_1.c), true, true), !select(vec4<bool>(true, var_1.c.x, var_1.c.x, true), var_1.c, var_1.c), select(!vec4<bool>(arg_1.b.c.x, var_1.c.x, arg_1.b.c.x, false), func_3(Struct_1(vec3<i32>(u_input.d.x, var_1.a.x, 22028i), arg_1.b.b, vec4<bool>(false, true, false, false), vec4<f32>(239f, 1000f, arg_1.a.d.x, -1264f), arg_1.b.a.x), -15550i, arg_1, false), var_1.c.x == arg_1.b.c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, arg_1.b.d.x, arg_1.a.d.x, var_1.d.x) * arg_1.b.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-565f, arg_1.a.d.x, 821f, 385f), vec4<f32>(var_1.d.x, 111f, 193f, 191f)))), true || (-516f >= var_1.d.x))), var_1.e), var_1.b.zyw, 1161f);
    return StorageBuffer(~var_2.b.b.x, var_2.c.x & 18630u, -428f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(reverseBits(abs(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 1u)))), 1u);
    let var_1 = false;
    let var_2 = -182f;
    var var_3 = -2147483647i;
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_4(func_1(countOneBits(~abs(vec2<i32>(u_input.d.x, 43270i))), ~vec2<u32>(u_input.a.x, u_input.a.x << (1u % 32u)), all(!(!vec3<bool>(false, false, var_1))), firstTrailingBit(_wgslsmith_div_u32(16481u, 28172u))), Struct_2(Struct_1(u_input.d.xwx >> (u_input.a % vec3<u32>(32u)), vec4<u32>(70683u, 1u, u_input.a.x, 0u) >> (vec4<u32>(23575u, 23959u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(var_1, true, var_1, var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, 1646f, var_2))) * vec4<f32>(var_2, 1479f, var_2, var_2)), u_input.b.x), Struct_1(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.c), -u_input.c, ~(-1i)), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<bool>(true, true, true, true)), countOneBits(vec4<u32>(56942u, 1u, u_input.a.x, 949u))), !vec4<bool>(var_1, true, true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 147f, -128f, var_2))), reverseBits(-2147483647i)), vec3<u32>(func_1(vec2<i32>(-16590i, -1i), vec2<u32>(29112u, u_input.a.x), var_1, u_input.a.x).x, 67337u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(22853u, u_input.a.x, u_input.a.x), u_input.a), var_2));
}

