struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f + 185f))), select(vec4<i32>(u_input.b, u_input.b, u_input.b, abs(-7077i)), ~(~vec4<i32>(1i, 1i, u_input.a, -41477i)), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-1797f + _wgslsmith_f_op_f32(f32(-1f) * -530f)), 106f, -534f, -131f)), true);
    let var_1 = var_0.b;
    global0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~global0.x & (0u >> (global0.x % 32u)), ~(u_input.c.x ^ u_input.c.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 37203u, 1u), global0.xzw), ~(~24912u)), vec4<u32>(1u >> (_wgslsmith_add_u32(1u, global0.x) % 32u), 95416u, global0.x, 1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.e.xyz - _wgslsmith_f_op_vec3_f32(var_0.a.e.zyy + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0.a.e.yyx, var_0.a.e.wyw))))));
    var_2 = var_0.a.e.xww;
    return firstLeadingBit(vec4<u32>(select(1u, 0u, true) & _wgslsmith_sub_u32(global0.x, 724u), abs(1u), 0u, u_input.c.x) ^ ~max(~vec4<u32>(global0.x, 4294967295u, 4294967295u, u_input.c.x), vec4<u32>(global0.x, 24352u, 4294967295u, global0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global0 = arg_0.d;
    global0 = vec4<u32>(1u, arg_0.d.x, _wgslsmith_clamp_u32(~(~(~19332u)), _wgslsmith_sub_u32(0u, func_3().x) << ((reverseBits(1u) << (arg_0.d.x % 32u)) % 32u), firstLeadingBit(~1u) >> (~(~arg_0.d.x) % 32u)), ~reverseBits(65613u));
    let var_0 = arg_1.a.e.yy;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(max(~u_input.c, ~u_input.c), ~countOneBits(arg_0.d.yx) & global0.yw), abs(global0.x), _wgslsmith_sub_u32(13944u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c))));
    let var_2 = false;
    return arg_0.d.x;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = vec4<u32>(0u, global0.x, _wgslsmith_dot_vec3_u32(select(global0.zyz | (global0.wwz >> (vec3<u32>(48779u, 116875u, global0.x) % vec3<u32>(32u))), vec3<u32>(1u, countOneBits(u_input.c.x), ~1u), vec3<bool>(true, arg_0 >= 8737i, all(vec4<bool>(true, false, false, true)))), global0.xyz << (vec3<u32>(~49105u, ~global0.x, 1u) % vec3<u32>(32u))), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1240f, -263f) * vec2<f32>(-958f, 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-508f, 1708f) + vec2<f32>(753f, 111f))), select(vec3<i32>(8364i, -5506i, arg_0) >> (vec3<u32>(u_input.c.x, 1u, 4294967295u) % vec3<u32>(32u)), reverseBits(vec3<i32>(arg_0, -9613i, arg_0)), false), -637f, func_3()), Struct_2(Struct_1(vec3<bool>(true, true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), _wgslsmith_f_op_f32(134f - 2006f), _wgslsmith_div_vec4_i32(vec4<i32>(38105i, arg_0, arg_0, arg_0), vec4<i32>(u_input.a, u_input.a, -10750i, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(750f, -527f, 716f, -1000f))), false)));
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -u_input.b, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, arg_0, arg_0), vec3<i32>(u_input.b, 1i, -11929i), vec3<bool>(false, true, true)), vec3<i32>(arg_0, -2147483647i, 3706i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0) << (vec2<u32>(global0.x, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(arg_0, -2147483647i))), arg_0) >> ((global0.wz | (vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, global0.x), 27981u) >> (~abs(global0.zx) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f + 1534f)), _wgslsmith_f_op_f32(trunc(974f))), _wgslsmith_add_vec3_i32(vec3<i32>(max(_wgslsmith_mod_i32(arg_0, 55108i), i32(-1i) * -1252i), firstTrailingBit(-2147483647i), arg_0), -(select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(arg_0, arg_0, u_input.a), false) << (~vec3<u32>(u_input.c.x, global0.x, 114383u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -166f), min(vec4<u32>(~0u, reverseBits(~1u), global0.x, 1u), vec4<u32>(0u, firstTrailingBit(u_input.c.x), 1u, ~u_input.c.x)));
    var var_2 = global0.x;
    var_1 = Struct_3(vec2<f32>(var_1.c, -121f), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.b, var_1.b), firstLeadingBit(1i)) & ~min(arg_0, var_1.b.x), u_input.b, firstTrailingBit(26776i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1492f)) * var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, _wgslsmith_div_f32(330f, var_1.c)))), ~(~var_1.d));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, -848f)), vec3<i32>(-1148i, -select(_wgslsmith_add_i32(arg_0, 8730i), ~arg_0, all(vec2<bool>(true, false))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, 21790i), var_1.b), 2147483647i)), var_1.c, ~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, global0.x)), ~var_1.d) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, _wgslsmith_sub_u32(12816u, var_1.d.x), var_1.d.x), select(vec4<u32>(0u, global0.x, global0.x, 1u), var_1.d, vec4<bool>(true, true, true, true)), vec4<u32>(1u, 4294967295u, countOneBits(1u), 66302u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    var var_0 = func_2(min(30639i, u_input.a));
    var var_1 = any(!vec4<bool>(any(arg_0.b) | all(arg_0.a), countOneBits(var_0.b.x) <= -var_0.b.x, !arg_0.b.x || (arg_1 && true), !(arg_0.a.x | arg_1)));
    var_1 = all(!select(vec4<bool>(false, all(vec4<bool>(arg_1, true, arg_0.a.x, true)), arg_1, !arg_0.b.x), !select(vec4<bool>(true, true, arg_0.b.x, false), vec4<bool>(true, false, true, arg_1), vec4<bool>(true, true, arg_1, true)), select(!vec4<bool>(arg_1, false, true, arg_0.b.x), !vec4<bool>(arg_1, arg_0.a.x, true, false), !vec4<bool>(arg_1, arg_0.b.x, arg_1, arg_1))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1020f * -652f)), var_0.a.x) - var_0.a), var_0.b, arg_0.e.x, var_0.d);
    var var_2 = vec3<i32>(u_input.a, -17753i, -2147483647i);
    return func_2(u_input.a);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    var var_0 = ~_wgslsmith_div_i32(-_wgslsmith_sub_i32(7398i, 53787i), arg_0.b.x);
    let var_1 = vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i << (global0.x % 32u), ~_wgslsmith_mod_i32(48098i, 16107i), -u_input.a), _wgslsmith_mod_vec3_i32(~arg_0.b, arg_0.b)), arg_0.b.x, arg_0.b.x);
    global0 = arg_0.d;
    let var_2 = func_1(Struct_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec2<bool>(_wgslsmith_div_f32(arg_0.a.x, arg_0.c) <= arg_0.a.x, any(!arg_1)), arg_0.a.x, max(var_1, vec4<i32>(-1i, ~1i, arg_0.b.x, ~arg_0.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 489f, arg_0.a.x), vec4<f32>(arg_0.c, 334f, arg_0.a.x, 1489f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2159f, 1000f, 179f, arg_0.c), vec4<f32>(694f, 434f, 443f, arg_0.c))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.x, 236f, -662f, -788f), vec4<f32>(546f, arg_0.c, -1384f, 593f)))), true))), any(!select(select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), arg_1.x))).d.x;
    global0 = arg_0.d;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(~func_5(func_1(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false), -375f, vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.a), vec4<f32>(1077f, 368f, -1138f, 482f)), false), vec2<bool>(true, true)), select(~(~0u), _wgslsmith_clamp_u32(~global0.x, ~u_input.c.x, 19912u), select(u_input.c.x == global0.x, false, true)), global0.x);
    let var_1 = Struct_2(Struct_1(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), vec2<bool>(!(u_input.a != 2667i), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1547f)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-19573i, u_input.a, 18460i, 0i), ~vec4<i32>(0i, u_input.b, u_input.b, -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(step(1000f, -408f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1909f - -332f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-373f, -884f))))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))) || true);
    var_0 = _wgslsmith_sub_vec3_u32(global0.yzx & vec3<u32>(firstTrailingBit(60595u) >> (select(global0.x, 4294967295u, var_1.a.a.x) % 32u), 33300u, u_input.c.x), global0.wzz ^ abs(vec3<u32>(u_input.c.x, var_0.x, 754u)));
    var var_2 = vec4<bool>(any(vec4<bool>(!(!var_1.a.a.x), !var_1.a.b.x, u_input.b <= (var_1.a.d.x & 1i), var_1.b)), true, any(!(!select(vec3<bool>(true, var_1.b, var_1.b), var_1.a.a, var_1.a.a))), true);
    let var_3 = u_input.c;
    global0 = (min(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_0.x, global0.x, var_3.x, 47217u), vec4<u32>(global0.x, 4294967295u, 944u, 80467u), var_1.b), vec4<u32>(760u, 11309u, var_3.x, var_3.x) ^ vec4<u32>(var_3.x, var_0.x, var_3.x, global0.x)), vec4<u32>(global0.x, func_1(Struct_1(vec3<bool>(var_1.a.a.x, false, false), var_2.yx, var_1.a.c, vec4<i32>(-2147483647i, 1i, -35633i, -2147483647i), vec4<f32>(var_1.a.e.x, 698f, var_1.a.c, var_1.a.e.x)), var_1.a.a.x).d.x, global0.x >> (var_0.x % 32u), var_3.x)) << (func_1(Struct_1(select(vec3<bool>(var_1.a.a.x, var_1.b, true), vec3<bool>(true, false, var_2.x), false), !vec2<bool>(var_1.a.b.x, true), _wgslsmith_f_op_f32(539f * 334f), -vec4<i32>(u_input.a, 2147483647i, var_1.a.d.x, u_input.b), var_1.a.e), var_2.x || (-1121f > var_1.a.c)).d % vec4<u32>(32u))) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.x, var_0.x, global0.x, 9276u)), (vec4<u32>(1u, 4252u, 21023u, 0u) >> (vec4<u32>(29187u, 1u, 4295u, var_0.x) % vec4<u32>(32u))) << ((vec4<u32>(var_3.x, 24989u, 4294967295u, 0u) ^ vec4<u32>(0u, global0.x, 0u, var_0.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_4 = var_0.x;
    var var_5 = _wgslsmith_f_op_f32(-var_1.a.c);
    let var_6 = vec3<i32>(u_input.a << (_wgslsmith_clamp_u32(~u_input.c.x, abs(43125u), ~(~global0.x)) % 32u), u_input.b, -(~firstLeadingBit(1i | u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.d.x);
}

