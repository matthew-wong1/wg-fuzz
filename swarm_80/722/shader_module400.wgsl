struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u) & ~vec4<u32>(u_input.e.x, u_input.b.x, 1u, 0u))), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-852f * 807f))))), vec3<i32>(u_input.d.x, u_input.a, -23980i));
}

