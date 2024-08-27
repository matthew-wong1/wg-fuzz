struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: i32 = 23457i;

var<private> global1: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_3 {
    return global1.a;
}

fn func_3() -> f32 {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_f32(-982f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d.x))), -424f)));
    let var_2 = select(var_0.b.yyw, abs(vec3<u32>(global1.a.c.b, _wgslsmith_mod_u32(1u, u_input.c), 1u)) & vec3<u32>(func_2().a.a.b, ~_wgslsmith_sub_u32(30958u, u_input.b), (u_input.b ^ global1.a.b.x) << (47818u % 32u)), !vec3<bool>(all(select(vec4<bool>(var_0.a.c, false, true, true), vec4<bool>(false, global1.a.a.c, false, var_0.a.c), vec4<bool>(true, true, false, global1.a.a.c))), var_0.a.c, all(select(vec2<bool>(true, global1.a.a.c), vec2<bool>(global1.a.a.c, true), vec2<bool>(var_0.a.c, var_0.a.c)))));
    var var_3 = vec4<u32>(~var_2.x, _wgslsmith_clamp_u32(~global1.a.c.b, 12964u, 0u) | 1u, u_input.c, u_input.c);
    var var_4 = !(!(!select(!vec4<bool>(true, var_0.a.c, true, global1.a.a.c), !vec4<bool>(true, false, var_0.a.c, var_0.a.c), var_0.a.c)));
    return 1000f;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    global1 = Struct_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(420f)))))), vec3<f32>(arg_1.a.a.x, 313f, arg_2.x));
    let var_0 = _wgslsmith_f_op_f32(-1f);
    global1 = Struct_4(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2156f - 727f) - arg_1.a.a.x), -586f, global1.d);
    global1 = Struct_4(Struct_3(func_2().a, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a.b, 0u), vec3<u32>(1u, 105386u, u_input.c)), 43097u, 0u, 4294967295u), func_2().a.a), 363f, var_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + -565f), _wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(2127f - 391f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(var_0 * -1191f), _wgslsmith_f_op_f32(f32(-1f) * -1365f))))));
    global1 = Struct_4(global1.a, arg_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 718f));
    return Struct_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -1236f) * 1f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * _wgslsmith_f_op_f32(var_0 * arg_1.a.a.x))))), func_2().c.a.x, arg_1.a.a.wzx);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> vec4<bool> {
    global0 = _wgslsmith_add_i32(u_input.a.x, -1i);
    var var_0 = vec4<f32>(521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2909f, arg_0.a.c.a.x, false))), 290f, arg_0.b);
    var var_1 = Struct_3(func_2().a, arg_0.a.b, func_2().a.a);
    var var_2 = ~_wgslsmith_div_u32(global1.a.a.a.b, 25665u);
    let var_3 = !(!select(vec2<bool>(all(vec2<bool>(true, arg_0.a.a.c)), !var_1.a.c), select(!vec2<bool>(false, global1.a.a.c), !vec2<bool>(false, global1.a.a.c), !vec2<bool>(global1.a.a.c, true)), vec2<bool>(global1.a.a.c & global1.a.a.c, true)));
    return !(!select(!(!vec4<bool>(true, global1.a.a.c, true, global1.a.a.c)), vec4<bool>(10260u <= u_input.b, var_1.a.c, !arg_0.a.a.c, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, !select(!global1.a.a.c, !(!global1.a.a.c), true), any(select(func_4(func_1(4294967295u, Struct_2(Struct_1(vec4<f32>(global1.d.x, global1.c, global1.a.c.a.x, -1943f), u_input.b), -9612i, true), vec2<f32>(-1471f, -1209f)), func_2().a), !(!vec4<bool>(global1.a.a.c, global1.a.a.c, true, true)), !(!vec4<bool>(true, global1.a.a.c, false, global1.a.a.c)))), all(!vec4<bool>(global1.a.a.c, false, true, global1.a.a.c)));
    var var_1 = vec3<i32>(u_input.d.x, u_input.a.x, i32(-1i) * -29365i) << (global1.a.b.wzy % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.a.a.a.a))))));
    let var_3 = Struct_3(Struct_2(Struct_1(global1.a.a.a.a, 0u << (firstTrailingBit(1u) % 32u)), var_1.x, !(4294967295u < global1.a.c.b)), vec4<u32>(_wgslsmith_mod_u32(~firstTrailingBit(64829u), global1.a.c.b), ~(~_wgslsmith_add_u32(u_input.b, global1.a.c.b)), func_1(global1.a.c.b, func_2().a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-488f, -134f))).a.c.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global1.a.b, vec4<u32>(1u, 5288u, 53640u, global1.a.c.b)), global1.a.b)), func_1(~_wgslsmith_sub_u32(1u, global1.a.a.a.b ^ global1.a.c.b), Struct_2(func_2().a.a, abs(u_input.d.x), any(var_0.zwy) == true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.xw)) - global1.a.c.a.xz)).a.c);
    var_1 = -max(vec3<i32>(global1.a.a.b, -u_input.d.x, 0i), select(vec3<i32>(func_2().a.b, firstLeadingBit(-1i), 1i << (global1.a.b.x % 32u)), ~vec3<i32>(var_3.a.b, -2147483647i, 14401i), func_4(func_1(global1.a.c.b, Struct_2(Struct_1(global1.a.a.a.a, global1.a.c.b), 6223i, true), global1.d.yx), Struct_2(global1.a.c, global1.a.a.b, true)).yxz));
    var_1 = reverseBits(vec3<i32>(-6791i, var_3.a.b, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.zy, vec2<i32>(var_3.a.b, global1.a.a.b)), -1i)));
    let var_4 = !any(var_0.wxy);
    var var_5 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(-19156i << (~4294967295u % 32u));
}

