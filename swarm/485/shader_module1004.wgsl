struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(49482u, vec4<u32>(5963u, 0u, 4294967295u, 1u), vec3<bool>(true, true, false), vec3<f32>(433f, -323f, -620f), vec2<f32>(401f, -920f));

var<private> global2: array<vec2<f32>, 24>;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<vec4<bool>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(965f * 1f), -500f)), vec4<i32>(0i, 2147483647i, -2147483647i, countOneBits(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -317f), global1.e.x, !global1.c.x)), _wgslsmith_f_op_f32(sign(-630f)), global1.c.x))));
}

