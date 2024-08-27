struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<f32>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = any(vec2<bool>(true, false));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-281f)), -1220f)));
    return !(!var_0) || false;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = (1u << (~_wgslsmith_clamp_u32(u_input.a << (0u % 32u), _wgslsmith_div_u32(u_input.a, 0u), 4294967295u) % 32u)) << (u_input.a % 32u);
    return vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), arg_1.b, arg_1.b);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = Struct_1(true, global0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(global1.yy)))), global1.yz))) * vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_3 = Struct_1(any(select(vec4<bool>(global1.x < global1.x, global2.x, global2.x, func_2()), vec4<bool>(false, !global2.x, select(true, false, var_0.a), var_1.a), !(!vec4<bool>(var_1.a, var_0.a, var_1.a, global2.x)))), -183f);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_3.b, var_1, var_0, countOneBits(_wgslsmith_div_i32(22920i, 2147483647i)))) - global0.wzx));
    return Struct_1(false, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-393f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))) * global0.x))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = !vec2<bool>(global2.x, select(!global2.x, all(vec2<bool>(false, global2.x)), true));
    var var_1 = Struct_1(select(all(vec2<bool>(true, var_0.x)), global2.x, global2.x) | !any(!vec3<bool>(true, true, var_0.x)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -892f)));
    var var_2 = func_1();
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(ceil(var_2.b)), 1098f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2036f - -847f));
}

