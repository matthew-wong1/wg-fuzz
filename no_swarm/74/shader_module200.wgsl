struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(346f, 577f) - _wgslsmith_f_op_vec2_f32(abs(arg_1.c.c)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(arg_1.a.yz, _wgslsmith_f_op_vec2_f32(-arg_1.c.c), arg_1.c.e.x));
    var var_1 = !(4294967295u <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.a, 80578u), u_input.d.yz | u_input.d.zz));
    var_1 = !arg_0.x;
    let var_2 = arg_1;
    return var_2.a;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_add_u32(11730u, _wgslsmith_add_u32(~firstTrailingBit(78663u), _wgslsmith_mult_u32(0u, u_input.d.x))), vec2<i32>(2147483647i, abs(~_wgslsmith_div_i32(arg_0, 204i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1151f, -873f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-168f, -1000f), vec2<f32>(566f, 199f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2415f, -330f)), vec2<f32>(-365f, 831f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1124f, -993f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(396f, -870f) * vec2<f32>(1865f, 746f)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))))), 0u, vec2<bool>((_wgslsmith_f_op_f32(sign(-1491f)) < -1200f) == true, !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(var_1.e.x, var_1.e.x, false, var_1.e.x), Struct_2(vec4<f32>(2957f, var_1.c.x, var_1.c.x, var_1.c.x), -895f, Struct_1(4294967295u, vec2<i32>(-1i, 1i), var_1.c, 7837u, var_1.e)), true)), vec4<f32>(-889f, var_1.c.x, -1038f, var_1.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1410f, var_1.c.x, 1000f, -779f) * vec4<f32>(var_1.c.x, -1346f, var_1.c.x, 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 591f, var_1.c.x, var_1.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2451f, var_1.c.x, var_1.c.x, var_1.c.x) - vec4<f32>(var_1.c.x, -314f, var_1.c.x, -1530f))))), _wgslsmith_f_op_f32(-var_1.c.x), var_1);
    var var_3 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(-4870i, var_1.b.x, 1i, 0i), vec4<i32>(u_input.e.x, 2147483647i, 1i, -9701i))), ~select(-vec4<i32>(-2500i, 9017i, -50920i, var_0), vec4<i32>(-2147483647i, var_2.c.b.x, arg_0, u_input.c) & vec4<i32>(var_0, var_1.b.x, 1i, u_input.e.x), select(vec4<bool>(true, false, true, var_1.e.x), vec4<bool>(var_1.e.x, var_2.c.e.x, true, var_1.e.x), vec4<bool>(var_2.c.e.x, false, true, var_1.e.x)))));
    let var_4 = var_2.a.zzy;
    return select(vec4<bool>(any(vec2<bool>(var_2.c.e.x, !var_1.e.x)), all(select(vec3<bool>(var_2.c.e.x, false, var_2.c.e.x), vec3<bool>(var_1.e.x, var_1.e.x, var_2.c.e.x), var_2.c.e.x)) | false, var_2.c.e.x, false), select(!(!vec4<bool>(var_2.c.e.x, false, var_1.e.x, var_1.e.x)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2.c.e.x, false, var_1.e.x, false), false), vec4<bool>(all(var_1.e), all(var_2.c.e), true, !var_1.e.x), select(!vec4<bool>(var_2.c.e.x, var_2.c.e.x, var_1.e.x, false), !vec4<bool>(true, var_1.e.x, var_1.e.x, false), !vec4<bool>(true, true, false, var_2.c.e.x))), vec4<bool>(false, true, false, !var_2.c.e.x)), !(!select(vec4<bool>(var_1.e.x, var_2.c.e.x, var_2.c.e.x, var_1.e.x), !vec4<bool>(var_1.e.x, false, true, var_2.c.e.x), select(false, var_1.e.x, var_1.e.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = vec3<bool>(any(select(!vec4<bool>(arg_2, arg_0.x, arg_2, false), !func_2(u_input.e.x), 1128f < _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(arg_0.x, true, true, false), Struct_2(vec4<f32>(-212f, 1599f, -1028f, -1000f), -787f, Struct_1(u_input.a, vec2<i32>(-1i, 1i), vec2<f32>(-313f, 1000f), arg_1, vec2<bool>(true, arg_2))), false)).x)), false, false != arg_2);
    let var_1 = 1124f;
    var var_2 = ~vec2<u32>(0u, 43131u);
    var_2 = select(u_input.d.wx, firstLeadingBit(u_input.d.zy), true);
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), 1598f, _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_vec4_f32(func_3(func_2(0i), Struct_2(vec4<f32>(var_1, -322f, var_1, 1365f), -445f, Struct_1(1u, vec2<i32>(-2147483647i, -1i), vec2<f32>(var_1, var_1), 57176u, arg_0)), true)).x))), _wgslsmith_f_op_vec4_f32(func_3(select(!vec4<bool>(arg_2, false, false, true), !func_2(u_input.c), vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), false, true, false)), Struct_2(vec4<f32>(var_1, _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, var_0.x, true, false), Struct_2(vec4<f32>(957f, 1037f, var_1, var_1), var_1, Struct_1(u_input.d.x, vec2<i32>(-2147483647i, u_input.c), vec2<f32>(var_1, -1221f), 1u, vec2<bool>(false, false))), arg_2)).x, var_1, var_1), _wgslsmith_f_op_f32(sign(-539f)), Struct_1(_wgslsmith_mod_u32(4294967295u, arg_1), -vec2<i32>(-1i, u_input.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), ~var_2.x, vec2<bool>(arg_0.x, false))), var_0.x)).x, Struct_1(arg_1, _wgslsmith_add_vec2_i32(u_input.e.yz & _wgslsmith_clamp_vec2_i32(u_input.e.yx, u_input.e.yy, u_input.e.xz), _wgslsmith_sub_vec2_i32(max(u_input.e.xx, vec2<i32>(-2147483647i, -7875i)), vec2<i32>(0i, 5431i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(864f, var_1))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), -1304f)), firstTrailingBit(1u), select(func_2(u_input.c | 1i).yw, var_0.zy, true)));
    return var_3;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = select(!(!vec3<bool>(false, !arg_1.c.e.x, any(vec4<bool>(true, arg_1.c.e.x, true, true)))), func_2(u_input.c).zyy, all(select(func_2(0i).xzz, select(vec3<bool>(true, true, true), func_2(u_input.e.x).yyy, arg_1.c.b.x <= 31251i), !vec3<bool>(arg_1.c.e.x, false, false))));
    let var_1 = _wgslsmith_sub_i32(arg_1.c.b.x, u_input.e.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_1.c.c + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(arg_1.c.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_1.c.c.x)), arg_1.a.zw)), var_0.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.c.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.c.x, -1356f)), false))))));
    let var_3 = 42754i;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.c.c)));
    return Struct_1(2349u, ~(-(~(~vec2<i32>(arg_1.c.b.x, var_3)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.a.zw, arg_1.a.wx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.c + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + vec2<f32>(var_2.x, -1523f))))), arg_1.c.a, func_1(!func_1(arg_1.c.e, 1u, true).c.e, abs(~_wgslsmith_sub_u32(4294967295u, u_input.d.x)), !arg_1.c.e.x).c.e);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = ~(-(~firstLeadingBit(vec3<i32>(u_input.c, arg_2.b.x, 39538i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2055f, -1051f, 517f, arg_2.c.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.c.x, arg_2.c.x, 160f, 1000f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-432f, 421f, 2547f, arg_2.c.x), vec4<f32>(304f, -686f, 1476f, -1930f), arg_2.e.x)), select(vec4<bool>(arg_2.e.x, arg_2.e.x, false, arg_2.e.x), vec4<bool>(false, arg_2.e.x, arg_2.e.x, arg_2.e.x), arg_2.e.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 2644f)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(832f, arg_2.c.x) + _wgslsmith_f_op_f32(ceil(arg_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(602f))), arg_2.c.x, arg_2.c.x)))));
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -416f, var_1.x, -440f))))) * var_1), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(-769f * arg_2.c.x))), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(exp2(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_1(!vec2<bool>(arg_2.e.x, false), _wgslsmith_div_u32(24521u, arg_2.d), func_1(arg_2.e, arg_3.x, arg_2.e.x).c.e.x).b))), arg_2);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-213f))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(func_3(!(!(!vec4<bool>(true, var_2.c.e.x, var_2.c.e.x, false))), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.a))), 679f, func_1(!var_2.c.e, func_1(var_2.c.e, 35928u, var_2.c.e.x).c.d, true).c), any(!(!arg_2.e)))), var_1.x, arg_2);
    return StorageBuffer(0u, ~_wgslsmith_sub_vec4_u32(vec4<u32>(74897u, ~4294967295u, _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(8774u, 5924u, u_input.a, 0u)), abs(1u)), vec4<u32>(arg_3.x, arg_3.x | 22635u, abs(2922u), 64175u)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-439f)) * _wgslsmith_f_op_f32(ceil(-628f))), var_3)), var_1.x, _wgslsmith_f_op_f32(step(3209f, var_3)), _wgslsmith_f_op_f32(ceil(885f))), reverseBits(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.b.x, u_input.c, 0i, arg_2.b.x), vec4<i32>(-2147483647i, var_4.c.b.x, arg_2.b.x, -2147483647i)), _wgslsmith_dot_vec3_i32(var_0, u_input.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d.x, (~(~u_input.e.yx) >> (vec2<u32>(~u_input.a, ~u_input.a) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.d.ww), u_input.a), ~(2646u << (u_input.a % 32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(-754f)), _wgslsmith_div_f32(1218f, 1782f))))), ~(~(~24536u)), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, false), vec2<bool>(false, any(vec3<bool>(false, true, true)))));
    var var_1 = select(vec4<bool>(var_0.e.x | false, var_0.e.x, abs(var_0.b.x) <= u_input.e.x, var_0.e.x), vec4<bool>(-1591f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)), true, var_0.e.x, var_0.e.x), !select(vec4<bool>(false | var_0.e.x, var_0.e.x || var_0.e.x, 4294967295u > u_input.d.x, true), vec4<bool>(true, false, all(vec2<bool>(var_0.e.x, false)), var_0.e.x), !(!vec4<bool>(true, var_0.e.x, true, false))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.b.x, 0i, _wgslsmith_div_i32(2147483647i, u_input.e.x)) << (~(~vec4<u32>(u_input.b, var_0.d, var_0.d, 0u)) % vec4<u32>(32u)), -vec4<i32>(~var_0.b.x, var_0.b.x, _wgslsmith_mult_i32(var_0.b.x, -37434i), abs(1i))), firstLeadingBit(-23484i) >> (0u % 32u));
    let var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.e.x, 0i, u_input.c, var_0.b.x)) ^ firstTrailingBit(vec4<i32>(1i, -55097i, u_input.e.x, u_input.c)), firstTrailingBit(-vec4<i32>(0i, var_0.b.x, 2147483647i, u_input.c))), -1i), var_0.b.x);
    let var_4 = select(var_0.a, countOneBits(_wgslsmith_sub_u32(var_0.a, 17107u)), !(~(~u_input.d.x) < 34738u));
    var_1 = !(!(!(!select(vec4<bool>(var_0.e.x, var_0.e.x, var_1.x, false), vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, var_0.e.x, var_1.x, true)))));
    var var_5 = u_input.d.x;
    let x = u_input.a;
    s_output = func_5(~u_input.e.x & -(0i >> (var_4 % 32u)), ~(~select(u_input.d.zwy, u_input.d.xxx, true)) ^ select(min(u_input.d.xww, ~vec3<u32>(4322u, 49616u, 4294967295u)), ~_wgslsmith_sub_vec3_u32(u_input.d.xyz, u_input.d.ywx), select(!var_1.wzz, vec3<bool>(true, true, false), vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x))), func_4(var_1.x, func_1(select(var_1.yw, vec2<bool>(var_1.x, var_0.e.x), select(var_1.yy, vec2<bool>(var_1.x, true), vec2<bool>(false, true))), ~3481u, any(!vec4<bool>(var_0.e.x, var_0.e.x, var_1.x, true))), var_1.x | (29685u >= ~u_input.d.x), var_0.c.x), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.d.x, 67399u, 1u, 1u), u_input.d, var_0.e.x) & _wgslsmith_sub_vec4_u32(u_input.d, u_input.d), ~(u_input.d & vec4<u32>(var_0.a, 41623u, 31542u, 0u)) << (firstLeadingBit(u_input.d) % vec4<u32>(32u))));
}

