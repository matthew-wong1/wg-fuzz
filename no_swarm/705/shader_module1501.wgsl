struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: i32 = -1i;

var<private> global2: vec4<f32>;

var<private> global3: u32;

var<private> global4: array<Struct_3, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * -1412f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global0.a)))), global0.b, true);
    var var_0 = Struct_4(u_input.c.ywz);
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - 191f))), u_input.d.x, true);
    var var_1 = false;
    var var_2 = false;
    var var_3 = vec2<bool>(true, false);
    global4 = array<Struct_3, 5>();
    global4 = array<Struct_3, 5>();
    let var_4 = countOneBits(u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, 21346u);
}

