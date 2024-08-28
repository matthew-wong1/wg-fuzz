struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(1u, 1u)), max(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(39218u, 34858u, 0u), ~vec3<u32>(34654u, 1u, 21742u)), select(reverseBits(82896u), _wgslsmith_mod_u32(0u, 1u), all(vec3<bool>(true, true, true)))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(4638u, 1u), firstTrailingBit(vec2<u32>(8424u, 39849u))))), ~_wgslsmith_mod_vec2_u32(select(~vec2<u32>(80810u, 8233u), vec2<u32>(4294967295u, 15685u), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<u32>(1u, ~87007u)));
    var_0 = min(~select(~(~vec2<u32>(78296u, 0u)), ~vec2<u32>(var_0.x, var_0.x), vec2<bool>(false, true)), vec2<u32>(_wgslsmith_div_u32(countOneBits(~var_0.x), ~(~0u)), ~var_0.x));
    let var_1 = 30276u;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f * 389f) + _wgslsmith_f_op_f32(trunc(1489f)))), -528f, _wgslsmith_f_op_f32(ceil(1888f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-746f, 1300f, -1458f))), vec3<f32>(-701f, 845f, 254f))), vec3<f32>(_wgslsmith_f_op_f32(-1592f - _wgslsmith_div_f32(-416f, -189f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(750f * 241f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(469f, -222f))))))));
    let var_3 = Struct_1(u_input.a, vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(var_1, var_0.x), _wgslsmith_mod_u32(~10972u, _wgslsmith_sub_u32(var_1, var_0.x))) >> (_wgslsmith_mult_vec3_u32(abs(firstTrailingBit(vec3<u32>(var_0.x, 17359u, var_0.x))), vec3<u32>(48873u, ~60165u, 0u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(abs(33183i)), u_input.a.x | _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x), vec3<i32>(~42286i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x)), 1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), _wgslsmith_sub_vec4_u32(vec4<u32>(~min(var_1, 1u), max(57723u, _wgslsmith_mult_u32(var_0.x, 16964u)), 1u, ~(~68854u)), (~vec4<u32>(1u, 1u, 24579u, 4294967295u) ^ (vec4<u32>(1u, var_1, 1u, 34217u) ^ vec4<u32>(var_1, 3696u, 9870u, var_1))) >> ((~vec4<u32>(0u, var_1, 50537u, 4294967295u) & (vec4<u32>(var_0.x, 9003u, var_1, var_1) ^ vec4<u32>(var_1, var_0.x, var_0.x, 4294967295u))) % vec4<u32>(32u))));
    return ~firstTrailingBit(0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = -50861i;
    let var_1 = abs(vec4<i32>(2147483647i, u_input.a.x >> (func_3() % 32u), _wgslsmith_mult_i32(-1i, u_input.a.x) & arg_0.x, arg_0.x));
    let var_2 = Struct_2(Struct_1(~u_input.a, ~(~(~vec3<u32>(4294967295u, 1u, 4294967295u))), ~vec3<i32>(_wgslsmith_div_i32(arg_0.x, arg_0.x), ~u_input.a.x, u_input.a.x), vec3<bool>(true, true, false), _wgslsmith_sub_vec4_u32(vec4<u32>(~34851u, select(29521u, 1u, true), ~72773u, _wgslsmith_clamp_u32(25927u, 37294u, 4294967295u)), ~(~vec4<u32>(1u, 35148u, 1u, 4294967295u)))), Struct_1(~vec3<i32>(_wgslsmith_div_i32(2424i, 56808i), firstTrailingBit(2147483647i), 24853i), vec3<u32>(1u, 1u, 1u), ~(-_wgslsmith_sub_vec3_i32(var_1.xyz, var_1.xww)), vec3<bool>(false, false, true), ~(~(~vec4<u32>(4294967295u, 66625u, 1u, 0u)))), vec3<u32>(_wgslsmith_add_u32(39606u, countOneBits(~1u)), _wgslsmith_mod_u32(5589u, 4294967295u), ~_wgslsmith_sub_u32(4294967295u, 76380u)), ~vec2<u32>(~(~0u), 1u));
    var var_3 = vec2<f32>(-250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))));
    var_0 = 1i;
    return ~var_2.c;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.a, ~_wgslsmith_add_vec3_u32(func_2(u_input.a.zz, vec3<f32>(1731f, arg_0.x, 939f)), vec3<u32>(31379u, 17010u, 1u)) ^ (reverseBits(abs(vec3<u32>(0u, 3824u, 4294967295u))) >> (select(vec3<u32>(0u, 73957u, 4294967295u), ~vec3<u32>(33490u, 54507u, 1u), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) % vec3<u32>(32u))), vec3<i32>(u_input.a.x, -2222i, max(u_input.a.x, 2147483647i)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<bool>(!(_wgslsmith_div_f32(1335f, arg_0.x) != _wgslsmith_f_op_f32(sign(arg_0.x))), true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), true))), ~reverseBits(vec4<u32>(reverseBits(1u), ~37886u, 1u, 0u)));
    var var_1 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), i32(-1i) * -2147483647i, u_input.a.x) >> (vec3<u32>(0u, _wgslsmith_add_u32(2477u, 23898u), ~var_0.b.x) % vec3<u32>(32u)), ~(~vec3<i32>(u_input.a.x, -1i, -1i))), _wgslsmith_add_vec3_u32(var_0.b, max(_wgslsmith_div_vec3_u32(var_0.b, var_0.b) << (~vec3<u32>(var_0.b.x, var_0.b.x, 34644u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.e.x, var_0.b.x), var_0.b), ~vec3<u32>(var_0.e.x, 10062u, 56145u)))), max(min(reverseBits(firstLeadingBit(vec3<i32>(1i, 0i, 21242i))), vec3<i32>(1i, var_0.c.x, 38661i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(45462i, 0i, var_0.c.x), vec3<i32>(var_0.a.x, u_input.a.x, var_0.a.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.e.x, var_0.b.x, var_0.e.x), var_0.b, vec3<u32>(var_0.e.x, var_0.e.x, var_0.e.x)) % vec3<u32>(32u))), vec3<bool>(var_0.d.x, true, (arg_0.x == -646f) | var_0.d.x), var_0.e);
    var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 4888i, var_1.c.x)), var_1.a.x), ~_wgslsmith_add_i32(reverseBits(u_input.a.x), _wgslsmith_dot_vec2_i32(var_0.a.xx, var_0.c.zz)), -u_input.a.x), ~(~var_0.b), _wgslsmith_clamp_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(36411i, 20358i, 35909i)) >> (var_0.e.zwy % vec3<u32>(32u))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -31716i), vec3<i32>(var_1.c.x, -2147483647i, u_input.a.x))) << ((vec3<u32>(60762u, var_0.b.x, 36282u) | ~vec3<u32>(1u, 54634u, var_1.e.x)) % vec3<u32>(32u)), vec3<i32>((var_1.a.x << (var_0.e.x % 32u)) >> (_wgslsmith_clamp_u32(36960u, 50743u, var_0.e.x) % 32u), _wgslsmith_mult_i32(-20980i, abs(34546i)), 0i)), var_0.d, max(var_1.e, var_1.e ^ var_1.e));
    var var_2 = min(var_1.b.yx, var_1.e.zx);
    var var_3 = _wgslsmith_div_vec2_u32(abs(~var_0.e.ww), var_1.e.yx >> (var_0.b.yy % vec2<u32>(32u)));
    return Struct_1(~vec3<i32>(u_input.a.x >> (var_3.x % 32u), 1i, _wgslsmith_add_i32(~var_1.a.x, ~u_input.a.x)), vec3<u32>(47656u, var_0.e.x, var_2.x), ~(~_wgslsmith_clamp_vec3_i32(var_1.c, abs(var_0.c), firstLeadingBit(var_0.c))), vec3<bool>(var_1.d.x, ~10503u != ~(~var_2.x), all(select(vec3<bool>(false, var_1.d.x, var_0.d.x), select(vec3<bool>(true, false, var_1.d.x), vec3<bool>(false, false, var_0.d.x), vec3<bool>(var_0.d.x, var_1.d.x, true)), all(vec4<bool>(false, var_0.d.x, true, var_1.d.x))))), ~vec4<u32>(0u, ~(~var_1.e.x), var_3.x, var_3.x << (firstTrailingBit(34774u) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.d.x;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2281f, -818f), vec2<f32>(-968f, -814f)))) - vec2<f32>(-908f, -1078f)));
    var var_3 = Struct_2(arg_0, func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1113f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -942f))), _wgslsmith_f_op_f32(trunc(-1180f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-761f, 1000f))))), ~max(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.e, vec4<u32>(arg_1.b.x, arg_1.e.x, 4490u, arg_0.b.x)), arg_1.b.x, arg_0.b.x | 31338u), ~arg_1.b ^ firstTrailingBit(arg_1.b)), vec2<u32>(arg_0.e.x, max(arg_0.b.x ^ arg_1.e.x, ~39205u) << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(2916u, arg_0.b.x, arg_0.b.x), func_1(vec4<f32>(var_2.x, 704f, -142f, -910f)).e.x) % 32u)));
    let var_4 = -1781f;
    return var_2.x;
}

