struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-326f, -1235f, 1000f, -1519f), vec4<bool>(true, true, true, true), vec2<i32>(1i, -1i), -278f, vec2<bool>(true, true)), Struct_1(vec4<f32>(406f, -1769f, -1040f, 438f), vec4<bool>(true, true, false, true), vec2<i32>(-12512i, -1852i), 255f, vec2<bool>(false, false)), Struct_1(vec4<f32>(384f, -662f, 255f, 237f), vec4<bool>(true, false, false, true), vec2<i32>(0i, 18483i), -1000f, vec2<bool>(true, true)), Struct_1(vec4<f32>(-799f, 1958f, 1005f, 520f), vec4<bool>(true, false, true, true), vec2<i32>(1i, 11367i), 241f, vec2<bool>(false, true)), Struct_1(vec4<f32>(-993f, -1000f, 1000f, -695f), vec4<bool>(true, true, false, true), vec2<i32>(-73753i, 0i), -1752f, vec2<bool>(false, true)), Struct_1(vec4<f32>(335f, -1114f, 645f, 1000f), vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 2147483647i), 122f, vec2<bool>(true, false)), Struct_1(vec4<f32>(-338f, 134f, -1178f, -132f), vec4<bool>(false, true, true, false), vec2<i32>(1i, 64052i), 955f, vec2<bool>(false, true)), Struct_1(vec4<f32>(-464f, 196f, -967f, -508f), vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), -1i), -654f, vec2<bool>(false, false)), Struct_1(vec4<f32>(1140f, 1000f, 142f, 266f), vec4<bool>(false, true, false, true), vec2<i32>(-20722i, -41136i), 1072f, vec2<bool>(false, true)), Struct_1(vec4<f32>(-2038f, -607f, 388f, -1000f), vec4<bool>(false, true, true, false), vec2<i32>(-19338i, -21546i), 299f, vec2<bool>(false, false)), Struct_1(vec4<f32>(-903f, -1110f, 171f, -1666f), vec4<bool>(false, true, true, true), vec2<i32>(1i, -1i), 348f, vec2<bool>(true, true)), Struct_1(vec4<f32>(-1297f, -1000f, -1768f, -285f), vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 0i), -2282f, vec2<bool>(true, true)), Struct_1(vec4<f32>(-1184f, -356f, -1313f, 316f), vec4<bool>(true, true, true, false), vec2<i32>(54306i, 4390i), 146f, vec2<bool>(false, false)), Struct_1(vec4<f32>(582f, 1215f, 1510f, 570f), vec4<bool>(false, true, false, true), vec2<i32>(0i, -6842i), -2075f, vec2<bool>(true, true)), Struct_1(vec4<f32>(943f, 1619f, 1022f, -1289f), vec4<bool>(true, false, true, true), vec2<i32>(-1i, -1i), -153f, vec2<bool>(false, false)), Struct_1(vec4<f32>(-235f, 2024f, -1748f, -524f), vec4<bool>(false, false, false, false), vec2<i32>(20636i, 8273i), 408f, vec2<bool>(false, false)), Struct_1(vec4<f32>(-1774f, -583f, 128f, 649f), vec4<bool>(true, true, true, true), vec2<i32>(-1i, 0i), 192f, vec2<bool>(false, true)), Struct_1(vec4<f32>(-1000f, 316f, 964f, 780f), vec4<bool>(true, false, false, false), vec2<i32>(16560i, 0i), 423f, vec2<bool>(false, true)), Struct_1(vec4<f32>(499f, 775f, 1169f, -1181f), vec4<bool>(true, false, false, false), vec2<i32>(-31155i, 6041i), -117f, vec2<bool>(false, true)));

