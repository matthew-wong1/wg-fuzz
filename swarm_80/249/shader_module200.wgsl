struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, false, false), 4294967295u, vec2<f32>(763f, -1080f), 0i, -2140f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = true;
    var_0 = all(vec3<bool>(arg_1.a, global0.a.x, true));
    let var_1 = -47534i;
    var var_2 = 34345u;
    var var_3 = i32(-1i) * -1i;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.e, 2011f, 1002f, -112f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, global0.c.x, -1258f, -357f), vec4<f32>(global0.c.x, global0.c.x, global0.e, global0.e), vec4<bool>(true, false, arg_1.a, false))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.e, global0.c.x, -378f, -340f)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, global0.c.x, -147f, global0.c.x)), vec4<f32>(-525f, -393f, _wgslsmith_f_op_f32(-1000f - global0.c.x), global0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1823f, 1442f, 1653f, 1135f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, -1335f, global0.c.x, global0.e)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global0 = Struct_3(vec3<bool>(true, true, global0.a.x & false), 19608u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(round(global0.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.e, 1000f), arg_0.ww)))), global0.d, 257f);
    global0 = Struct_3(global0.a, _wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(global0.b, global0.b), _wgslsmith_mod_u32(global0.b, 19327u)), global0.b), _wgslsmith_f_op_vec2_f32(sign(global0.c)), ~(-38930i >> (0u % 32u)), _wgslsmith_f_op_f32(1f + -304f));
    let var_0 = Struct_1(global0.a.x);
    let var_1 = !global0.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(global0.c.x)), vec4<bool>(!all(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_0.a, false, false), global0.a)), var_0.a, ~(global0.d ^ global0.d) > -2147483647i, any(select(select(var_1, var_1, true), global0.a, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1538f)) - -575f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e * -1829f) * _wgslsmith_f_op_f32(190f * -1283f)), _wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(6577u, 1u, 4294967295u, u_input.a.x), arg_1)).x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(748f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0)))));
    return (_wgslsmith_f_op_f32(ceil(arg_0.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(75084u, 4294967295u, 1u, 0u), Struct_1(false))).x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f), -632f))) && any(vec3<bool>(true, all(!global0.a), (global0.a.x != true) & !var_0.a));
}