fn func_5(arg_0: f32) -> Struct_2 {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1374f, arg_0, -604f, _wgslsmith_div_f32(arg_0, 736f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -381f)) * vec4<f32>(arg_0, arg_0, arg_0, -437f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1904f, 985f, 794f) * vec4<f32>(arg_0, -114f, arg_0, -987f)), vec4<f32>(191f, -1357f, -827f, -105f)), vec4<f32>(-304f, _wgslsmith_div_f32(181f, arg_0), _wgslsmith_div_f32(arg_0, 551f), arg_0)), true)));
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -809f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, -1000f, arg_0))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), arg_0, -833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -700f)) * arg_0))));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -224f, 338f, -457f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(207f, -550f, arg_0, arg_0))) - vec4<f32>(1031f, -629f, 2349f, arg_0)), vec4<f32>(-835f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -716f))))));
    let var_3 = all(!vec2<bool>(false, var_1.d.x)) & var_1.d.x;
    let var_4 = 620f;
    return Struct_2(var_2, var_2, var_1.b, ~firstLeadingBit(~vec2<u32>(4294967295u, 15373u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-547f, 1291f)) - _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a, vec3<u32>(4294967295u, 5934u, 1233u), u_input.a, vec3<bool>(false, true, false), vec4<u32>(65960u, 0u, 4294967295u, 4294967295u)), func_1(vec4<f32>(846f, -549f, 523f, -1198f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(min(1f, 282f))));
    let var_2 = 43632u;
    let var_3 = ~vec3<u32>(_wgslsmith_mult_u32(~func_3(), 11812u), _wgslsmith_div_u32(abs(_wgslsmith_mod_u32(var_0.a.e.x, 4294967295u)), 35324u), 1u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(-737f, _wgslsmith_div_f32(var_1, 1070f)))), var_1, 407f);
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(-27292i, 1i, -16783i, i32(-1i) * -41260i)), var_0.b.e);
}

