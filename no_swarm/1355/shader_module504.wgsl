struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(24055u, 1i), Struct_3(51545u, 0i), Struct_3(51677u, i32(-2147483648)), Struct_3(4294967295u, 4006i), Struct_3(4294967295u, -39565i), Struct_3(4294967295u, -52504i), Struct_3(4294967295u, 0i), Struct_3(1794u, 0i), Struct_3(1u, -24712i), Struct_3(10186u, i32(-2147483648)), Struct_3(75084u, 1i), Struct_3(1u, 2147483647i), Struct_3(4294967295u, 0i), Struct_3(1u, 22597i), Struct_3(29909u, 2147483647i), Struct_3(0u, 2147483647i), Struct_3(1u, 0i), Struct_3(0u, -7583i), Struct_3(22843u, 13390i), Struct_3(1u, 2147483647i), Struct_3(0u, -1i), Struct_3(1u, 64791i), Struct_3(40999u, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    return StorageBuffer(firstTrailingBit(~firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x, Struct_1(u_input.a.x));
    var var_1 = _wgslsmith_div_f32(-207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) - 1180f)));
    let var_2 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    global0 = array<Struct_3, 23>();
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-687f, -3173f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(685f, 424f))))))));
    var_1 = -1966f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = func_1();
}