var<private> global2: vec3<f32> = vec3<f32>(-1091f, 1247f, -533f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = u_input.e.x & u_input.d;
    global1 = array<Struct_1, 19>();
    global2 = vec3<f32>(global0.a.x, global2.x, arg_1.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.xyz, _wgslsmith_f_op_vec3_f32(-global0.a.xxx)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.a.xzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, arg_0.d, -1677f)))))));
    var var_2 = !(!select(vec3<bool>(any(arg_1.e), true, true), select(!vec3<bool>(arg_1.b.x, arg_1.b.x, false), !vec3<bool>(global0.e.x, false, true), select(arg_1.b.zyy, arg_1.b.wxx, arg_1.b.xyy)), arg_1.b.xxx));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(314f, -735f, arg_0, -1000f), global0.b.x))) - _wgslsmith_f_op_vec4_f32(-global0.a)), !vec4<bool>(func_3(Struct_1(vec4<f32>(global2.x, -1459f, global2.x, global0.a.x), vec4<bool>(true, global0.e.x, global0.e.x, global0.e.x), u_input.c, global0.d, global0.e), Struct_1(global0.a, global0.b, vec2<i32>(0i, u_input.a), -460f, global0.b.yx)), true, global0.b.x, global0.e.x), select(select(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, -7452i), vec2<i32>(u_input.a, global0.c.x), global0.c), u_input.c & global0.c), -vec2<i32>(global0.c.x, u_input.c.x), all(select(global0.b.xyx, global0.b.zxw, global0.b.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(global0.c.x, global0.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-18868i, u_input.c.x))), global0.e), _wgslsmith_f_op_f32(f32(-1f) * -936f), global0.e);
    global2 = global0.a.zyw;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), -1298f, 859f, _wgslsmith_div_f32(-363f, global2.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(909f, -500f, var_0.d, 1162f) * var_0.a)))))), global0.b, var_0.c, global2.x, !global0.b.xx);
    let var_2 = vec4<f32>(global2.x, var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-382f))))), global0.a.x);
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_2.x, var_1.d, var_1.d), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1663f * global2.x)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d, arg_0))))), select(!vec4<bool>(all(vec2<bool>(false, var_1.e.x)), false, false, any(vec3<bool>(false, true, false))), vec4<bool>(true, any(!var_0.b), !var_0.e.x, any(var_1.b.xxz)), !vec4<bool>(any(var_1.e), true, 1u < arg_1.x, true)), ~vec2<i32>(~u_input.c.x, _wgslsmith_clamp_i32(var_1.c.x, u_input.c.x, u_input.a)) >> (arg_1.yy % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - -344f), _wgslsmith_f_op_f32(f32(-1f) * -1567f)), select(select(vec2<bool>(!var_1.e.x, true), var_0.e, arg_0 >= _wgslsmith_f_op_f32(-var_0.a.x)), !vec2<bool>(u_input.e.x > u_input.d, false), select(select(select(var_0.b.wx, var_0.b.yx, true), vec2<bool>(true, var_0.e.x), global0.a.x == -202f), vec2<bool>(var_0.b.x, any(var_0.b.yzy)), !global0.e)));
    return var_0.e.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1650f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * _wgslsmith_f_op_f32(global0.a.x - global2.x)), -1242f)) + _wgslsmith_f_op_vec3_f32(-global0.a.yxx));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(global0.a.zxx));
    let var_0 = arg_2;
    let var_1 = _wgslsmith_div_i32(min(u_input.c.x, ~_wgslsmith_sub_i32(-2864i, 0i)), ~abs(-(~arg_2.c.x)));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(floor(243f)))), _wgslsmith_f_op_f32(trunc(arg_2.a.x)), -229f, _wgslsmith_f_op_f32(-1714f + 1000f)), select(arg_2.b, vec4<bool>(func_3(Struct_1(vec4<f32>(-1865f, 188f, -460f, -1065f), vec4<bool>(true, arg_2.e.x, true, false), arg_2.c, -869f, vec2<bool>(false, global0.b.x)), global1[_wgslsmith_index_u32(63546u, 19u)]), all(arg_0), !(!var_0.e.x), arg_0.x), select(arg_2.b, vec4<bool>(arg_0.x, arg_0.x, arg_2.b.x && arg_2.b.x, func_2(171f, vec3<u32>(u_input.b.x, 4348u, u_input.b.x))), var_0.b)), global0.c, _wgslsmith_f_op_f32(f32(-1f) * -484f), !(!select(!vec2<bool>(global0.e.x, arg_0.x), vec2<bool>(arg_0.x, global0.e.x), any(arg_2.b.wwy))));
    return global1[_wgslsmith_index_u32(29843u, 19u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(select(arg_1.c.x, ~(-585i), any(vec2<bool>(true, false)) & false) | -3240i);
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = vec3<u32>(1u, ~11383u, reverseBits(u_input.d) >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(~16597u, u_input.d), u_input.e.x & (u_input.d ^ 1u)) % 32u));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(arg_2.d))), -694f, 744f, _wgslsmith_f_op_f32(-func_5(28713i, arg_3, func_4(arg_1.b.zxz, arg_2.d, Struct_1(arg_1.a, vec4<bool>(arg_2.e.x, false, true, true), arg_1.c, arg_0.a.x, arg_2.b.zy), 1046f)).d)), arg_2.b, arg_2.c >> (u_input.e.zy % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(175f * _wgslsmith_div_f32(578f, arg_2.d))))), vec2<bool>(true, !arg_2.b.x | !func_5(-36364i, global1[_wgslsmith_index_u32(25879u, 19u)], Struct_1(arg_3.a, arg_1.b, vec2<i32>(-18968i, 5147i), 913f, arg_2.e)).b.x));
    var var_1 = !arg_0.b.x;
    let var_2 = abs(~vec4<u32>(u_input.d, ~0u, _wgslsmith_mod_u32(~var_0.x, 0u), (u_input.b.x | u_input.d) ^ _wgslsmith_mult_u32(1u, var_0.x)));
    global1 = array<Struct_1, 19>();
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1231f))))), vec3<u32>(firstTrailingBit(~1u), abs(abs(u_input.d)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(43224u, 1u), var_2.yz), var_2.zw ^ u_input.b) % 32u), 1u));
}

