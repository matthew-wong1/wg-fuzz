struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-76258i, i32(-2147483648), -1i, -1i), false);

var<private> global1: array<Struct_2, 22>;

var<private> global2: Struct_3;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i >> (1u % 32u)), _wgslsmith_f_op_f32(-338f + 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1587f + -282f), -371f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f * 952f))))), 0u);
}

