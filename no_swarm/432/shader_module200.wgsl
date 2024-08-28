struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(2147483647i);

var<private> global1: array<vec4<bool>, 17>;

var<private> global2: Struct_3;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: array<bool, 32> = array<bool, 32>(true, true, false, false, true, true, false, false, true, true, false, false, true, false, true, false, true, true, false, false, true, true, true, false, true, false, true, false, true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.e.x, u_input.a.x, u_input.d.x, 26727u), vec3<i32>(global0.a, u_input.c.x, global0.a) >> (global2.c.a.yyw % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-881f + -1621f), 1468f, false)) - -2305f)), u_input.c.x);
}

