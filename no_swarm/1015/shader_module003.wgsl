struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = vec3<bool>(35307i >= _wgslsmith_sub_i32(u_input.b, u_input.b), true || (-845f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(930f))))), false);
    var var_1 = any(vec2<bool>(min(0u, ~u_input.c) > u_input.c, !var_0.x));
    var var_2 = ~countOneBits(-23298i);
    var_1 = any(select(vec2<bool>(!global0.b.x, any(var_0)), !(!global0.a.wy), true));
    return -271f;
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(global0.a, select(select(global0.b, global0.a.wwz, !select(global0.a.xyy, global0.b, global0.b.x)), select(select(!global0.a.zyy, select(vec3<bool>(global0.b.x, global0.a.x, global0.b.x), global0.a.xwx, true), select(global0.a.wwx, global0.b, global0.b)), vec3<bool>(global0.b.x, true, true), all(global0.a)), any(global0.a.wy)));
    let var_0 = Struct_1(!global0.a, vec3<bool>(global0.a.x, global0.b.x, _wgslsmith_div_f32(-421f, _wgslsmith_f_op_f32(func_3())) >= 1f));
    let var_1 = var_0;
    global0 = Struct_1(!select(global0.a, global0.a, var_1.a), vec3<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(901f + 1512f), _wgslsmith_f_op_f32(1000f + -231f))) >= 1000f, any(select(var_0.b, vec3<bool>(var_1.b.x, false, global0.b.x), var_0.b))));
    let var_2 = any(vec4<bool>(true, false, !(!var_0.a.x) || all(vec4<bool>(false, false, global0.a.x, var_1.a.x)), global0.a.x));
    return !vec4<bool>(false, false, var_0.a.x, var_1.a.x);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = ~firstTrailingBit(-_wgslsmith_sub_i32(u_input.b, firstLeadingBit(0i)));
    var var_1 = Struct_1(select(!func_2(), func_2(), all(global0.b.xx)), !(!(!vec3<bool>(global0.a.x, false, true))));
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-341f, 769f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1081f)) - vec2<f32>(arg_0, -456f)), func_2().x)))));
    var var_4 = _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(func_3())));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!select(select(global0.a.wx, global0.a.wy, vec2<bool>(false, true)), vec2<bool>(global0.b.x, global0.b.x), select(vec2<bool>(global0.a.x, false), global0.b.xx, global0.a.yy)), vec2<bool>(func_1(220f), true), true));
    let var_1 = !(!all(!vec3<bool>(global0.a.x, global0.b.x, false)));
    global0 = Struct_1(func_2(), select(global0.b, select(select(!vec3<bool>(global0.a.x, var_1, var_1), !global0.a.yzw, select(global0.a.xxw, vec3<bool>(var_1, true, true), false)), global0.b, true), var_1));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1224f + -229f), _wgslsmith_f_op_f32(min(868f, 1058f)));
    var var_3 = true;
    let var_4 = u_input.a;
    var var_5 = Struct_1(vec4<bool>(all(func_2().wz), false, global0.b.x, !(var_4 != _wgslsmith_sub_u32(u_input.a, 0u))), !vec3<bool>(false, false, !global0.b.x));
    let var_6 = u_input.b;
    var var_7 = !vec4<bool>(!(!(!var_1)), u_input.b != u_input.b, false, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(min(countOneBits(1u), ~(~43338u)), var_4), -2189f);
}

