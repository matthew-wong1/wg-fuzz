struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = !vec3<bool>(all(vec3<bool>(true, true, true)), any(!vec2<bool>(false, arg_0)) && all(vec4<bool>(true, arg_0, false, true)), !(_wgslsmith_f_op_f32(-arg_1.a) > _wgslsmith_f_op_f32(arg_1.c.x + -475f)));
    global0 = !select(!select(vec3<bool>(arg_0, global0.x, true), select(vec3<bool>(false, true, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, arg_0, false)), true), select(!(!vec3<bool>(true, true, global0.x)), select(!vec3<bool>(arg_0, false, global0.x), !vec3<bool>(global0.x, arg_0, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, global0.x, true), !vec3<bool>(arg_0, global0.x, arg_0), true | global0.x)), vec3<bool>(false, all(global0.yx) | true, !(!global0.x)));
    global0 = vec3<bool>(true, any(select(vec4<bool>(!global0.x, !global0.x, true, all(global0.xz)), select(!vec4<bool>(global0.x, arg_0, arg_0, true), vec4<bool>(false, true, false, true), false), arg_0)), arg_0);
    var var_0 = arg_1;
    let var_1 = vec3<f32>(-594f, arg_1.a, 644f);
    return _wgslsmith_sub_u32(countOneBits(firstTrailingBit(select(41590u, firstLeadingBit(0u), !arg_0))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4583u, 1u), _wgslsmith_clamp_u32(37927u, 43276u, 4294967295u), max(43221u, 27452u), 1u >> (1u % 32u)), ~(~vec4<u32>(1115u, 4294967295u, 15366u, 42367u))), vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(88769u, 52148u), vec2<u32>(29656u, 0u), global0.x), vec2<u32>(4294967295u, 0u)), 1u, ~(~42164u), max(15522u, reverseBits(19237u)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    global0 = !select(select(select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, global0.x)), vec3<bool>(true, true, true)), vec3<bool>(arg_0.d.x > -2147483647i, global0.x, global0.x), (global0.x || true) | true), select(!(!vec3<bool>(global0.x, false, false)), !vec3<bool>(global0.x, false, false), !all(vec3<bool>(global0.x, true, true))), true);
    var var_0 = all(select(!select(global0.yz, !vec2<bool>(false, global0.x), !global0.x), select(global0.zx, select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), vec2<bool>(true, true), select(global0.yz, vec2<bool>(true, global0.x), vec2<bool>(true, true))), true), select(global0.zy, !select(global0.yz, vec2<bool>(false, global0.x), global0.x), select(vec2<bool>(false, global0.x), select(global0.zx, vec2<bool>(false, global0.x), global0.zy), select(vec2<bool>(true, false), global0.zz, false)))));
    global0 = select(!vec3<bool>(false, all(!vec4<bool>(false, true, false, global0.x)), select(arg_1, 1u, false) > _wgslsmith_mult_u32(arg_1, arg_1)), select(!(!vec3<bool>(true, global0.x, global0.x)), !select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, false)), !vec3<bool>(true, global0.x, true), true), !(u_input.b > _wgslsmith_dot_vec3_i32(arg_0.d.zzz, vec3<i32>(1i, 28466i, 0i)))), select(any(!vec3<bool>(global0.x, false, false)), false, global0.x) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(361f))) <= -462f));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.b, -1130f), _wgslsmith_f_op_f32(arg_0.c.x * 1254f), -849f, 599f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(arg_0.c, _wgslsmith_f_op_vec4_f32(-arg_0.c), 0u > arg_1))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b - var_1.x))));
    return arg_1 == ~(~arg_1);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> f32 {
    global0 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), global0.x), !vec3<bool>(global0.x, global0.x, global0.x), all(vec2<bool>(true, true))), vec3<bool>(global0.x, 4294967295u != arg_1.x, true)), select(select(vec3<bool>(all(vec4<bool>(true, true, false, global0.x)), all(vec4<bool>(false, true, false, true)), true), !(!vec3<bool>(global0.x, false, true)), select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x), global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x), global0.x))), vec3<bool>(_wgslsmith_sub_i32(arg_0.x, u_input.b) == ~arg_0.x, false, true), global0.x || false), !global0.x);
    global0 = !select(vec3<bool>(any(vec4<bool>(false, global0.x, true, global0.x)), false, any(!vec3<bool>(global0.x, global0.x, true))), !(!(!vec3<bool>(false, global0.x, false))), vec3<bool>(false, !(!global0.x), !global0.x));
    global0 = !vec3<bool>(true, false, global0.x);
    global0 = !vec3<bool>(true, any(vec4<bool>(global0.x, true, global0.x, any(vec4<bool>(true, true, global0.x, true)))), !global0.x);
    global0 = vec3<bool>(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-975f, -960f)) + -1916f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -347f, -491f, -219f) * vec4<f32>(-578f, 125f, 236f, -1497f)), vec4<i32>(0i, arg_0.x, -1i, arg_0.x | u_input.c.x)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(3293u, func_3(global0.x, Struct_1(1152f, 1407f, vec4<f32>(-152f, 1289f, 1580f, -178f), vec4<i32>(12515i, 6463i, arg_0.x, -2147483647i)))), 81298u, arg_1.x)), true, false & (_wgslsmith_dot_vec2_i32(arg_0, arg_0) != _wgslsmith_mod_i32(2961i, max(u_input.b, arg_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f + -696f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(886f * _wgslsmith_f_op_f32(min(1000f, 970f))), -495f))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a, vec4<u32>(0u, 17553u, 52597u, 1u))))), _wgslsmith_f_op_f32(step(1000f, arg_0))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0)), _wgslsmith_f_op_f32(round(-1000f))));
    var var_1 = Struct_1(var_0.x, var_0.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(126f, arg_0)), arg_0, arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1012f, arg_0, true))))), countOneBits(vec4<i32>(-1i, 41689i, _wgslsmith_add_i32(2147483647i, min(u_input.b, -22617i)), u_input.a.x & -u_input.a.x)));
    var var_2 = Struct_1(-365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) - 422f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c))), firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 92956i, 0i, 0i), var_1.d), u_input.c)));
    let var_3 = ~min(63638i, var_1.d.x);
    var var_4 = global0.x;
    return Struct_1(_wgslsmith_f_op_f32(var_1.a * 875f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(arg_0))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a * arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -127f))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -952f), -299f)), _wgslsmith_f_op_f32(max(-109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x * arg_0) - arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1537f, _wgslsmith_f_op_f32(max(var_0.x, var_2.c.x))))))), u_input.c);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    let var_0 = func_1(-111f).d.yxx;
    var var_1 = 5931u;
    global0 = !(!select(!vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(true, global0.x, false), vec3<bool>(false, true, global0.x), true), vec3<bool>(true, true, true))));
    var_1 = ~_wgslsmith_add_u32(~10612u, ~arg_2.x);
    var_1 = arg_1;
    return ~max(~_wgslsmith_sub_i32(u_input.b, u_input.c.x), ~(u_input.a.x << (84462u % 32u))) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, _wgslsmith_sub_i32(6712i, -16031i), -2147483647i, -arg_0.d.x), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & func_5(func_1(-240f), 93443u, ~vec2<u32>(1u, 1u)));
}

