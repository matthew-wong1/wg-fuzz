struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: Struct_1 = Struct_1(-1181f, 57513i, vec2<i32>(1i, -12160i), 4294967295u, vec3<bool>(true, true, false));

var<private> global1: f32 = 1298f;

var<private> global2: f32;

var<private> global3: f32 = 701f;

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, -56878i, -2157i);

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39083i;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

