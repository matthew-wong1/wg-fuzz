struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: Struct_1 = Struct_1(-446f);

var<private> global3: array<vec4<f32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.a.e;
    global3 = array<vec4<f32>, 14>();
    global1 = array<vec4<bool>, 3>();
    let var_0 = global0.a.c;
    var var_1 = u_input.b;
    global1 = array<vec4<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(global0.a.a, -u_input.d, any(vec2<bool>(true, false))) | ~(-74065i), ~(~(-vec2<i32>(global0.a.a, global0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global2.a) - _wgslsmith_f_op_f32(-var_0.a)) + 3361f)), u_input.d);
}

