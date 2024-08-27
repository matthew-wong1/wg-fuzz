struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: array<u32, 21>;

var<private> global1: Struct_3 = Struct_3(false, 17098i, vec4<bool>(false, true, false, true));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global3: array<u32, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(select(vec3<bool>(false, true, global1.a), global1.c.zwy, !global1.c.xxz)) || global1.c.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-789f + 153f));
}

