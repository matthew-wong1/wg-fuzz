struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(true, global0.b);
    var var_1 = true;
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(select(any(vec2<bool>(all(vec4<bool>(false, var_0.a, false, var_0.a)), !global0.a)), all(select(select(vec2<bool>(true, global0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a)), vec2<bool>(false, var_0.a), select(vec2<bool>(false, true), vec2<bool>(true, var_0.a), vec2<bool>(global0.a, false)))), !(all(vec3<bool>(true, false, false)) || global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -1648f)), vec2<f32>(var_0.b.x, 2701f))), _wgslsmith_f_op_vec2_f32(-var_0.b)) - vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))));
    var_0 = Struct_1(1u >= abs(~108291u << (firstTrailingBit(0u) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(780f, var_3.b.x), _wgslsmith_f_op_vec2_f32(sign(var_0.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_3.b))))), _wgslsmith_f_op_vec2_f32(trunc(global0.b))));
    return select(vec4<bool>(true, false, true, true), select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(global0.a, var_0.a, false, var_0.a), vec4<bool>(true, var_3.a, false, false)), select(vec4<bool>(false, false, var_0.a, global0.a), !vec4<bool>(true, true, false, var_3.a), all(vec2<bool>(var_3.a, global0.a))), global0.a), select(select(select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(false, true, false, global0.a), vec4<bool>(global0.a, true, global0.a, global0.a)), !vec4<bool>(var_3.a, var_0.a, global0.a, var_0.a), all(vec3<bool>(false, global0.a, global0.a))), !vec4<bool>(false, global0.a, var_3.a, global0.a), true), select(vec4<bool>(!var_3.a, global0.a & var_0.a, global0.a || var_3.a, all(vec4<bool>(true, global0.a, true, global0.a))), vec4<bool>(false, any(vec4<bool>(true, var_3.a, var_3.a, var_0.a)), true || var_3.a, true), global0.a)), vec4<bool>(true, var_3.a, true, true));
}

fn func_2() -> bool {
    let var_0 = !func_3();
    let var_1 = all(vec4<bool>(!(!var_0.x || !var_0.x), global0.a, all(!var_0.wwx), false));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-214f)));
    global0 = Struct_1(var_1 && true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 2016f))), _wgslsmith_f_op_vec2_f32(global0.b + global0.b)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(843f * 1000f), _wgslsmith_f_op_f32(var_2 - 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -2424f))));
    global0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.b, vec2<f32>(var_2, -917f), vec2<bool>(var_1, global0.a))) + vec2<f32>(var_2, -1000f)))));
    return func_3().x;
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    global0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) - vec2<f32>(_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(-global0.b.x)), -687f)));
    global0 = Struct_1(func_2(), _wgslsmith_f_op_vec2_f32(floor(global0.b)));
    global0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(15064u, 49049u, 13671u)), 88733u, _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, 45938u))) > countOneBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)), global0.b);
    let var_0 = Struct_1(-168f <= global0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)) - global0.b));
    global0 = var_0;
    return vec4<bool>(any(vec2<bool>(!any(vec4<bool>(global0.a, var_0.a, true, false)), !(false && arg_0.x))), func_2(), true, true);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = abs(-9279i);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(598f, -807f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-616f, 206f)))), _wgslsmith_f_op_vec2_f32(arg_2.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-325f, 1168f))), vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(arg_0.a.a, false))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(1750f + 487f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.b.x * arg_2.b.x), 1000f))));
    var_0 = reverseBits(1i << (~arg_1.x % 32u));
    var_0 = u_input.a.x;
    let var_2 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.b)) + _wgslsmith_div_vec2_f32(global0.b, global0.b))), 0u), ~(~vec3<u32>(_wgslsmith_mod_u32(57803u, 1u), 1u, ~4294967295u)), Struct_1(any(func_1(select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, false, global0.a), vec3<bool>(false, true, global0.a)))), global0.b));
    global0 = var_0.a;
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, u_input.a.x)), _wgslsmith_add_i32(abs(u_input.a.x), ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -44943i, u_input.a.x))));
    global0 = var_0.a;
    var var_2 = -vec3<i32>(abs(-4032i), u_input.a.x, 1i) >> (vec3<u32>(~_wgslsmith_mult_u32(var_0.b, 4294967295u), 1u, ~min(var_0.b, var_0.b) & 9688u) % vec3<u32>(32u));
    global0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(var_0.a.b - global0.b));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec2<i32>(~_wgslsmith_mult_i32(0i, -667i) & u_input.a.x, 2147483647i & (~2147483647i | ~var_2.x)));
}

