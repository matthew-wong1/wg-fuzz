struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: u32) -> bool {
    return true;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = !vec3<bool>(true, true, func_2(u_input.a, any(global1.a.b.wxx), arg_1.x, ~firstTrailingBit(46266u)));
    var var_1 = 855f;
    var var_2 = ~_wgslsmith_clamp_vec3_i32(arg_1.zxy, arg_1.xwz, _wgslsmith_clamp_vec3_i32(-arg_1.wxy, vec3<i32>(-1i) * -arg_1.wyz, reverseBits(vec3<i32>(-5630i, global1.a.c, -8405i)) ^ max(vec3<i32>(arg_1.x, 2147483647i, global1.a.c), vec3<i32>(arg_1.x, arg_1.x, -89125i))));
    let var_3 = Struct_5(global1.a);
    var_1 = 131f;
    return vec3<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.a.x)) * _wgslsmith_f_op_f32(-var_3.a.a.x)) == global1.a.a.x), false);
}

fn func_3() -> vec4<bool> {
    global1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-global1.a.a), select(global1.a.b, global1.a.b, ~12807u < (global1.a.d & 1u)), global1.a.c | ((global1.a.c ^ -1i) << (u_input.c.x % 32u)), countOneBits(_wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.d, u_input.c.x), u_input.c, u_input.c))), vec3<bool>(select(u_input.c.x, 20871u, global1.a.b.x) >= 27698u, global1.a.e.x, global1.a.b.x)));
    let var_0 = false;
    global1 = Struct_5(Struct_3(global1.a.a, vec4<bool>(!(global1.a.d > 28929u), global1.a.e.x, !(!var_0), !var_0 & false), reverseBits(_wgslsmith_mod_i32(global1.a.c, ~1i)), 5614u, vec3<bool>(var_0, global1.a.c != global1.a.c, true)));
    global1 = Struct_5(Struct_3(vec4<f32>(164f, -1000f, -558f, _wgslsmith_f_op_f32(-global1.a.a.x)), vec4<bool>(var_0, all(global1.a.b), func_2(u_input.a << (vec2<u32>(4294967295u, 55447u) % vec2<u32>(32u)), var_0, -global1.a.c, ~4294967295u), var_0), ~(~(global1.a.c ^ global1.a.c)), _wgslsmith_sub_u32(1u << (1u % 32u), ~global1.a.d), vec3<bool>(_wgslsmith_add_i32(-17704i, global1.a.c) != (global1.a.c ^ 6064i), _wgslsmith_f_op_f32(-global1.a.a.x) <= -1338f, true)));
    global1 = Struct_5(global1.a);
    return !select(!vec4<bool>(true, true, any(global1.a.b.zzw), func_2(u_input.c, global1.a.e.x, 1i, 4294967295u)), !vec4<bool>(func_2(vec2<u32>(u_input.b, u_input.a.x), false, global1.a.c, 1u), global1.a.c >= 2147483647i, !var_0, true), select(vec4<bool>(false, false, select(var_0, var_0, false), global1.a.e.x), select(global1.a.b, select(global1.a.b, global1.a.b, vec4<bool>(false, true, var_0, global1.a.e.x)), global1.a.a.x < -1851f), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 490f;
    global1 = Struct_5(Struct_3(global1.a.a, !vec4<bool>(true, global1.a.e.x, false, global1.a.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(6184i), -1i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global1.a.c), -vec2<i32>(global1.a.c, global1.a.c))), global1.a.d, select(select(vec3<bool>(global1.a.e.x, global1.a.e.x, global1.a.e.x), func_1(-1000f, vec4<i32>(global1.a.c, global1.a.c, 0i, -21176i)), !global1.a.e), !vec3<bool>(global1.a.e.x, false, true), global1.a.e)));
    global0 = _wgslsmith_f_op_f32(394f - global1.a.a.x);
    global1 = Struct_5(global1.a);
    let var_0 = 68795u;
    var var_1 = Struct_5(global1.a);
    var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global1.a.a, var_1.a.a)))), func_3(), global1.a.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.d, 0u, 5684u, var_0), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 10530u, var_1.a.d, 0u), vec4<u32>(4294967295u, 0u, 22325u, global1.a.d))), vec3<bool>(_wgslsmith_div_f32(global1.a.a.x, global1.a.a.x) <= -649f, false, false)));
    var var_2 = ~var_1.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(-(max(~vec3<i32>(global1.a.c, var_1.a.c, var_1.a.c), _wgslsmith_div_vec3_i32(vec3<i32>(global1.a.c, var_1.a.c, -1i), vec3<i32>(-2147483647i, -1i, global1.a.c))) << (vec3<u32>(~var_1.a.d, ~var_1.a.d, 1u) % vec3<u32>(32u))), ~(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2497i, -9849i, global1.a.c), 86986i)));
}