fn func_2() -> bool {
    var var_0 = false;
    global0 = Struct_3(!select(vec3<bool>(true, true, true), global0.a, global0.a.x), ~_wgslsmith_sub_u32(~0u << (u_input.e.x % 32u), global0.b), global0.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(global0.d, global0.d), global0.d, -global0.d), -((vec3<i32>(global0.d, global0.d, global0.d) | vec3<i32>(2147483647i, -1i, global0.d)) | (vec3<i32>(global0.d, global0.d, global0.d) >> (vec3<u32>(u_input.b, global0.b, 0u) % vec3<u32>(32u))))), global0.e);
    var var_1 = -vec3<i32>(abs(~(-35859i)), ~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, 14366i, global0.d, 0i), vec4<i32>(global0.d, global0.d, -9827i, global0.d))), abs(~(25398i ^ global0.d)));
    let var_2 = -1000f;
    let var_3 = Struct_2(-522f, vec4<bool>(global0.a.x, true, func_4(_wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(u_input.d, u_input.c, u_input.d, global0.b), Struct_1(global0.a.x))), Struct_1(!global0.a.x)), global0.a.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.e, -2387f, -684f, global0.c.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, 2282f, -356f, global0.e)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, var_2, var_2, var_2))))));
    return any(select(vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b, 1u, u_input.b), vec4<u32>(u_input.a.x, global0.b, 4294967295u, 61031u)) >= ~0u, all(var_3.b), ~3529u < global0.b, -2031f > _wgslsmith_f_op_f32(round(global0.e))), !var_3.b, !var_3.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-120f, _wgslsmith_f_op_f32(-arg_1.e)))));
    var var_2 = select(~abs(min(u_input.c << (arg_1.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, 1u, global0.b), vec3<u32>(62737u, arg_1.b, 5612u)))), arg_2.b, func_2());
    var_2 = _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), ~arg_2.b);
    let var_3 = _wgslsmith_add_u32(2465u, u_input.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2114f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1347f)), arg_1.c.x))) * arg_3.x));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> f32 {
    global0 = Struct_3(select(select(global0.a, select(!vec3<bool>(false, false, arg_1.b.x), select(vec3<bool>(global0.a.x, arg_1.b.x, global0.a.x), arg_1.b.xxy, vec3<bool>(arg_1.b.x, true, true)), global0.d >= global0.d), false), select(vec3<bool>(true, !arg_1.b.x, true), arg_1.b.wwx, select(!vec3<bool>(arg_1.b.x, true, global0.a.x), select(arg_1.b.wxx, arg_1.b.xwz, global0.a), true)), true), ~64534u, arg_1.c.yw, 0i, _wgslsmith_f_op_f32(f32(-1f) * -419f));
    let var_0 = arg_1;
    global0 = Struct_3(select(select(vec3<bool>(4294967295u >= u_input.d, true, !arg_1.b.x), select(!global0.a, !vec3<bool>(arg_1.b.x, true, true), false), select(!global0.a, vec3<bool>(true, false, false), var_0.b.x)), select(!global0.a, arg_1.b.zyx, any(arg_1.b.xwx)), vec3<bool>(all(vec3<bool>(var_0.b.x, global0.a.x, true)), true, all(arg_1.b.xyx) & true)), ~u_input.d | 1u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 462f) + vec2<f32>(var_0.a, global0.c.x)), vec2<f32>(609f, -1109f), global0.d != -3125i)))))), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_1 = Struct_1(true);
    var var_2 = true;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))), _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.x, -714f, !arg_1.b.x)) * 1197f))));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_1, 1i, _wgslsmith_mod_i32(16979i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, global0.d), vec3<i32>(global0.d, global0.d, 1i)), min(-14846i, -2147483647i))), _wgslsmith_mult_i32(-_wgslsmith_add_i32(-47503i, global0.d), ~min(0i, 0i))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global0.d, global0.d), vec3<i32>(arg_1, global0.d, arg_0), vec3<i32>(global0.d, -2147483647i, arg_1)), vec3<i32>(arg_0, -3852i, -1i)), 2147483647i, _wgslsmith_div_i32(arg_0 >> (1u % 32u), 13136i), ~1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-50183i, arg_0) << (~58463u % 32u), _wgslsmith_mod_i32(~2147483647i, -2147483647i), max(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, global0.d, global0.d, global0.d), vec4<i32>(-1i, arg_1, global0.d, -1830i))), ~32252i), firstTrailingBit(vec4<i32>(arg_0, -4486i, firstTrailingBit(arg_0), arg_0)), ~(-firstLeadingBit(vec4<i32>(arg_1, 1i, global0.d, 1i)))));
    global0 = Struct_3(select(select(select(vec3<bool>(true, false, global0.a.x), !vec3<bool>(global0.a.x, global0.a.x, false), false), vec3<bool>(all(vec4<bool>(global0.a.x, global0.a.x, false, true)), global0.a.x, true), select(global0.a, !global0.a, false)), select(global0.a, !vec3<bool>(false, false, global0.a.x), !global0.a), vec3<bool>(!all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(func_1(var_0.zx, Struct_3(global0.a, 1u, vec2<f32>(954f, global0.e), var_0.x, 879f), Struct_3(vec3<bool>(global0.a.x, false, true), 12604u, vec2<f32>(global0.c.x, -253f), 1i, arg_3), vec3<f32>(-784f, 1257f, global0.e))) == arg_3, global0.a.x)), min(firstTrailingBit(~0u), min(u_input.e.x, abs(1u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1246f, _wgslsmith_f_op_f32(func_1(select(var_0.xw, vec2<i32>(global0.d, global0.d), global0.a.x), Struct_3(global0.a, 29490u, vec2<f32>(arg_3, arg_3), -1i, 363f), Struct_3(vec3<bool>(false, global0.a.x, global0.a.x), arg_2, global0.c, var_0.x, arg_3), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 846f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c - global0.c)) * _wgslsmith_div_vec2_f32(global0.c, global0.c)))), i32(-1i) * -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = Struct_3(global0.a, arg_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1111f, _wgslsmith_f_op_f32(1014f - arg_3), select(global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(322f + arg_3)) + global0.c), 23045i, _wgslsmith_f_op_f32(-global0.e));
    var var_1 = _wgslsmith_f_op_f32(func_5(global0.b ^ 4294967295u, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f - global0.c.x))), !(!select(vec4<bool>(false, global0.a.x, true, true), vec4<bool>(true, true, false, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1392f, -1090f, arg_3, global0.e) + vec4<f32>(arg_3, -958f, arg_3, 851f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(612f, global0.c.x, 500f, arg_3))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, -1344f, 1272f, -1426f) - vec4<f32>(-1314f, -918f, 1898f, -1219f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, arg_3, global0.c.x, 2862f), vec4<f32>(arg_3, global0.c.x, global0.c.x, -371f))))))));
    global0 = Struct_3(vec3<bool>(global0.a.x, true, true), 25948u, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1261f, -265f))), -global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(1u, Struct_2(global0.e, vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<f32>(global0.c.x, 1807f, -1931f, arg_3)))) * global0.c.x) + global0.c.x)));
    return Struct_3(vec3<bool>(~(~13645i) == _wgslsmith_mod_i32(max(1i, 2147483647i), ~arg_1), firstLeadingBit(arg_1 & 1i) != _wgslsmith_mult_i32(-15743i, var_0.x | global0.d), !select(true, true, !global0.a.x)), arg_2, global0.c, countOneBits(~_wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(-1i, arg_0)) << ((_wgslsmith_div_u32(5855u, 1u) | u_input.e.x) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(max(var_0.yz, min(var_0.yx, vec2<i32>(2147483647i, var_0.x))), Struct_3(select(global0.a, global0.a, global0.a.x), u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, -1276f)), var_0.x, _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(0u, global0.b, 103669u, 4294967295u), Struct_1(global0.a.x))).x), Struct_3(global0.a, 108846u, _wgslsmith_f_op_vec2_f32(global0.c - global0.c), 1i, _wgslsmith_f_op_f32(2028f - global0.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -196f, 391f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, -989f, 1080f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(global0.d, global0.d, global0.b, _wgslsmith_f_op_f32(func_5(abs(abs(global0.b)), Struct_2(-1000f, !vec4<bool>(false, global0.a.x, false, false), vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(global0.d, global0.d), Struct_3(vec3<bool>(false, global0.a.x, true), u_input.c, global0.c, global0.d, 734f), Struct_3(vec3<bool>(false, global0.a.x, global0.a.x), global0.b, global0.c, 10695i, 1813f), vec3<f32>(global0.c.x, 1000f, global0.e))), global0.c.x, _wgslsmith_f_op_f32(global0.c.x + global0.c.x), -225f)))));
    global0 = Struct_3(vec3<bool>(all(vec4<bool>(!global0.a.x, true, select(global0.a.x, global0.a.x, true), true)), !(false == !global0.a.x), all(func_6(global0.d, countOneBits(-14858i), _wgslsmith_div_u32(4294967295u, global0.b), -813f).a.yy)), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -510f)), _wgslsmith_f_op_vec2_f32(abs(global0.c))), global0.c, !vec2<bool>(true, global0.a.x)))), -(~global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-896f * global0.c.x), _wgslsmith_f_op_f32(-254f - 228f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-162f)) - _wgslsmith_f_op_f32(global0.c.x * 799f)))));
    global0 = func_6(0i, ~(-1i), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(333f, global0.e), 1000f, global0.a.x | true)), 1061f, global0.a.x | (global0.b < global0.b))) + -394f));
    var var_0 = u_input.a;
    var_0 = abs(firstLeadingBit(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-1242f + 1177f), _wgslsmith_f_op_f32(global0.e * 1030f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1386f, global0.e, global0.e, 1171f) + vec4<f32>(1000f, global0.e, 133f, global0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, global0.e, -781f, 1118f))))))));
}