fn func_1() -> bool {
    let var_0 = func_6(func_5(~u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 790f, 612f, -1364f)))), global0.b, global0.c, global0.d, global0.b.yx), func_4(vec3<bool>(all(global0.b), global0.e.x, func_2(global2.x, u_input.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_div_f32(1000f, -863f)), global1[_wgslsmith_index_u32(u_input.d & u_input.b.x, 19u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global2.x)))))), func_4(global0.b.wyx, global0.d, func_4(vec3<bool>(global0.b.x, true, 599f == global2.x), _wgslsmith_f_op_f32(global0.a.x + func_5(-1i, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(29149u, 19u)]).a.x), func_5(~(-1i), global1[_wgslsmith_index_u32(u_input.d, 19u)], func_5(-45082i, Struct_1(vec4<f32>(1189f, global0.a.x, 498f, 200f), vec4<bool>(false, global0.e.x, global0.e.x, global0.e.x), vec2<i32>(2147483647i, 2147483647i), global2.x, vec2<bool>(false, false)), global1[_wgslsmith_index_u32(u_input.e.x, 19u)])), global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1001f)) - global0.d))), func_4(!(!select(global0.b.wzw, vec3<bool>(global0.e.x, global0.e.x, false), global0.b.wyy)), 575f, func_4(vec3<bool>(true, true, true), -1797f, func_5(u_input.a, global1[_wgslsmith_index_u32(1u >> (u_input.e.x % 32u), 19u)], global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(789f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-581f, global2.x)) - 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_div_vec4_f32(global0.a, vec4<f32>(-703f, -188f, global0.a.x, global2.x))))), vec4<bool>(!(!global0.e.x), true, u_input.b.x != 50882u, true), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.c.x, 1i), vec2<i32>(global0.c.x, -9877i), true), ~vec2<i32>(21992i, global0.c.x) ^ (vec2<i32>(3990i, global0.c.x) ^ vec2<i32>(0i, -2147483647i))), -1270f, select(!vec2<bool>(global0.b.x, false), !select(vec2<bool>(global0.e.x, true), global0.b.xw, global0.e), true)));
    global1 = array<Struct_1, 19>();
    let var_1 = u_input.b.x;
    var var_2 = func_5(~u_input.a, func_4(func_4(global0.b.xxw, _wgslsmith_f_op_f32(func_5(u_input.c.x, global1[_wgslsmith_index_u32(u_input.d, 19u)], Struct_1(global0.a, vec4<bool>(var_0, false, global0.b.x, var_0), vec2<i32>(-1i, global0.c.x), -1633f, global0.e)).d * _wgslsmith_div_f32(-504f, global2.x)), Struct_1(vec4<f32>(-623f, global0.d, -1706f, global0.a.x), vec4<bool>(true, true, global0.b.x, false), _wgslsmith_mult_vec2_i32(vec2<i32>(-45397i, -1i), u_input.c), global0.d, !global0.e), _wgslsmith_div_f32(global2.x, -1000f)).b.yzw, 1259f, func_5(-1i, global1[_wgslsmith_index_u32(var_1, 19u)], global1[_wgslsmith_index_u32(u_input.e.x, 19u)]), 1746f), Struct_1(global0.a, global0.b, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(39074i, -1i)), _wgslsmith_f_op_f32(-global2.x), vec2<bool>(true, global0.e.x | true)));
    global0 = func_4(vec3<bool>(var_0, func_6(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], Struct_1(global0.a, vec4<bool>(var_0, global0.b.x, false, false), -global0.c, -964f, func_5(-44129i, global1[_wgslsmith_index_u32(8430u, 19u)], global1[_wgslsmith_index_u32(var_1, 19u)]).b.xw), func_5(firstLeadingBit(global0.c.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, var_1), 19u)], func_4(vec3<bool>(true, var_2.e.x, global0.e.x), var_2.d, Struct_1(vec4<f32>(-526f, global2.x, -751f, -103f), vec4<bool>(var_2.b.x, true, global0.b.x, var_2.b.x), vec2<i32>(-2147483647i, -3760i), global0.a.x, global0.e), var_2.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.d, -311f, -1000f)), vec4<bool>(var_0, var_0, true, false), firstLeadingBit(vec2<i32>(-1i, -87434i)), _wgslsmith_f_op_f32(select(-757f, global0.a.x, var_2.b.x)), var_2.e)), ~var_1 < u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1678f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-925f * global2.x), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(1479f * -677f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d)) * 731f)), vec4<bool>(global2.x > _wgslsmith_f_op_f32(var_2.d + 210f), false, var_0, var_0), select(max(var_2.c, var_2.c), vec2<i32>(-13385i, u_input.a), all(!var_2.b)), 624f, !(!global0.b.xx)), func_4(global0.b.xzz, _wgslsmith_f_op_f32(min(global0.d, _wgslsmith_f_op_f32(-func_4(vec3<bool>(var_0, false, var_2.e.x), var_2.d, global1[_wgslsmith_index_u32(7096u, 19u)], -1200f).a.x))), func_4(var_2.b.www, -1147f, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(425f, global0.a.x, 1000f, global2.x), var_2.a), vec4<bool>(global0.b.x, false, false, false), _wgslsmith_mult_vec2_i32(global0.c, var_2.c), global2.x, global0.b.ww), -495f), -2303f).a.x);
    return true || !any(vec4<bool>(true & var_2.e.x, var_0, func_3(global1[_wgslsmith_index_u32(var_1, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), u_input.d < var_1));
}

fn func_7(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    global0 = global1[_wgslsmith_index_u32(1u, 19u)];
    var var_0 = arg_2;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-50823i, -1i, 1i) & max(vec3<i32>(var_0.c.x, 1i, -2147483647i), vec3<i32>(arg_2.c.x, -2147483647i, -28386i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-25984i, arg_3.c.x), global0.c), ~var_0.c.x, 2147483647i)) ^ arg_3.c.x, arg_2.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(29345i), arg_3.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(36130i, arg_3.c.x), vec2<i32>(u_input.a, 5980i)), vec2<i32>(45773i, var_0.c.x) | u_input.c)), vec3<i32>(abs(1i), ~var_0.c.x, arg_3.c.x)));
}

