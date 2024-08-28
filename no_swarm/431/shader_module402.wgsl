struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-423f, 1844f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1287f)) + -345f), _wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(ceil(1280f)))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))))), -382f);
    let var_2 = Struct_2(1u);
    let var_3 = vec2<bool>(any(!vec3<bool>(select(true, false, true), true, true)), false);
    var_1 = _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(-var_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1335f * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_1.x)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> f32 {
    global1 = u_input.a.x;
    global0 = true;
    var var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.d.a, 0u) & ~vec2<u32>(22575u, arg_2.d.a), firstTrailingBit(vec2<u32>(42780u, 66657u) ^ vec2<u32>(arg_2.d.a, u_input.d))), countOneBits(_wgslsmith_div_u32(u_input.b, 59470u)) << (~37270u % 32u)));
    var_0 = max(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, u_input.d, 73467u)), min(vec4<u32>(arg_3, arg_3, u_input.b, arg_3), vec4<u32>(1u, 4294967295u, arg_3, arg_2.d.a))), _wgslsmith_clamp_u32(~u_input.b, 102650u, _wgslsmith_div_u32(4294967295u, 24353u)))) | arg_3;
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, _wgslsmith_div_f32(-1063f, arg_1)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a)))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, min(-2147483647i, _wgslsmith_clamp_i32(arg_2.e.x, -9782i, 57640i))), u_input.c.xw), Struct_1(-479f), Struct_2(arg_2.d.a), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, arg_2.b.x), vec3<i32>(-17359i, -1i, arg_2.b.x)) ^ -2147483647i, _wgslsmith_dot_vec3_i32(arg_2.e ^ vec3<i32>(10237i, -10244i, arg_2.b.x), vec3<i32>(u_input.e.x, u_input.a.x, arg_2.e.x) & arg_2.e), -9477i)));
    return _wgslsmith_f_op_f32(max(var_1.a.x, var_1.c.a));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(!select(false, false, (-2147483647i >= u_input.c.x) | false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), arg_1.a), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1263f, 1206f)) + vec2<f32>(1000f, arg_1.a))), _wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.a, u_input.e), vec2<i32>(0i, _wgslsmith_clamp_i32(-29618i, u_input.e.x, -53057i))), arg_1, Struct_2(reverseBits(u_input.b)), u_input.c.xxy), ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(44712u, 1u, u_input.b, 29968u), vec4<u32>(u_input.d, 0u, u_input.b, u_input.d)), ~vec4<u32>(20685u, 39101u, u_input.b, 1u)) | ~(~u_input.d))));
    let var_1 = !(!(!vec3<bool>(select(false, arg_0, arg_0), true, true)));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(1569f + 517f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)) - _wgslsmith_f_op_f32(-430f + _wgslsmith_div_f32(-161f, _wgslsmith_f_op_f32(exp2(arg_1.a))))), _wgslsmith_f_op_f32(trunc(531f)));
    global1 = -u_input.c.x;
    return _wgslsmith_f_op_vec2_f32(-var_2.zy);
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(u_input.d);
    var var_1 = !arg_0 && ((_wgslsmith_add_i32(-1i, abs(arg_2)) << (~(~34032u) % 32u)) == 0i);
    global0 = arg_0;
    let var_2 = u_input.c.x;
    global1 = 1i;
    return Struct_1(arg_1.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_2(0u);
    let var_1 = -51646i;
    var var_2 = vec3<bool>(all(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false))), true, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1497f, 144f, -264f, 121f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, var_2.x)), _wgslsmith_f_op_f32(func_3()), -1689f, _wgslsmith_div_f32(-1819f, _wgslsmith_f_op_f32(arg_0.a + -528f)))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-193f)))), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-309f)) * _wgslsmith_f_op_f32(-arg_0.a)), arg_0.a));
    var var_4 = Struct_3(var_3.yx, u_input.a, arg_0, Struct_2(~71086u), u_input.c.wxz);
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec3<u32> {
    var var_0 = !func_6(func_5(false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_2(false, Struct_1(1000f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 663f))))), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-21647i, u_input.e.x, u_input.a.x), vec3<i32>(-33390i, -2325i, 0i))), Struct_1(_wgslsmith_f_op_f32(step(arg_1, -1000f)))), firstLeadingBit(~vec4<u32>(u_input.d, 30029u, u_input.b, u_input.b)) & ~vec4<u32>(96187u, 4294967295u, arg_0.a, 41083u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_2 = firstLeadingBit(vec2<u32>(arg_0.a, 57499u)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), arg_0.a), vec2<u32>(firstLeadingBit(firstTrailingBit(arg_0.a)), ~(~1u)));
    return vec3<u32>(_wgslsmith_sub_u32(max(45520u, arg_0.a), ~144146u) << (_wgslsmith_add_u32(u_input.d, max(arg_0.a, ~9118u)) % 32u), ~68331u, _wgslsmith_mod_u32(_wgslsmith_div_u32(43704u, select(arg_0.a, 4294967295u, false) ^ ~4047u), min(reverseBits(_wgslsmith_mod_u32(4204u, u_input.d)), 1u)));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> vec4<bool> {
    global1 = countOneBits(_wgslsmith_add_i32(-8780i, 0i));
    let var_0 = _wgslsmith_div_i32(1i | (2147483647i | _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, 0i, 2147483647i, arg_2.e.x)), abs(arg_3))), ~(~max(u_input.e.x, arg_3)));
    let var_1 = -_wgslsmith_sub_vec3_i32(~(-_wgslsmith_mod_vec3_i32(u_input.c.yzy, vec3<i32>(arg_3, arg_3, -501i))), u_input.c.zxz);
    global1 = var_0;
    var var_2 = true;
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, false))), true), vec4<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false)) & true, true, false), !(firstTrailingBit(countOneBits(arg_0.a)) >= ~115851u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = false;
    var var_0 = any(!func_7(Struct_2(4294967295u), _wgslsmith_clamp_vec3_u32(func_1(Struct_2(u_input.b), 1125f), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 30926u, u_input.b), vec3<u32>(u_input.d, u_input.d, u_input.b), vec3<u32>(u_input.b, u_input.d, u_input.b)), max(vec3<u32>(u_input.d, u_input.b, 0u), vec3<u32>(u_input.d, 0u, 0u))), Struct_3(vec2<f32>(1210f, -591f), u_input.e, func_5(true, vec2<f32>(-123f, -1387f), u_input.a.x, Struct_1(-840f)), Struct_2(67826u), u_input.c.xww), u_input.c.x));
    global0 = true;
    let var_1 = select(~_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -2147483647i), vec2<i32>(i32(-1i) * -2147483647i, u_input.c.x)), select(vec2<i32>(min(7217i, reverseBits(u_input.e.x)), u_input.c.x), -max(-vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.e.x)), any(vec2<bool>(u_input.a.x >= -2147483647i, false))), vec2<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true));
    let var_2 = func_5(all(vec2<bool>(func_6(Struct_1(-615f), ~vec4<u32>(4294967295u, 7735u, 4294967295u, 1u)), all(vec2<bool>(false, true)) != true)), _wgslsmith_f_op_vec2_f32(func_2(true, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-327f, -119f, false)), -1048f)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(-47187i, 1i, u_input.a.x ^ -15678i), max(vec3<i32>(-8644i, ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -19950i, 2147483647i, 1i), vec4<i32>(u_input.e.x, u_input.c.x, var_1.x, u_input.e.x))), firstTrailingBit(u_input.c.zxw >> (vec3<u32>(4294967295u, 0u, u_input.d) % vec3<u32>(32u))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-868f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -231f)))));
    let var_3 = vec2<bool>(!(!(!(var_2.a > var_2.a))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

