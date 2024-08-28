struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: vec4<f32> = vec4<f32>(549f, 1271f, 595f, 238f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_1(!select(vec2<bool>(any(vec4<bool>(arg_0, true, arg_0, arg_0)), true), vec2<bool>(true, false), arg_0), 4294967295u);
    var_0 = Struct_1(var_0.a, 0u);
    let var_1 = Struct_1(var_0.a, max(u_input.a.x, select(~_wgslsmith_clamp_u32(u_input.b, 0u, 60657u), ~u_input.b, true)));
    global0 = vec4<f32>(-741f, -283f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -547f)))))));
    var_0 = var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1049f, _wgslsmith_f_op_f32(-global0.x), 237f, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1603f, 200f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, _wgslsmith_f_op_f32(global0.x + global0.x), 1685f, _wgslsmith_f_op_f32(global0.x + global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global0.x, -365f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 407f) * vec4<f32>(global0.x, global0.x, global0.x, -1272f))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(-401f, 1345f, !arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) + _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1205f)), _wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(select(global0.x, global0.x, true)), _wgslsmith_f_op_f32(global0.x + global0.x), -1109f))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -401f, global0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 358f, -117f, global0.x), vec4<f32>(-342f, global0.x, -1062f, -529f), true)))), _wgslsmith_f_op_vec4_f32(func_3(true)))));
    let var_0 = vec3<i32>(-484i, -_wgslsmith_clamp_i32(select(35264i << (u_input.b % 32u), _wgslsmith_add_i32(2147483647i, -2147483647i), arg_0.x || arg_1.a.x), reverseBits(_wgslsmith_sub_i32(-2147483647i, -8507i)), -2147483647i), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-51871i, 878i), select(vec2<i32>(-21137i, -2147483647i), vec2<i32>(-73688i, 39157i), true))), _wgslsmith_dot_vec3_i32(abs(max(vec3<i32>(-2147483647i, 40855i, -2147483647i), vec3<i32>(19189i, -9386i, -1i))), abs(-vec3<i32>(0i, 1i, -2147483647i)))));
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(true, !arg_1.a.x), select(arg_1.a, select(vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_0.x), arg_1.a), select(arg_1.a, arg_1.a, vec2<bool>(false, true))), true), ~(~54446u)), ~2147483647i);
    var var_2 = Struct_2(Struct_1(select(vec2<bool>(true, true), arg_1.a, any(!vec4<bool>(true, var_1.a.a.x, arg_0.x, false))), ~var_1.a.b << (1u % 32u)), min(-2147483647i, var_1.b));
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(arg_0.a.a, 4294967295u);
    var var_1 = var_0.a.x;
    var var_2 = global0.x;
    var var_3 = false;
    var var_4 = all(!arg_0.a.a);
    return arg_1.a.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_1.a.a.x;
    var var_1 = -11080i;
    let var_2 = vec3<bool>(false, var_0 | !all(select(vec3<bool>(true, true, var_0), vec3<bool>(arg_3.a.a.x, false, false), vec3<bool>(true, var_0, true))), arg_3.a.a.x);
    let var_3 = -(~vec2<i32>(-_wgslsmith_mod_i32(2147483647i, 8421i), -3224i));
    var var_4 = arg_1.a.a;
    return !select(vec3<bool>(!arg_1.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.b, 1u), u_input.a.yy) != (arg_1.a.b & arg_0), arg_1.a.a.x), select(var_2, vec3<bool>(arg_2.x <= -25280i, arg_1.a.a.x, arg_3.a.a.x), all(vec4<bool>(var_0, true, true, var_0))), func_4(Struct_2(func_2(vec2<bool>(false, true), arg_1.a), -23726i), Struct_1(vec2<bool>(var_0, var_0), select(arg_0, arg_1.a.b, false))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_1(!func_1(~37185u, Struct_2(Struct_1(arg_1.a, 4294967295u), 11644i), ~vec4<i32>(1i, 1i, 1i, 1i), Struct_2(func_2(vec2<bool>(arg_1.a.x, false), arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(11471i, 2147483647i), vec2<i32>(61746i, 2147483647i)))).zx, 0u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-350f, -1506f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-132f, global0.x, _wgslsmith_f_op_f32(min(1235f, _wgslsmith_f_op_f32(abs(-2265f)))))), global0.ywx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(!func_1(7136u, Struct_2(Struct_1(vec2<bool>(false, true), u_input.a.x), -1i), vec4<i32>(-1i, 28271i, 2147483647i, -31956i), Struct_2(Struct_1(vec2<bool>(false, true), 0u), -2147483647i)), func_2(vec2<bool>(false, false), func_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, false), 1u))), vec4<f32>(global0.x, _wgslsmith_div_f32(866f, -2940f), _wgslsmith_f_op_f32(-global0.x), global0.x)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(floor(-330f)))), -101f, global0.x)));
    var var_2 = true;
    var_2 = all(!(!(!func_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, false), var_0)).a)));
    let var_3 = Struct_2(func_2(vec2<bool>(any(vec2<bool>(true, true)) || true, true), func_2(vec2<bool>(true, true), func_2(vec2<bool>(false, true), func_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true), 7815u))))), 2147483647i);
    var var_4 = true;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2201f), var_1.x, 543f, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~50961u);
}

