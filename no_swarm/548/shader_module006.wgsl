struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(abs(var_0), var_0)), _wgslsmith_mult_u32(1u, 4294967295u));
    let var_2 = u_input.c.yy;
    let var_3 = ~(~39479u);
    var_1 = u_input.d.x;
    var_1 = 9451u;
    var_1 = 16024u;
    var_1 = ~var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -703f))), 1274f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -860f), 1550f))))), vec3<i32>(~u_input.b.x, ~(~(u_input.a & u_input.a)), u_input.b.x & -2147483647i), _wgslsmith_f_op_f32(180f * 188f));
}

