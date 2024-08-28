struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> i32 {
    var var_0 = !(!((arg_0 != -arg_0) && !all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))));
    let var_1 = u_input.a.zx;
    let var_2 = -2147483647i;
    var var_3 = ~_wgslsmith_div_i32(var_2, _wgslsmith_div_i32(var_2, -1i));
    var_0 = arg_1.x;
    return 8275i;
}

fn func_2(arg_0: bool) -> u32 {
    return reverseBits(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = -31922i;
    var_1 = ~(-((-2147483647i | func_1(37030i, vec2<bool>(false, true), vec3<f32>(495f, 1332f, 1151f))) >> (_wgslsmith_div_u32(u_input.b, func_2(true)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-465f, 494f), _wgslsmith_f_op_f32(select(2271f, 1857f, true)))) - _wgslsmith_f_op_f32(trunc(-406f)))));
}

