struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-20232i, -659i, 2147483647i, 15249i, i32(-2147483648), -455i, -160i, 49242i, i32(-2147483648), 62686i, -24924i, 0i, -23334i);

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(2313i, -5835i, 15995i), vec3<i32>(-27443i, 0i, -10818i), vec3<i32>(27094i, -1i, 13309i), vec3<i32>(i32(-2147483648), -1i, -16502i), vec3<i32>(i32(-2147483648), -47786i, 12510i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(1i, -6537i, -6297i), vec3<i32>(-8737i, 2147483647i, 20968i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(-1i, 55881i, 44149i));

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(1u), Struct_2(46044u), Struct_2(11518u), Struct_2(1u), Struct_2(4294967295u), Struct_2(29197u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), 1f, vec2<i32>(-1i, 2147483647i));
}