fn func_8(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(select(~u_input.a, arg_2.c.x, any(!vec2<bool>(false, arg_2.b.x))), abs(global0.c.x >> (_wgslsmith_mult_u32(1u, 1u) % 32u)), ~(i32(-1i) * -1i), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.c.x, u_input.a, u_input.a, arg_2.c.x), ~vec4<i32>(-2147483647i, u_input.c.x, global0.c.x, -1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(1i), arg_2.c.x, ~20745i, ~(-arg_2.c.x)), ~firstTrailingBit(firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -16089i)))));
    var var_1 = firstLeadingBit(-1i);
    var var_2 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.d | 0u, max(0u, u_input.e.x), 4294967295u) | abs(select(vec4<u32>(u_input.d, 3459u, u_input.b.x, 53699u), vec4<u32>(1u, 0u, u_input.d, u_input.b.x), global0.b.x)), vec4<u32>(~1u, u_input.b.x, u_input.e.x, u_input.d), reverseBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(29025u, u_input.b.x, 62819u, u_input.d), vec4<u32>(94087u, 40112u, 1u, 0u)), vec4<u32>(32996u, 33020u, 0u, 62114u), func_3(arg_2, global1[_wgslsmith_index_u32(u_input.e.x, 19u)])))), vec4<u32>(92830u, ~u_input.b.x, 755u, 0u), arg_2.b);
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u | u_input.b.x, 1u, var_2.x), vec3<u32>(u_input.d, ~4294967295u, var_2.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 26095u, var_2.x, u_input.b.x), vec4<u32>(0u, 4294967295u, u_input.d, 4294967295u)) ^ ~u_input.e.x, 4614u, 69729u) >> (var_2.xxw % vec3<u32>(32u)));
    var_1 = -1i;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(676f)), global2.x, -1454f, _wgslsmith_f_op_f32(-global0.d)), vec4<bool>(true, true, global0.e.x, all(vec3<bool>(arg_2.b.x, true, arg_2.e.x)) | func_2(_wgslsmith_div_f32(arg_2.a.x, global2.x), ~var_3)), abs(-func_7(vec2<i32>(-5364i, var_0.x), arg_2.b, Struct_1(arg_2.a, global0.b, vec2<i32>(arg_2.c.x, 20812i), global0.d, arg_2.e), Struct_1(vec4<f32>(global0.d, -1000f, arg_2.d, global2.x), vec4<bool>(false, arg_1, arg_2.e.x, true), vec2<i32>(arg_2.c.x, arg_2.c.x), arg_2.a.x, arg_2.e)).zy) & -global0.c, _wgslsmith_f_op_f32(select(arg_2.a.x, 1729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-385f + global0.d) * arg_2.d) < global2.x)), !global0.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global0 = func_8(func_7(vec2<i32>(~(-global0.c.x), 0i), select(vec4<bool>(global0.e.x || global0.e.x, true, 4294967295u < u_input.b.x, func_1()), global0.b, !func_4(global0.b.yyx, 1000f, Struct_1(vec4<f32>(global2.x, 898f, global2.x, global2.x), vec4<bool>(false, true, global0.e.x, false), u_input.c, -564f, global0.e), global2.x).b), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1877f, global2.x, global2.x, global2.x))), select(func_5(-27071i, global1[_wgslsmith_index_u32(43858u, 19u)], global1[_wgslsmith_index_u32(9148u, 19u)]).b, func_4(vec3<bool>(false, global0.b.x, global0.b.x), global0.d, global1[_wgslsmith_index_u32(u_input.e.x, 19u)], 422f).b, !global0.b.x), vec2<i32>(1i, u_input.c.x) >> (u_input.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(-global2.x), global0.e), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-870f, global0.a.x, global0.d, -528f)))), func_4(global0.b.wyy, _wgslsmith_f_op_f32(f32(-1f) * -596f), global1[_wgslsmith_index_u32(u_input.d, 19u)], -251f).b, global0.c, 670f, !func_4(vec3<bool>(global0.e.x, true, false), -1000f, Struct_1(global0.a, vec4<bool>(false, false, true, false), vec2<i32>(global0.c.x, 96689i), 1345f, global0.b.zz), 524f).b.xz)), func_1(), func_5(u_input.c.x, func_4(select(func_5(-1i, Struct_1(global0.a, vec4<bool>(global0.e.x, global0.e.x, global0.b.x, true), global0.c, global0.a.x, global0.e), global1[_wgslsmith_index_u32(u_input.d, 19u)]).b.wxw, !vec3<bool>(true, global0.b.x, global0.b.x), global0.b.x), _wgslsmith_f_op_f32(-1280f - _wgslsmith_f_op_f32(max(-1028f, -775f))), global1[_wgslsmith_index_u32(~(~0u), 19u)], _wgslsmith_f_op_f32(round(-1102f))), func_5(6312i, Struct_1(global0.a, select(vec4<bool>(true, global0.b.x, true, global0.e.x), global0.b, global0.e.x), select(global0.c, u_input.c, global0.b.yx), _wgslsmith_f_op_f32(-global0.d), func_5(global0.c.x, global1[_wgslsmith_index_u32(35361u, 19u)], Struct_1(global0.a, global0.b, global0.c, global0.a.x, vec2<bool>(true, global0.b.x))).e), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), func_4(vec3<bool>(true, global0.b.x, false), global2.x, Struct_1(vec4<f32>(global0.a.x, 1233f, global2.x, global0.d), global0.b, vec2<i32>(-48043i, global0.c.x), global0.a.x, global0.e), global2.x).b, vec2<i32>(-1i, 24391i), _wgslsmith_f_op_f32(global0.a.x - -674f), !global0.e))));
    var var_0 = func_8(firstLeadingBit(select(abs(vec3<i32>(global0.c.x, 13852i, global0.c.x)), vec3<i32>(global0.c.x, _wgslsmith_sub_i32(global0.c.x, u_input.c.x), firstLeadingBit(u_input.c.x)), !global0.b.xyw)), 3530u != u_input.e.x, Struct_1(global0.a, select(!vec4<bool>(false, global0.b.x, false, false), func_5(_wgslsmith_sub_i32(12001i, global0.c.x), global1[_wgslsmith_index_u32(u_input.d, 19u)], func_5(global0.c.x, global1[_wgslsmith_index_u32(u_input.e.x, 19u)], Struct_1(global0.a, global0.b, global0.c, global0.a.x, global0.e))).b, vec4<bool>(global0.b.x, false | global0.e.x, true, false)), u_input.c, _wgslsmith_f_op_f32(ceil(419f)), !select(vec2<bool>(global0.b.x, false), vec2<bool>(global0.b.x, global0.e.x), !global0.b.zy))).b;
    var var_1 = _wgslsmith_add_vec3_i32(~firstLeadingBit(max(vec3<i32>(-26633i, u_input.a, 16947i), vec3<i32>(1i, global0.c.x, global0.c.x))), countOneBits(vec3<i32>(_wgslsmith_add_i32(global0.c.x, global0.c.x), -1i, -21241i))) << (~vec3<u32>(countOneBits(1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.d), ~u_input.b.x), 1u) % vec3<u32>(32u));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x + 1490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), func_4(!var_0.yxy, _wgslsmith_f_op_f32(step(global2.x, global2.x)), func_8(vec3<i32>(35417i, 1i, -2147483647i), global0.e.x, global1[_wgslsmith_index_u32(u_input.d, 19u)]), -1000f).d))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.xx, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, select(vec2<i32>(-22839i, global0.c.x), min(vec2<i32>(1i, 0i), u_input.c), false)), _wgslsmith_mod_vec2_i32(~vec2<i32>(global0.c.x, -29302i) & select(vec2<i32>(-1i, var_1.x), vec2<i32>(-1144i, var_1.x), var_0.xx), ~abs(var_1.zy))), _wgslsmith_add_u32(_wgslsmith_mult_u32(29070u, 57404u), _wgslsmith_add_u32(~u_input.d | firstTrailingBit(0u), firstTrailingBit(u_input.b.x))), func_4(var_0.xww, global0.a.x, global1[_wgslsmith_index_u32(~u_input.b.x, 19u)], global0.d).a.zw, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d, 23752u, 1u) ^ ~vec4<u32>(u_input.e.x, u_input.d, 5903u, u_input.e.x), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 54395u, 9891u, u_input.b.x), vec4<u32>(u_input.d, u_input.e.x, u_input.b.x, u_input.e.x)), max(u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, 55949u))));
}

