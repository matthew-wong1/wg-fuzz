struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(true, true);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -170f)));
    var var_2 = u_input.a;
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-140f - -1036f);
    return _wgslsmith_div_i32(-_wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.a, -2147483647i), 51711i), ~37292i);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(all(vec4<bool>(false, true, false, true)), false, true, true), vec4<bool>(true, !all(vec2<bool>(true, false)), true, true));
    var var_1 = Struct_1(true, any(vec2<bool>(var_0.x, var_0.x)));
    var_0 = !vec4<bool>(true, !select(true, select(false, true, true), false), !(!var_1.b == (var_0.x == false)), !var_0.x);
    let var_2 = arg_0;
    let var_3 = Struct_1(!(!var_0.x), any(vec3<bool>((arg_0 & arg_0) == var_2, false, false)));
    return Struct_1(!var_0.x, true);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_3(1u, vec3<i32>(2147483647i, ~func_2(Struct_1(false, true)), _wgslsmith_div_i32(43436i, ~1i)));
    global0 = array<i32, 1>();
    let var_1 = vec2<i32>(global0[_wgslsmith_index_u32(1u, 1u)], -(i32(-1i) * -36371i));
    return StorageBuffer(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1665f, -1570f, -1338f, -503f), vec4<f32>(510f, 154f, -807f, -1000f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(107f, -1043f, -527f, -257f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-573f)), _wgslsmith_f_op_f32(f32(-1f) * -336f), -290f, _wgslsmith_f_op_f32(sign(-1073f))), vec4<bool>(var_0.a, true, any(vec2<bool>(var_0.a, true)), true)))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

