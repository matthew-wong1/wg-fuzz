struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(vec2<u32>(~1u, global0.a.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-327f)), _wgslsmith_f_op_f32(global0.b.d.x - global0.b.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.b.x * 1170f), _wgslsmith_f_op_f32(global0.b.b.x + global0.b.b.x)), -1710f, _wgslsmith_f_op_f32(f32(-1f) * -136f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.d.x))), 1183f, _wgslsmith_f_op_f32(-global0.c.c)), global0.c.d.x, global0.c.d, global0.c.e), global0.b);
    let var_1 = global0.a;
    var var_2 = var_0.b;
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(1u, 73095u));
    var_3 = _wgslsmith_mod_u32(12937u, var_0.a.x);
    return global0.c.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    global0 = arg_0;
    var var_0 = global0.b.c;
    var_0 = arg_0.b.c;
    let var_1 = select(global0.a, arg_0.a, vec2<bool>(select(any(vec4<bool>(true, false, global0.b.e, true)), arg_1.b.e, all(select(vec4<bool>(false, arg_1.c.e, true, arg_3.c.e), vec4<bool>(arg_0.c.e, true, arg_1.c.e, arg_0.c.e), false))), any(vec2<bool>(0u <= arg_1.a.x, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(max(arg_0.c.a, arg_0.b.a))) * arg_0.c.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.c.a.x * _wgslsmith_f_op_f32(round(arg_0.c.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.b.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.d.x))))), 1000f, arg_0.b.d, arg_3.c.e);
    return arg_3.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = 13920u;
    var_0 = func_4(arg_1, arg_1, global0.c.a, Struct_2(select(select(vec2<u32>(42237u, global0.a.x) | arg_1.a, _wgslsmith_mult_vec2_u32(global0.a, global0.a), select(vec2<bool>(false, global0.c.e), vec2<bool>(true, true), vec2<bool>(arg_1.c.e, false))), vec2<u32>(~60734u, ~global0.a.x), global0.b.e), global0.c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_1.b.b.x, arg_1.c.d.x, arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2576f, arg_1.b.a.x, -193f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.x * -1000f) - arg_1.c.c), arg_1.c.a.zyy, false)));
    var_0 = reverseBits(4294967295u);
    global0 = Struct_2(vec2<u32>(global0.a.x, ~global0.a.x), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-global0.b.a.yyy), -1689f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.b * global0.c.d)), any(vec2<bool>(true, false))), global0.b);
    let var_1 = !(!(!(!(!vec4<bool>(true, global0.b.e, global0.c.e, arg_0.e)))));
    return -670f;
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = select(-17447i, -u_input.d.x, all(arg_0) || true);
    let var_1 = arg_2;
    let var_2 = 22127u;
    var var_3 = arg_2.b;
    var var_4 = false;
    return Struct_1(global0.b.a, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) + 1718f)), global0.b.d, true);
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = func_5(vec2<bool>(global0.c.e, true), 1u, Struct_2(vec2<u32>(global0.a.x, ~_wgslsmith_sub_u32(29387u, global0.a.x)), Struct_1(_wgslsmith_div_vec4_f32(global0.b.a, _wgslsmith_f_op_vec4_f32(-global0.c.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(523f, 571f, global0.b.d.x) + global0.c.b)), _wgslsmith_f_op_f32(func_2(global0.b, Struct_2(vec2<u32>(0u, global0.a.x), global0.b, global0.b))), vec3<f32>(global0.b.b.x, _wgslsmith_f_op_f32(ceil(-378f)), -411f), arg_0.x > _wgslsmith_mod_i32(u_input.b, u_input.c.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-867f, global0.b.c, global0.b.a.x, 1130f))), vec3<f32>(-1078f, _wgslsmith_f_op_f32(-global0.c.a.x), global0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.c * global0.c.b.x) - -1001f), _wgslsmith_f_op_vec3_f32(-global0.b.d), true)), vec2<f32>(-1041f, global0.b.b.x));
    global0 = Struct_2(vec2<u32>(8687u, abs(26374u)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.d.x, 197f, var_0.a.x, 1327f)) + global0.b.a) - vec4<f32>(-1306f, global0.b.c, _wgslsmith_f_op_f32(2349f + 384f), _wgslsmith_f_op_f32(f32(-1f) * -942f))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.b.x * global0.c.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1283f - global0.b.a.x), -710f), global0.b.d.x), _wgslsmith_f_op_f32(step(-1274f, var_0.d.x)), global0.c.d, global0.c.b.x <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c + -174f), _wgslsmith_f_op_f32(round(global0.c.b.x))))), global0.c);
    var var_1 = var_0;
    global0 = Struct_2(vec2<u32>(global0.a.x, global0.a.x), var_0, func_5(vec2<bool>(true, var_1.e), global0.a.x, Struct_2(global0.a, func_5(select(vec2<bool>(var_1.e, false), vec2<bool>(true, global0.b.e), vec2<bool>(var_1.e, true)), 12073u, Struct_2(global0.a, Struct_1(global0.c.a, vec3<f32>(-246f, -410f, var_0.a.x), 514f, global0.b.b, var_0.e), global0.b), _wgslsmith_f_op_vec2_f32(-var_0.a.wz)), func_5(vec2<bool>(true, false), ~global0.a.x, Struct_2(global0.a, Struct_1(vec4<f32>(1250f, var_1.c, global0.c.b.x, 202f), var_0.a.xzw, global0.b.b.x, global0.c.d, true), global0.c), _wgslsmith_f_op_vec2_f32(-var_1.b.zz))), global0.b.a.zw));
    var_1 = global0.c;
    return Struct_2(firstLeadingBit(global0.a) << (global0.a % vec2<u32>(32u)), func_5(select(!(!vec2<bool>(var_1.e, false)), select(select(vec2<bool>(true, var_0.e), vec2<bool>(global0.c.e, global0.b.e), global0.c.e), !vec2<bool>(var_1.e, true), var_0.e), !vec2<bool>(var_1.e, global0.b.e)), _wgslsmith_mod_u32(46532u, firstLeadingBit(72105u)), Struct_2(global0.a, Struct_1(global0.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1149f, 1245f, global0.c.c) + vec3<f32>(-911f, var_1.d.x, var_0.d.x)), -415f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.c.a.x, 260f, 3428f))), var_0.e), func_5(vec2<bool>(false, false), ~15368u, Struct_2(vec2<u32>(46956u, global0.a.x), Struct_1(global0.b.a, vec3<f32>(1559f, 520f, global0.b.d.x), var_1.c, vec3<f32>(-1015f, 338f, -1716f), var_1.e), var_0), vec2<f32>(565f, 1230f))), var_0.b.yy), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(6409i, 58615i, u_input.a, u_input.d.x)) | -vec4<i32>(-22549i, u_input.d.x, -50010i, 34867i), vec4<i32>(u_input.b, 1283i, ~0i, u_input.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, -4200i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 2191i), vec3<i32>(2902i, -909i, u_input.d.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -12210i), vec2<i32>(u_input.a, u_input.c.x))), vec4<i32>(u_input.b, _wgslsmith_mult_i32(u_input.c.x, 25817i), -5584i, u_input.c.x & 936i))));
    let var_1 = Struct_2(global0.a, var_0.c, func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 42946i, u_input.c.x, 40697i), select(select(vec4<i32>(2147483647i, u_input.b, 2147483647i, 9401i), vec4<i32>(u_input.d.x, u_input.b, -15641i, u_input.b), vec4<bool>(var_0.c.e, false, global0.b.e, true)), ~vec4<i32>(32950i, -18829i, -42140i, 0i), var_0.c.e))).c);
    let var_2 = var_1;
    let var_3 = -reverseBits(12333i);
    let var_4 = countOneBits(reverseBits(~(~var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(749f, var_2.c.c, any(vec2<bool>(var_0.c.e, true)))), _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f * global0.b.b.x)))))), ~(~(~(vec3<u32>(var_1.a.x, var_1.a.x, var_0.a.x) >> (vec3<u32>(75444u, 42332u, 49706u) % vec3<u32>(32u))))), ~vec3<i32>(_wgslsmith_add_i32(~u_input.c.x, firstTrailingBit(u_input.b)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.c.x), 89296i), _wgslsmith_clamp_i32(1i, firstLeadingBit(u_input.d.x), u_input.d.x)), min(~min(vec3<u32>(var_1.a.x, 1u, global0.a.x), vec3<u32>(1u, var_4, 1u) >> (vec3<u32>(global0.a.x, var_1.a.x, 0u) % vec3<u32>(32u))), (vec3<u32>(1u, 0u, 4294967295u) ^ (vec3<u32>(4294967295u, var_4, var_1.a.x) << (vec3<u32>(68210u, var_2.a.x, 0u) % vec3<u32>(32u)))) | _wgslsmith_sub_vec3_u32(abs(vec3<u32>(2807u, var_4, var_1.a.x)), ~vec3<u32>(var_0.a.x, 8467u, var_2.a.x))));
}

