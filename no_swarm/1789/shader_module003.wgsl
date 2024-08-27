struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4;

var<private> global2: array<vec3<bool>, 9>;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-388f - _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(-1143f - -1782f))), _wgslsmith_f_op_f32(f32(-1f) * -927f)), ~global3.a.a.x << (u_input.b.x % 32u), global1.a.a.a.c, 0i & -global1.a.a.a.b);
}

