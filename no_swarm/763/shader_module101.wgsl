struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), 36070u, vec4<i32>(9937i, i32(-2147483648), 21788i, 50367i), vec2<i32>(69712i, -71244i), vec4<f32>(-972f, -976f, -794f, -1156f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_3) -> vec3<i32> {
    global0 = arg_3.b.d;
    var var_0 = Struct_3(arg_3.a, arg_3.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.b.d.b, _wgslsmith_div_u32(u_input.a, 1u), global0.b), vec3<u32>(~_wgslsmith_div_u32(46329u, 10595u), 66725u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(56475u, arg_0), vec2<u32>(arg_0, arg_0)) % 32u), arg_3.b.d.b >> (0u % 32u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_3.c.x, 94280u), firstLeadingBit(arg_3.c)), vec3<u32>(max(4294967295u, global0.b), ~global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_3.c.x, global0.b), arg_3.b.b.wxw)), !arg_3.a | false)), arg_3.d);
    var var_1 = ~arg_2;
    var_1 = arg_2;
    var var_2 = _wgslsmith_add_i32(0i, _wgslsmith_mult_i32(29057i, 14049i));
    return ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, select(u_input.e, _wgslsmith_dot_vec2_i32(var_1.zw, var_0.d.c.yw), any(vec4<bool>(false, true, arg_3.a, var_0.a))), var_1.x), vec3<i32>(firstTrailingBit(arg_3.d.d.x), _wgslsmith_dot_vec4_i32(var_0.d.c, _wgslsmith_mod_vec4_i32(global0.c, vec4<i32>(8754i, var_0.d.a, 1i, arg_1))), countOneBits(_wgslsmith_clamp_i32(var_1.x, arg_2.x, arg_3.b.d.d.x))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> i32 {
    global0 = Struct_1(-2147483647i, global0.b, ~vec4<i32>(abs(1i) >> (~global0.b % 32u), func_3(~38148u, u_input.d.x | 1i, firstTrailingBit(vec4<i32>(arg_2.x, arg_0, 14839i, 4964i)), Struct_3(true, Struct_2(vec2<i32>(-18592i, -4337i), vec4<u32>(u_input.c.x, 15192u, global0.b, u_input.a), vec3<f32>(global0.e.x, 1531f, 318f), Struct_1(-52085i, global0.b, vec4<i32>(arg_0, arg_2.x, -2147483647i, arg_2.x), u_input.d.zy, vec4<f32>(global0.e.x, 932f, -1131f, global0.e.x))), vec3<u32>(global0.b, global0.b, global0.b), Struct_1(-1i, 16710u, vec4<i32>(1i, 0i, 0i, u_input.e), arg_2.yz, vec4<f32>(global0.e.x, -1392f, -161f, -591f)))).x, _wgslsmith_mult_i32(u_input.d.x, -16299i), arg_2.x), -min(u_input.d.xz, vec2<i32>(reverseBits(-2147483647i), abs(-1i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.e.x, -846f, -941f, global0.e.x)))))));
    global0 = Struct_1(u_input.d.x, global0.b, vec4<i32>(arg_2.x, 19019i, global0.d.x, global0.a), -arg_2.zy, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.e)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1491f, 160f, 139f, global0.e.x))))), vec4<f32>(-366f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e.x, -737f) * 1629f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.e.x, 328f)) - _wgslsmith_f_op_f32(1924f * -150f)), 676f))));
    global0 = Struct_1(61951i, 64584u, global0.c, vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x | global0.a, global0.d.x, min(global0.d.x, 38397i), countOneBits(arg_0)), _wgslsmith_div_vec4_i32(global0.c, global0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.e)))));
    var var_0 = _wgslsmith_f_op_f32(global0.e.x * -358f);
    return -1i;
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(u_input.b, min(~u_input.c.x, 4294967295u), vec4<i32>(~func_4(global0.d.x, vec3<bool>(false, true, false), func_3(1u, u_input.e, global0.c, Struct_3(true, Struct_2(u_input.d.xx, vec4<u32>(1u, global0.b, 1u, u_input.c.x), global0.e.xwx, Struct_1(global0.d.x, 856u, vec4<i32>(u_input.b, global0.d.x, global0.c.x, 8043i), global0.d, vec4<f32>(1000f, global0.e.x, 1172f, -995f))), vec3<u32>(u_input.a, u_input.a, 22034u), Struct_1(-1i, u_input.a, global0.c, global0.d, global0.e)))), -(global0.a >> (~u_input.a % 32u)), global0.a, u_input.b), vec2<i32>(global0.a, _wgslsmith_dot_vec3_i32(u_input.d, global0.c.xwz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global0.e.x, -747f, global0.e.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-799f, 1000f, -893f, 1003f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-609f, global0.e.x, global0.e.x, 151f)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false))))));
    let var_0 = countOneBits(select(-(~(global0.c.wxw | vec3<i32>(global0.a, global0.c.x, -3207i))), ~(-global0.c.wyy & firstLeadingBit(u_input.d)), true));
    global0 = Struct_1(~(-2147483647i), ~max(firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(min(global0.b, u_input.a), _wgslsmith_clamp_u32(0u, 4294967295u, global0.b), reverseBits(u_input.a))), vec4<i32>(2147483647i, _wgslsmith_mod_i32(countOneBits(countOneBits(var_0.x)), -_wgslsmith_div_i32(u_input.b, -51634i)), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(global0.d.x, -2147483647i), 1i)), func_3(_wgslsmith_mod_u32(96206u, 56129u) << (0u % 32u), i32(-1i) * -2737i, global0.c, Struct_3(true, Struct_2(global0.c.yy, vec4<u32>(u_input.c.x, u_input.c.x, 28468u, u_input.a), vec3<f32>(global0.e.x, -809f, global0.e.x), Struct_1(-16479i, 19128u, global0.c, vec2<i32>(0i, 16580i), global0.e)), ~vec3<u32>(8641u, 4294967295u, global0.b), Struct_1(16276i, global0.b, global0.c, vec2<i32>(17384i, var_0.x), vec4<f32>(global0.e.x, -1000f, global0.e.x, global0.e.x)))).x), reverseBits(~reverseBits(var_0.zz)), vec4<f32>(global0.e.x, global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-396f))), global0.e.x));
    var var_1 = Struct_2(_wgslsmith_sub_vec2_i32(global0.c.xz, _wgslsmith_clamp_vec2_i32(-(global0.d ^ vec2<i32>(1i, global0.d.x)), vec2<i32>(22522i, firstTrailingBit(u_input.d.x)), var_0.zx)), vec4<u32>(u_input.c.x, global0.b, ~(1u ^ global0.b) | u_input.c.x, ~(15837u ^ global0.b)), global0.e.zwy, Struct_1(-(~35181i), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 2713u, 73336u, global0.b), ~vec4<u32>(6218u, 4294967295u, 67820u, 96471u))), max(countOneBits(-vec4<i32>(global0.c.x, global0.d.x, global0.a, u_input.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(global0.c, global0.c), -7631i, u_input.b, _wgslsmith_mod_i32(global0.c.x, u_input.b))), u_input.d.yx ^ ~vec2<i32>(24590i, -22104i), global0.e));
    var_1 = Struct_2(~abs((vec2<i32>(var_0.x, -9139i) << (var_1.b.wz % vec2<u32>(32u))) << (~var_1.b.yz % vec2<u32>(32u))), ~var_1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2035f, 557f)), _wgslsmith_div_f32(global0.e.x, _wgslsmith_f_op_f32(abs(591f))), _wgslsmith_f_op_f32(abs(773f))), Struct_1(u_input.e, _wgslsmith_add_u32(select(u_input.c.x, global0.b, true) << (firstLeadingBit(u_input.a) % 32u), 0u ^ _wgslsmith_add_u32(var_1.d.b, 97285u)), vec4<i32>(global0.a | (var_1.d.c.x | 2170i), global0.c.x, 1i, abs(-var_0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(~(-1i), ~var_1.a.x), global0.c.yw), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(var_1.d.e)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.e.x, 1000f, -1904f, 680f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) * vec4<f32>(1036f, 216f, -259f, 833f)))));
    return Struct_2(-_wgslsmith_mult_vec2_i32(select(u_input.d.zx, vec2<i32>(var_1.d.c.x, -2147483647i), global0.b <= 44305u), var_1.a), select(var_1.b, var_1.b, select(true, (i32(-1i) * -7997i) == -global0.d.x, false)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d.e.zyy)))), var_1.d);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0.e.xw - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(-250f, global0.e.x), _wgslsmith_f_op_f32(global0.e.x - 188f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, global0.e.x) * _wgslsmith_f_op_vec2_f32(global0.e.yz - vec2<f32>(1568f, global0.e.x))), global0.e.zy))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_1(max(func_1().d.d.x, global0.a), ~(firstTrailingBit(36991u) & ~_wgslsmith_clamp_u32(21610u, global0.b, u_input.c.x)), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_0.a.x, 37260i, var_0.d.d.x, -2273i)), vec4<i32>(global0.d.x, -u_input.e, 1i, i32(-1i) * -901i) | (vec4<i32>(global0.c.x, var_0.a.x, 19496i, 4645i) ^ -vec4<i32>(global0.c.x, global0.d.x, 0i, 2147483647i))), u_input.d.yz << (~func_2().b.zx % vec2<u32>(32u)), var_0.d.e);
    var var_1 = Struct_3(any(vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, true)))), func_2(), _wgslsmith_add_vec3_u32(~var_0.b.yzy, vec3<u32>(43742u | _wgslsmith_mult_u32(global0.b, 1u), ~(30554u | var_0.d.b), global0.b | 26277u)), func_1().d);
    let var_2 = ~select(55831u, 0u, false);
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x * 816f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1119f * _wgslsmith_f_op_f32(step(var_0.c.x, var_1.d.e.x))))), func_2().d.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1585f, var_1.d.e.x)), var_1.d.e.x)), _wgslsmith_f_op_vec4_f32(max(var_0.d.e, func_1().d.e)));
    let var_4 = func_1().d;
    var_1 = Struct_3(var_1.a, var_1.b, ~var_0.b.xyw, var_4);
    let var_5 = func_2();
    var var_6 = select(var_2, ~1u | _wgslsmith_mult_u32(var_5.d.b, _wgslsmith_clamp_u32(~var_0.b.x, 68877u, 1u)), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32((global0.c.wwx | reverseBits(vec3<i32>(-19464i, 0i, var_0.a.x))) & ~var_4.c.xxz, countOneBits(func_2().d.c.xzw)), -func_2().a);
}

