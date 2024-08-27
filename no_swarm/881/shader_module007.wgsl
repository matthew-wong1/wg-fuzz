struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> vec4<i32> {
    let var_0 = arg_1.a.e;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) + arg_1.d.x), _wgslsmith_mult_vec4_i32(reverseBits(arg_1.a.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, arg_0), vec4<u32>(66257u, u_input.b, 12982u, arg_0)) % vec4<u32>(32u))), select((vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | arg_1.a.b) | firstTrailingBit(vec4<i32>(arg_1.a.b.x, u_input.a.x, arg_1.a.c.x, 2147483647i)), u_input.a, select(select(vec4<bool>(true, arg_1.c.x, arg_2, arg_2), vec4<bool>(arg_2, false, true, false), vec4<bool>(arg_1.b.x, true, arg_2, true)), vec4<bool>(true, var_0, true, arg_2), vec4<bool>(false, arg_1.a.e, var_0, arg_1.b.x)))), vec2<i32>(0i << (((arg_0 ^ 1u) << (arg_0 % 32u)) % 32u), ~(-1i) ^ ~_wgslsmith_sub_i32(arg_1.a.c.x, 2147483647i)), _wgslsmith_f_op_vec4_f32(arg_1.a.d + arg_1.a.d), false);
    let var_2 = ~_wgslsmith_clamp_vec4_i32(var_1.b, var_1.b, _wgslsmith_add_vec4_i32(~(-arg_1.a.b), vec4<i32>(abs(-27934i), 2147483647i, u_input.a.x ^ 1i, _wgslsmith_mult_i32(u_input.a.x, -20285i))));
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(arg_0, min(u_input.c, ~(u_input.c | u_input.b))), u_input.b);
    return reverseBits(arg_1.a.b);
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(71572u, 42635u, 1848u), vec3<u32>(4294967295u, u_input.b, 8609u)), Struct_2(Struct_1(-569f, u_input.a, vec2<i32>(3065i, u_input.a.x), vec4<f32>(-968f, 1143f, 1430f, -1000f), true), vec2<bool>(true, true), vec2<bool>(true, false), vec3<f32>(238f, -1000f, -919f), vec3<f32>(-1000f, -914f, -707f)), any(vec2<bool>(true, false))), select(u_input.a, vec4<i32>(0i, u_input.a.x, u_input.a.x, -8094i), any(vec4<bool>(false, false, false, true)))), 46787i ^ -(52173i | u_input.a.x)), u_input.a.wy);
    let var_1 = Struct_3(Struct_1(-267f, firstTrailingBit(u_input.a), abs(-u_input.a.zw ^ ~vec2<i32>(-1i, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-671f, 941f, -175f, 1145f))), true), ~vec4<u32>(select(~u_input.c, 1u, u_input.c < u_input.b), _wgslsmith_mult_u32(58833u, 58836u), 1u, u_input.b), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f * -691f)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-27202i, -9243i, u_input.a.x, var_0), vec4<i32>(var_0, var_0, var_0, var_0))), vec2<i32>(-14092i << (u_input.c % 32u), -1960i << (u_input.b % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(305f, 1000f, -242f, 995f), vec4<f32>(-1000f, -326f, 1536f, 359f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, 994f, 1213f, 519f)))), true), vec2<bool>(true, true), vec2<bool>(true, true), vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-223f - -764f), _wgslsmith_f_op_f32(max(337f, -1552f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1866f)) - _wgslsmith_f_op_f32(select(-1470f, -1444f, true)))), vec3<f32>(-1925f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 504f) + -951f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3130f * -1291f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), u_input.a, func_3(0u, Struct_2(Struct_1(203f, u_input.a, u_input.a.zz, vec4<f32>(-118f, 1000f, -745f, 1455f), false), vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, 862f, 181f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, -1115f, 1420f))), all(vec3<bool>(false, true, true))).xy, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(701f, 1522f, -993f, -1502f) + vec4<f32>(846f, 2387f, 1482f, -442f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2206f, -972f, 122f, 125f))))), ~u_input.c < 36268u), -1i);
    var var_2 = var_1;
    let var_3 = var_1.a;
    var var_4 = var_2.b.x;
    return select(var_2.c.c, var_2.c.b, all(!(!(!var_1.c.c))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = arg_0.c;
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0.a.b.x, arg_0.a.c.x), ~vec3<i32>(arg_0.a.b.x, max(arg_0.a.c.x, 2597i), -1i));
    var_0 = vec2<bool>(arg_1, false);
    return arg_0.a;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(arg_3, firstLeadingBit(vec4<u32>(arg_0 ^ firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_u32(select(vec2<u32>(85062u, 1u), vec2<u32>(1u, 0u), true), vec2<u32>(arg_0, 88959u)), 34057u, countOneBits(16882u))), Struct_2(arg_3, !func_2(), vec2<bool>(any(vec2<bool>(true, false)) || (u_input.a.x > u_input.a.x), all(select(vec4<bool>(arg_3.e, arg_3.e, arg_3.e, arg_3.e), vec4<bool>(arg_3.e, true, arg_3.e, false), vec4<bool>(arg_3.e, true, arg_3.e, arg_3.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.d.zyy * arg_3.d.zyz)), arg_3.d.xxw), Struct_1(-198f, vec4<i32>(1i, arg_3.b.x, _wgslsmith_add_i32(-29150i, u_input.a.x), 2147483647i) >> (vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), ~40501u, _wgslsmith_div_u32(arg_0, arg_0), min(arg_0, arg_0)) % vec4<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(-arg_3.b.yy, u_input.a.yy), firstLeadingBit(u_input.a.wy ^ vec2<i32>(arg_1, -2147483647i))), _wgslsmith_f_op_vec4_f32(trunc(arg_3.d)), arg_3.d.x >= _wgslsmith_f_op_f32(arg_3.a - -919f)), u_input.a.x);
    var var_1 = var_0.a.d.yy;
    var_1 = _wgslsmith_f_op_vec2_f32(max(func_4(var_0.c, select(false, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-arg_2) != arg_3.d.x), var_1.x).d.ww, _wgslsmith_f_op_vec2_f32(vec2<f32>(1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142f + var_1.x))) + _wgslsmith_f_op_vec2_f32(-arg_3.d.zz))));
    var var_2 = func_4(Struct_2(Struct_1(1373f, _wgslsmith_mult_vec4_i32(u_input.a, select(vec4<i32>(arg_1, u_input.a.x, 1i, 1i), vec4<i32>(var_0.e, arg_1, var_0.d.b.x, arg_3.b.x), true)), vec2<i32>(~var_0.c.a.c.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(trunc(1739f)), 1049f, _wgslsmith_f_op_f32(abs(var_1.x))), any(func_2())), !var_0.c.b, func_2(), arg_3.d.xwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, _wgslsmith_f_op_f32(var_1.x + var_0.a.a), 955f))), arg_3.e, -949f);
    var_2 = Struct_1(_wgslsmith_f_op_f32(step(378f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(536f))), true)))), abs(_wgslsmith_div_vec4_i32(u_input.a, arg_3.b >> (vec4<u32>(var_0.b.x, 1u, arg_0, u_input.b) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, 59843u, 4294967295u, 93778u), abs(vec4<u32>(1u, u_input.b, u_input.b, var_0.b.x))) % vec4<u32>(32u))), vec2<i32>(7351i, u_input.a.x), var_0.d.d, true);
    return arg_3;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = func_5(u_input.b << (~1u % 32u), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1380f, _wgslsmith_f_op_f32(round(-1163f)), true)))) + _wgslsmith_f_op_f32(f32(-1f) * -968f)), func_4(Struct_2(Struct_1(-1404f, ~vec4<i32>(u_input.a.x, u_input.a.x, -34991i, 0i), select(vec2<i32>(-1i, arg_1), u_input.a.yz, vec2<bool>(arg_0.x, false)), vec4<f32>(-334f, 150f, 378f, -733f), arg_0.x | false), func_2(), vec2<bool>(arg_0.x, !arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-659f, 377f, 293f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, -730f, 403f) + vec3<f32>(-1071f, -715f, -261f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, 666f, -599f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-527f - -2328f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f - 511f) - _wgslsmith_f_op_f32(step(-2566f, 510f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-206f, -547f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1677f * -410f) - 840f))));
    var var_1 = -2159f;
    var var_2 = Struct_2(func_4(Struct_2(var_0, vec2<bool>(all(arg_0), all(vec2<bool>(false, arg_0.x))), vec2<bool>(arg_0.x & var_0.e, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x - var_0.a), _wgslsmith_f_op_f32(var_0.a * var_0.a), -1579f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.d.x, 465f))), arg_0.x, 1524f), func_2(), !(!(!(!vec2<bool>(true, var_0.e)))), var_0.d.wxz, var_0.d.xyx);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(133f))));
    let var_4 = Struct_2(var_2.a, func_2(), !vec2<bool>(_wgslsmith_f_op_f32(sign(-1020f)) != _wgslsmith_f_op_f32(f32(-1f) * -2103f), true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.a, -868f)), var_2.d.x, var_2.d.x >= var_2.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.d.x)) + _wgslsmith_f_op_f32(-var_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.x + var_0.a), -260f, true))), _wgslsmith_f_op_f32(f32(-1f) * -920f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1290f, -497f, 453f) * var_0.d.yxz));
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    return arg_0.c;
}

