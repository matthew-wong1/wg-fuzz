struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(531f, -1195f, -2430f, -569f);

var<private> global1: vec2<f32> = vec2<f32>(-1049f, -1048f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(4294967295u, -117274i, select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(false, false, true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))), vec2<bool>(u_input.a >= u_input.a, false), true)), vec2<bool>(51106u <= (u_input.c.x >> (firstLeadingBit(106121u) % 32u)), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), vec2<bool>(true, all(vec3<bool>(any(vec2<bool>(false, false)), true, true))));
    global1 = global0.yz;
    let var_1 = Struct_1(_wgslsmith_sub_u32(abs(u_input.c.x), min(~u_input.a, _wgslsmith_mult_u32(u_input.a, ~u_input.c.x))), ((-var_0.b << (countOneBits(var_0.a) % 32u)) & abs(u_input.b.x)) ^ _wgslsmith_add_i32(31169i, 26221i), !(!select(vec2<bool>(true, var_0.c.x), select(var_0.c, vec2<bool>(true, var_0.d.x), true), var_0.d.x || true)), var_0.c, !(!var_0.c));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(-350f, -896f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - -1817f), -689f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(step(663f, -106f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1568f + -875f) * _wgslsmith_div_f32(-1291f, global1.x)), 1f, 1207f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(447f, global1.x, global1.x, global0.x), vec4<f32>(754f, global0.x, global0.x, 162f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1611f, global0.x, global0.x, 1116f))))), vec4<bool>(var_1.c.x, true, false, var_1.e.x))));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(~var_0.a), 4294967295u, u_input.a | ~11072u, var_1.a), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, var_1.a, u_input.c.x, 0u), vec4<u32>(4294967295u, 61803u, var_1.a, var_1.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(10854u, var_0.a, var_0.a, var_0.a), vec4<u32>(0u, 12284u, var_1.a, 7857u)), ~vec4<u32>(0u, 1u, var_1.a, 1u)))), max(min(var_1.b, -u_input.b.x) ^ var_0.b, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -20028i), vec2<i32>(0i, u_input.b.x)) ^ 50652i)), select(vec2<bool>(false, all(vec4<bool>(var_0.d.x, var_1.e.x, var_1.d.x, var_1.e.x))), select(vec2<bool>(var_0.c.x || true, true), vec2<bool>(all(vec3<bool>(true, var_0.c.x, true)), true), vec2<bool>(true, true)), (var_0.c.x | any(vec4<bool>(var_0.d.x, var_1.c.x, true, true))) && all(!vec4<bool>(var_0.e.x, true, false, var_0.e.x))), vec2<bool>(var_1.e.x, var_1.e.x), var_1.d);
    return ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 1u, 0u), vec3<u32>(33658u, u_input.c.x, var_1.a)), min(72534u, _wgslsmith_dot_vec3_u32(vec3<u32>(47870u, u_input.a, 4294967295u), vec3<u32>(u_input.c.x, var_0.a, var_1.a)))) << (u_input.c.x % 32u);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -635f, arg_0, arg_0))) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 2614f, global1.x, arg_0), vec4<f32>(global1.x, global0.x, global0.x, 883f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(502f, global1.x, 186f, arg_0) - vec4<f32>(arg_0, -528f, arg_0, global1.x))), arg_1)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-526f, arg_0, arg_0, global0.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 194f, 477f, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, arg_0, global0.x, 1551f), vec4<f32>(global0.x, global1.x, 591f, -896f), arg_1.x)))))));
    let var_0 = Struct_1(0u, firstLeadingBit(-39990i), arg_1.ww, !vec2<bool>(!arg_1.x, true), select(!select(vec2<bool>(true, true), select(arg_1.xy, vec2<bool>(arg_1.x, false), arg_1.wz), true), arg_1.zw, arg_1.x));
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(func_3(), 63191u), u_input.c);
    let var_3 = select(select(vec3<bool>(all(vec4<bool>(false, arg_1.x, var_0.e.x, var_1.c.x)) && true, var_1.e.x, var_0.a > var_0.a), vec3<bool>(!var_1.c.x, true, (1u << (var_1.a % 32u)) == var_1.a), true), vec3<bool>(false, all(arg_1.zy) == (true && any(arg_1.www)), var_1.e.x), select(arg_1.wyw, vec3<bool>(true, all(!arg_1.wx), any(var_0.d)), vec3<bool>(!(!arg_1.x), -5018i >= var_0.b, var_0.e.x && arg_1.x)));
    return select(var_0.e, !select(vec2<bool>(false != var_1.d.x, var_0.e.x), !vec2<bool>(var_0.d.x, true), var_1.c.x), var_3.zy);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_1 = max(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 19475u, 4294967295u, 0u), firstLeadingBit(vec4<u32>(26942u, arg_0.a, u_input.a, 4294967295u))), abs(vec4<u32>(arg_3.a, 48725u, 1u, _wgslsmith_div_u32(arg_2.a, arg_3.a)))) >> (vec4<u32>(arg_3.a, 11421u, _wgslsmith_add_u32(_wgslsmith_add_u32(67045u & u_input.a, ~2480u), 59196u), _wgslsmith_div_u32(4294967295u, 53452u)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-440f + _wgslsmith_f_op_f32(1043f + _wgslsmith_f_op_f32(arg_1 + arg_1))))));
    var var_3 = arg_3;
    var var_4 = arg_3.e.x;
    return !select(select(vec3<bool>(arg_2.b < 19567i, !arg_3.e.x, false), vec3<bool>(false, arg_2.d.x, true), !vec3<bool>(arg_3.e.x, false, true)), !(!vec3<bool>(arg_3.c.x, arg_2.d.x, true)), !(!vec3<bool>(arg_3.e.x, true, arg_0.d.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec4<bool> {
    let var_0 = !func_4(Struct_1(~0u << (min(1u, arg_0) % 32u), -7766i, func_2(_wgslsmith_f_op_f32(-global1.x), select(vec4<bool>(arg_1.c.x, true, false, false), vec4<bool>(true, arg_3, true, true), vec4<bool>(arg_1.d.x, true, arg_3, false))), arg_1.e, select(select(arg_1.e, arg_1.d, arg_1.e), !vec2<bool>(true, arg_3), arg_3)), _wgslsmith_f_op_f32(497f * 1000f), Struct_1(4294967295u, u_input.b.x, !select(arg_1.c, arg_1.d, arg_1.d), !arg_1.c, arg_1.e), Struct_1(u_input.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1.b, 43943i, 1348i), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)), arg_1.d, arg_1.d, vec2<bool>(true, u_input.c.x >= 79789u)));
    var var_1 = arg_1;
    let var_2 = select(!func_4(Struct_1(arg_0, 0i >> (0u % 32u), !vec2<bool>(false, arg_3), func_2(-696f, vec4<bool>(false, false, false, false)), select(var_0.xx, vec2<bool>(arg_3, false), arg_1.c)), -815f, Struct_1(firstTrailingBit(0u), var_1.b << (arg_1.a % 32u), func_2(global0.x, vec4<bool>(var_0.x, arg_1.e.x, arg_3, var_1.c.x)), !arg_1.d, var_1.c), Struct_1(~u_input.c.x, min(-2147483647i, 0i), vec2<bool>(true, true), func_2(arg_2.x, vec4<bool>(true, false, false, var_1.c.x)), arg_1.c)).xx, arg_1.c, !select(true, false, true));
    global1 = global0.zy;
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-657f, 1397f, global0.x, global1.x), vec4<f32>(arg_2.x, -872f, -1693f, arg_2.x))) - vec4<f32>(-558f, -511f, 1071f, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global1.x, 314f, global0.x), vec4<f32>(-1245f, 785f, -1555f, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, -1625f, 943f, global1.x) + vec4<f32>(-1270f, global1.x, arg_2.x, 2820f))))))));
    return !(!vec4<bool>(true, false, true, !(!var_0.x)));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> StorageBuffer {
    global1 = global0.wz;
    var var_0 = vec2<bool>((~abs(u_input.b.x) << (~0u % 32u)) >= 0i, all(vec4<bool>(-3134f < arg_1, true, true, arg_0.x)) & arg_0.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zw)));
    var_0 = !vec2<bool>(false, any(arg_0.yxx));
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(-364f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f + -1010f) + arg_1)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-915f, -1200f), global0.zx)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(777f * -231f)))), -1160f, _wgslsmith_mod_u32(u_input.c.x, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.b >> (vec2<u32>(u_input.c.x, 15761u) % vec2<u32>(32u)), u_input.b), firstLeadingBit(vec2<i32>(1i, 1i))) & u_input.b;
    global1 = vec2<f32>(-314f, _wgslsmith_f_op_f32(global1.x - global1.x));
    global1 = global0.xz;
    let var_1 = _wgslsmith_f_op_f32(1042f * _wgslsmith_f_op_f32(min(global1.x, global0.x))) != 749f;
    var var_2 = global1.x;
    let var_3 = _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(138f - global0.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(trunc(2031f))))));
    var var_4 = var_0.x;
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(f32(-1f) * -472f))), global1.x));
    let x = u_input.a;
    s_output = func_5(!select(!vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(var_1, true, false, true), func_1(u_input.a, Struct_1(14130u, u_input.b.x, vec2<bool>(var_1, false), vec2<bool>(true, var_1), vec2<bool>(var_1, true)), global0.wy, false), !var_1), var_1), -702f);
}

