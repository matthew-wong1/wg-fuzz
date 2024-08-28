struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false))));
    let var_1 = var_0;
    return Struct_1(vec4<bool>(false, any(vec3<bool>(true, true, true)) || true, var_1.a.x, true));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))), true, true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    let var_1 = select(47142u, ~_wgslsmith_mult_u32(min(u_input.c << (151817u % 32u), _wgslsmith_add_u32(u_input.d.x, 4254u)), u_input.b), !any(vec4<bool>(false & var_0.a.x, all(var_0.a.zw), false, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))));
    var var_2 = func_2();
    let var_3 = var_2.a.wxw;
    let var_4 = var_0;
    return -635f;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = all(vec4<bool>(false, false, true, !(!any(vec3<bool>(false, false, true)))));
    var_0 = false;
    let var_1 = select(!(!vec2<bool>(select(false, false, true), false)), select(func_2().a.xw, vec2<bool>(true, func_2().a.x), vec2<bool>(any(vec4<bool>(true, true, true, true)), select(false, true, true))), vec2<bool>(false, true));
    var_0 = var_1.x;
    var_0 = func_2().a.x;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(arg_1.xyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zzw)), var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), 397f, abs(u_input.d.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(_wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 77398i), vec4<i32>(-8179i, -10399i, -2850i, u_input.a)), -20691i), vec2<i32>(-39109i, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -2363f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-718f - _wgslsmith_f_op_f32(f32(-1f) * -306f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-468f, 343f)), _wgslsmith_div_f32(1122f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_f_op_f32(trunc(2023f))));
}

