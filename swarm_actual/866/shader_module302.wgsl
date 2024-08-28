struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, -2393i, vec4<u32>(4294967295u, 1u, 15486u, 16894u), 4294967295u);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(2163f), Struct_3(-424f), Struct_3(251f), Struct_3(-1343f), Struct_3(-1114f), Struct_3(-461f), Struct_3(-1701f), Struct_3(-598f), Struct_3(840f), Struct_3(1006f), Struct_3(-491f), Struct_3(-395f), Struct_3(161f), Struct_3(-1376f), Struct_3(-1297f), Struct_3(-1198f), Struct_3(711f), Struct_3(1301f), Struct_3(-1100f), Struct_3(-318f), Struct_3(124f), Struct_3(196f), Struct_3(-1000f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-737f, _wgslsmith_f_op_f32(f32(-1f) * -1067f), global0.a)) - _wgslsmith_f_op_f32(max(1587f, _wgslsmith_f_op_f32(f32(-1f) * -2024f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.b, u_input.c.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -997f, var_0.a) - vec3<f32>(var_0.a, var_0.a, -798f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-354f, var_0.a, -2071f) + vec3<f32>(-443f, var_0.a, 893f))))))), _wgslsmith_f_op_f32(1203f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)));
}

