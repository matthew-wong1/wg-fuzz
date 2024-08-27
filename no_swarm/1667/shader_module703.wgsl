struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(159f), Struct_1(-1327f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = all(!arg_0.b);
    var var_1 = arg_0;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return -753f;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), -1000f);
    var var_1 = (abs(arg_2.a) & 1i) | max(~u_input.c | arg_2.d, 1i);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 1000f));
    return ~(~u_input.d.yw);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b & 4500u, 2u)];
    var_0 = Struct_1(_wgslsmith_f_op_f32(-139f * -1392f));
    var var_1 = Struct_2(-1i, select(!vec4<bool>(true, true, u_input.d.x > u_input.a, true), vec4<bool>(!(0u < u_input.b), _wgslsmith_f_op_f32(arg_0.x + arg_0.x) != _wgslsmith_f_op_f32(-132f * var_0.a), false | select(true, false, false), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), !vec4<bool>(false, false, true, all(vec2<bool>(true, true)))), _wgslsmith_dot_vec2_i32(~func_3(-65236i, Struct_2(u_input.d.x, vec4<bool>(true, true, false, true), 2147483647i, -25109i), Struct_2(u_input.a, vec4<bool>(false, false, false, true), -15620i, u_input.d.x)), u_input.d.yw << ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 3621u), vec2<u32>(0u, u_input.b)) | select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 1u), true)) % vec2<u32>(32u))), 25404i);
    let var_2 = _wgslsmith_f_op_f32(-var_0.a);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f - 1446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(-44472i, vec4<bool>(true, false, false, false), -879i, u_input.c))))))));
    let var_1 = Struct_2(46132i, !vec4<bool>(true, true, true, !(-1i > u_input.d.x)), 0i, 1i);
    let var_2 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1129f, -300f), vec2<f32>(1349f, 1361f)))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1512f) + _wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(145f, -105f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(788f + -181f))) + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(828f * -337f) - _wgslsmith_f_op_f32(ceil(258f))) * 3653f)));
}

