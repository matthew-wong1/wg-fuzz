struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(137f, -109f));

var<private> global1: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(floor(411f));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f * -338f) + _wgslsmith_f_op_f32(global0.a.x - global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))));
    let var_1 = ~u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0))))));
    global0 = var_2;
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>((4294967295u ^ var_1) >> (_wgslsmith_add_u32(20727u, 14203u) % 32u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(38830u, 78989u, 35877u), vec3<u32>(var_1, u_input.a, var_1)))), vec2<u32>(4294967295u, 1u)) | var_1;
    return Struct_1(var_2.a);
}

fn func_1() -> Struct_1 {
    global1 = ~u_input.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_1(vec2<f32>(241f, global0.a.x));
    var var_1 = Struct_1(global0.a);
    var var_2 = Struct_1(var_0.a);
    var var_3 = Struct_1(var_0.a);
    var var_4 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4018u), vec2<u32>(u_input.a, u_input.a)), 0u), ~(~u_input.a)), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 18970u), ~vec2<u32>(u_input.a, u_input.a)));
    var_2 = func_1();
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a));
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(17408i));
}

