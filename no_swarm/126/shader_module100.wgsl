struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-328f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(-434f - 747f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(766f + -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(841f)))), _wgslsmith_f_op_f32(-781f - -680f)))), ~1u, vec2<u32>(1u, ~u_input.c.x >> ((8409u | _wgslsmith_add_u32(u_input.c.x, 4294967295u)) % 32u)));
}

