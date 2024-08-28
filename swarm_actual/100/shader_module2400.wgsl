struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = arg_0.b.d.yyx;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    return _wgslsmith_f_op_f32(-arg_0.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-335f - 417f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1165f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-666f, -1529f), _wgslsmith_f_op_f32(-1499f * 705f)))) + _wgslsmith_f_op_f32(f32(-1f) * -851f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<f32>(var_0, var_0, -892f), var_0, u_input.c, vec4<u32>(4294967295u, 32948u, 63263u, 28024u)), Struct_1(vec3<f32>(var_0, var_0, -973f), var_0, u_input.b.zww, vec4<u32>(1u, 4294967295u, 1u, 121536u))), u_input.b.zyy, vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(f32(-1f) * -112f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<f32>(var_0, 109f, var_0), -157f, vec3<i32>(u_input.c.x, u_input.d.x, u_input.b.x), vec4<u32>(41702u, 13947u, 1u, 445u)), Struct_1(vec3<f32>(var_0, -998f, 251f), var_0, u_input.c, vec4<u32>(15385u, 1u, 82004u, 13602u))), u_input.c, vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-3094f + var_0), var_0))))), 4294967295u);
}