fn func_7(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec4<bool>(true, arg_2.a.e, arg_2.b.x, !any(select(!vec4<bool>(false, arg_2.c.x, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2.c.x, arg_2.b.x, true, true), false), arg_2.c.x)));
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(7026u, 4294967295u, ~u_input.b), max(_wgslsmith_mult_vec3_u32(vec3<u32>(120583u, 0u, u_input.b) << (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(27541u, u_input.b, 1u)), ~(vec3<u32>(u_input.c, 5424u, u_input.b) << (vec3<u32>(84193u, u_input.b, u_input.c) % vec3<u32>(32u))))));
    let var_2 = var_0.wzx;
    var_1 = ~firstTrailingBit((select(vec3<u32>(u_input.c, u_input.c, var_1.x), vec3<u32>(0u, 4294967295u, 53294u), arg_2.c.x) | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 41069u, var_1.x), vec3<u32>(97043u, var_1.x, var_1.x), vec3<u32>(1u, u_input.c, var_1.x))) ^ ~(~vec3<u32>(u_input.b, var_1.x, var_1.x)));
    var var_3 = arg_2.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec4<i32>(u_input.a.x, _wgslsmith_add_i32(~u_input.a.x, countOneBits(1i)), u_input.a.x, u_input.a.x), vec2<i32>(-8930i, u_input.a.x), func_6(Struct_3(func_1(vec3<bool>(false, true, true), min(-1i, 66963i)), vec4<u32>(u_input.c, u_input.c, u_input.b, 1u), Struct_2(func_1(vec3<bool>(true, false, true), u_input.a.x), vec2<bool>(true, false), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2189f, -1035f, -245f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(378f, -902f, 186f) * vec3<f32>(-569f, -368f, -826f))), func_5(4294967295u, _wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -103f), Struct_1(-455f, vec4<i32>(-6337i, -7834i, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<f32>(1425f, -1000f, 315f, 2842f), true)), ~u_input.a.x >> (u_input.b % 32u)), select(vec4<u32>(u_input.b, u_input.b, 1u, ~u_input.b), vec4<u32>(0u, 1u, u_input.b, ~82338u), !func_1(vec3<bool>(true, false, true), -25899i).e), -107f, Struct_2(Struct_1(1f, max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, 0i, 2147483647i, 2147483647i)), vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-989f, 718f, -422f, 556f), vec4<f32>(-1493f, -788f, -251f, -1109f)), true), vec2<bool>(true, true), vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(-1994f + -201f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-722f + 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(684f, -459f, -298f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b, _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 18870u), vec3<u32>(u_input.c, u_input.c, 1u)), vec3<u32>(65362u, 4294967295u, 44487u), ~vec3<u32>(1u, u_input.c, u_input.c)), vec3<u32>(0u, u_input.c | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 103659u)), u_input.b >> (_wgslsmith_clamp_u32(4294967295u, 66958u, u_input.b) % 32u)), ~(~vec3<u32>(0u, u_input.b, 0u))), var_0.a.a, u_input.c);
}

