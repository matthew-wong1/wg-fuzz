struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<f32> {
    var var_0 = arg_1.c.b.d.zxy;
    var_0 = arg_1.c.b.d.yyx << (((~(~vec3<u32>(arg_1.b, var_0.x, var_0.x)) | ~arg_1.c.a.d.xyw) | arg_1.a.e.d.wzw) % vec3<u32>(32u));
    var_0 = arg_1.a.e.d.zyw;
    var_0 = _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(1u, u_input.c.x, var_0.x) & _wgslsmith_div_vec3_u32(arg_1.a.a.d.xyz, arg_1.a.a.d.www))), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, reverseBits(20743u), u_input.c.x), arg_1.c.b.d.wyw | arg_1.c.b.d.wwy), ~countOneBits(abs(min(vec3<u32>(4294967295u, var_0.x, u_input.c.x), arg_1.a.b.d.yyw))));
    let var_1 = select(reverseBits(_wgslsmith_clamp_vec3_i32(-(u_input.a & vec3<i32>(-2147483647i, arg_1.c.e.b, arg_2.x)), arg_0.xxz, select(u_input.a & u_input.a, firstLeadingBit(vec3<i32>(-34383i, arg_0.x, u_input.b.x)), select(vec3<bool>(arg_1.c.c, arg_1.c.c, arg_1.c.c), vec3<bool>(arg_1.a.c, false, arg_1.a.c), vec3<bool>(false, arg_1.a.c, false))))), -_wgslsmith_div_vec3_i32(~u_input.b, vec3<i32>(-2147483647i, -1i, -198i)) >> (arg_1.c.b.d.zwz % vec3<u32>(32u)), select(arg_1.a.c, arg_1.a.c, all(vec2<bool>(true, true))));
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-774f + -1000f), _wgslsmith_f_op_f32(arg_1.a.d - arg_1.c.a.c.x)) + _wgslsmith_f_op_f32(-arg_1.a.b.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.a, arg_1.c) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.c.x, arg_2)))), 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c - vec2<f32>(arg_1.c.x, 428f)) * vec2<f32>(arg_1.a.x, 632f)), abs(arg_1.d)), arg_0, false, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.a.x, -604f))))), arg_1), u_input.e, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(arg_0.c, _wgslsmith_div_vec2_f32(arg_0.c, vec2<f32>(arg_1.a.x, arg_2)))), arg_0.b, arg_0.a, ~(vec4<u32>(62953u, 1u, 56883u, 72868u) ^ vec4<u32>(0u, 4294967295u, arg_1.d.x, 3223u))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1834f, 889f) - arg_0.a), abs(20760i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_0.c.x), vec2<f32>(-1469f, -2935f)))), _wgslsmith_mod_vec4_u32(reverseBits(arg_0.d), vec4<u32>(0u, 1u, 7871u, arg_0.d.x) >> (arg_0.d % vec4<u32>(32u)))), true, arg_2, arg_0));
    let var_1 = arg_0.d.wz;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.b.a.x, -399f, -1179f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -296f, arg_2))))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(var_0.a.d, arg_1.a.x)), 2174f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-vec4<i32>(arg_1.b, arg_0.b, arg_0.b, 1636i), Struct_4(var_0.a, arg_0.d.x, Struct_2(arg_1, arg_0, true, -1252f, arg_0)), ~vec2<i32>(arg_0.b, -40458i))).x), _wgslsmith_f_op_f32(select(880f, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-arg_2)), !all(vec4<bool>(var_0.a.c, var_0.a.c, var_0.c.c, var_0.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1291f) - -180f)), true));
    var var_3 = Struct_3(true, Struct_2(Struct_1(var_2.yy, -_wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, arg_0.c.x)), arg_0.d << (vec4<u32>(var_1.x, 26049u, arg_1.d.x, 1431u) % vec4<u32>(32u))), arg_1, !all(select(vec2<bool>(var_0.a.c, false), vec2<bool>(var_0.a.c, var_0.a.c), true)), 1644f, var_0.c.b), Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049f, arg_0.a.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1268f, arg_1.c.x) - vec2<f32>(arg_1.c.x, var_0.c.a.a.x))), var_0.c.e.b, vec2<f32>(-1251f, _wgslsmith_f_op_f32(exp2(arg_0.a.x))), arg_0.d), !(true & var_0.a.c) == true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, 1904f)) * _wgslsmith_f_op_f32(abs(var_2.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-228f, arg_1.c.x), var_0.c.e.c, true)) - _wgslsmith_div_vec2_f32(vec2<f32>(543f, arg_0.a.x), vec2<f32>(1508f, 961f))), max(_wgslsmith_mult_i32(-9293i, arg_0.b), -1093i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.zx, vec2<f32>(-392f, var_0.c.b.c.x)))), max(vec4<u32>(arg_1.d.x, arg_1.d.x, 1u, arg_1.d.x), var_0.a.b.d))), _wgslsmith_mod_vec4_i32(vec4<i32>(select(-arg_1.b, _wgslsmith_div_i32(var_0.a.b.b, -12291i), arg_0.b != -1i), 2147483647i, 2534i, max(1i, _wgslsmith_add_i32(-1i, var_0.a.b.b))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 10908i, 0i, arg_1.b) ^ vec4<i32>(0i, 0i, 1i, var_0.a.b.b), ~vec4<i32>(2147483647i, arg_0.b, 2147483647i, -12505i), -vec4<i32>(0i, 2147483647i, 2147483647i, 0i)))));
    var var_4 = Struct_4(var_0.a, _wgslsmith_mult_u32(4294967295u, u_input.e), var_0.c);
    return var_0.b;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(arg_0.x, arg_0.x, 1i, u_input.b.x), Struct_4(Struct_2(Struct_1(vec2<f32>(1000f, -360f), 15051i, vec2<f32>(-1000f, 1000f), vec4<u32>(1u, 4294967295u, 22313u, u_input.c.x)), Struct_1(vec2<f32>(161f, 404f), -2147483647i, vec2<f32>(941f, -734f), vec4<u32>(u_input.d, 4294967295u, 1u, u_input.e)), true, 135f, Struct_1(vec2<f32>(-304f, -1505f), arg_0.x, vec2<f32>(1495f, 607f), vec4<u32>(u_input.e, 37357u, 73608u, 33348u))), 0u, Struct_2(Struct_1(vec2<f32>(644f, 1754f), arg_0.x, vec2<f32>(-1347f, 535f), vec4<u32>(u_input.c.x, 4294967295u, 8009u, 37752u)), Struct_1(vec2<f32>(-260f, 1000f), 0i, vec2<f32>(-792f, -488f), vec4<u32>(0u, u_input.e, u_input.c.x, 39420u)), false, 768f, Struct_1(vec2<f32>(-100f, 1082f), arg_0.x, vec2<f32>(756f, -272f), vec4<u32>(u_input.e, u_input.e, 42237u, 6405u)))), arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(586f, -142f) - vec2<f32>(-1777f, -1000f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1507f, -1580f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1701f, -1095f))))), -1i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 720f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, 627f)))), vec2<f32>(753f, _wgslsmith_f_op_f32(-344f - -368f)))), abs(max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.e, u_input.e, 4294967295u)), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -38839i), ~(-2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1288f, 871f)))))), firstTrailingBit(~vec4<u32>(u_input.e, u_input.e, 40578u, u_input.d))), _wgslsmith_f_op_f32(f32(-1f) * -112f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_f_op_f32(abs(905f))))));
    var var_2 = vec3<u32>(var_0, var_0, 1u);
    var var_3 = Struct_3(all(select(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(262f, var_1))), arg_0.x, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 18747u, var_0, u_input.c.x), vec4<u32>(0u, u_input.d, 26241u, u_input.c.x), false), abs(vec4<u32>(4294967295u, u_input.c.x, var_0, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 209f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -350f) + vec2<f32>(var_1, -573f))), _wgslsmith_mult_i32(28306i, arg_0.x) | (arg_0.x ^ -1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))), abs(max(vec4<u32>(69227u, var_2.x, var_0, var_0), vec4<u32>(var_0, u_input.d, var_2.x, 0u)))), !(!all(vec2<bool>(false, false))), 468f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, 1283f), vec2<f32>(var_1, var_1))), _wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(0i, -30232i, u_input.a.x, -1i), Struct_4(Struct_2(Struct_1(vec2<f32>(628f, 914f), u_input.b.x, vec2<f32>(var_1, 705f), vec4<u32>(31019u, var_0, var_0, var_0)), Struct_1(vec2<f32>(559f, var_1), u_input.b.x, vec2<f32>(613f, 802f), vec4<u32>(var_2.x, u_input.c.x, var_0, u_input.d)), true, var_1, Struct_1(vec2<f32>(974f, 972f), -17029i, vec2<f32>(var_1, var_1), vec4<u32>(103722u, u_input.e, 23391u, var_2.x))), 4294967295u, Struct_2(Struct_1(vec2<f32>(var_1, -248f), -46398i, vec2<f32>(-189f, -104f), vec4<u32>(var_0, var_2.x, var_0, var_2.x)), Struct_1(vec2<f32>(-771f, 251f), -10373i, vec2<f32>(836f, var_1), vec4<u32>(1u, u_input.e, var_0, var_2.x)), false, var_1, Struct_1(vec2<f32>(-194f, 951f), u_input.a.x, vec2<f32>(var_1, var_1), vec4<u32>(u_input.c.x, var_2.x, 1u, 7998u)))), u_input.a.yy))), u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(var_1, var_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1293f))), vec4<u32>(13449u, reverseBits(u_input.d), 0u, 1u))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-480f, -715f), vec2<f32>(-1362f, var_1))), 21434i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1263f, var_1), vec2<f32>(1000f, 660f))), firstTrailingBit(vec4<u32>(4294967295u, u_input.e, u_input.c.x, 26193u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-349f, var_1))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1, -2189f), vec2<f32>(257f, -1442f))), -57704i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1242f, -2055f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), abs(firstTrailingBit(vec4<u32>(27510u, var_0, var_2.x, 4294967295u)))), true, 2376f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1570f, var_1) * vec2<f32>(var_1, var_1))), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1000f))), abs(vec4<u32>(4294967295u, 57551u, var_0, 18148u)))), ~abs(abs(vec4<i32>(u_input.a.x, -2147483647i, arg_0.x, 40936i) >> (vec4<u32>(41273u, var_0, 70289u, u_input.c.x) % vec4<u32>(32u)))));
    let var_4 = u_input.a.zy << (abs(vec2<u32>(13675u, abs(1u))) % vec2<u32>(32u));
    return Struct_3(all(vec3<bool>(!any(vec4<bool>(false, var_3.a, var_3.c.c, var_3.a)), any(vec2<bool>(var_3.b.c, var_3.b.c)) || any(vec4<bool>(var_3.a, var_3.b.c, var_3.a, false)), var_3.b.c & any(vec3<bool>(var_3.b.c, false, var_3.b.c)))), var_3.c, Struct_2(var_3.c.e, var_3.b.a, !any(vec4<bool>(true, var_3.b.c, true, var_3.c.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.b.d + var_3.b.d), var_3.c.a.c.x))), var_3.b.a), -var_3.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = func_2(u_input.a.yz ^ ~(vec2<i32>(-1i) * -vec2<i32>(-5023i, 1i)));
    var_0 = func_2(vec2<i32>(func_2(countOneBits(~var_0.d.yz)).c.b.b, _wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_div_i32(31934i, arg_1), firstTrailingBit(1i)))));
    return var_0.c.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-663f - 113f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f * -212f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1555f, 1336f, false)), _wgslsmith_f_op_f32(floor(-837f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1213f, -710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1258f, -344f))))));
    var var_1 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-35909i, _wgslsmith_clamp_i32(-2147483647i, -34601i, u_input.b.x), ~u_input.b.x, u_input.a.x) ^ (vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, -2147483647i) & vec4<i32>(2147483647i, 0i, u_input.b.x, 0i)), reverseBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x), max(vec4<i32>(1456i, 12631i, 1i, u_input.a.x), vec4<i32>(-6366i, u_input.a.x, 12676i, u_input.a.x))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), true), reverseBits(u_input.a.x), vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(124f + _wgslsmith_f_op_f32(-var_0.x)))) - vec2<f32>(985f, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-536f)), var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(_wgslsmith_mult_u32(25975u, u_input.d) > 20447u, true, true, select(true, false, false) || (u_input.e <= 83089u)), 0i, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), any(vec4<bool>(true, true, true, true)))))));
    var_1 = ~(~vec4<i32>(-1i, -(~(-21746i)), -1i, ~1i));
    let var_3 = Struct_1(var_2, abs(-var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-745f - var_0.x), _wgslsmith_f_op_f32(ceil(-876f))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-734f)), _wgslsmith_div_f32(-972f, -1185f))), ~vec4<u32>(4294967295u, func_4(func_2(u_input.a.yy).b.a, Struct_1(var_2, -2147483647i, var_2, vec4<u32>(u_input.d, u_input.e, 4294967295u, u_input.c.x)), _wgslsmith_f_op_f32(step(var_0.x, 1000f))), max(52825u, 2160u | u_input.c.x), u_input.d));
    let var_4 = vec4<bool>(any(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), false)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(func_2(vec2<i32>(32303i, 14233i)).d.xx, -vec2<i32>(var_3.b, var_1.x), var_1.xw), vec2<i32>(1795i, _wgslsmith_dot_vec2_i32(var_1.zz, var_1.yz))) <= var_3.b, any(select(vec2<bool>(func_2(u_input.a.yx).a, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), (false | (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.x, 4294967295u, 1u, 48696u), var_3.d) <= 0u)) || (!any(vec4<bool>(false, false, false, false)) & !func_2(vec2<i32>(var_1.x, var_3.b)).a));
    var var_5 = select(true, true, any(vec3<bool>(4294967295u >= abs(u_input.e), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.a.xz)).a, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(select(vec4<bool>(true, var_4.x, var_4.x, var_4.x), var_4, vec4<bool>(var_4.x, var_4.x, true, false)), ~1i, !var_4)).x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-159f)), _wgslsmith_f_op_f32(f32(-1f) * -1532f))), vec3<u32>(var_3.d.x, 19376u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_3.d.x, u_input.e)), select(var_3.d.yz, u_input.c, var_4.x))) << (vec3<u32>(_wgslsmith_clamp_u32(14196u, 1u, reverseBits(var_3.d.x)), u_input.e, _wgslsmith_dot_vec3_u32(var_3.d.ywy, var_3.d.wxz) | _wgslsmith_mult_u32(4294967295u, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1313f, -1427f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -1398f, -1259f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, 1135f, -566f), vec3<f32>(462f, 129f, -1177f)))))), ~(-12077i), -1070f);
}

