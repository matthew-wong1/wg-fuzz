struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(~global1.yw, ~(u_input.b.xx ^ global1.xw), any(vec3<bool>(true, false, false)))), ~vec2<u32>(0u, global1.x >> (global0.a.c % 32u)), ~vec4<u32>(~global1.x, 1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 0u), 359u), reverseBits(~global0.a.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.b.x)))));
}

