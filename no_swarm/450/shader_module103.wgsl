struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 25>;

var<private> global3: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(1u, 29165u), vec2<u32>(19699u, 4294967295u), vec2<u32>(4294967295u, 78190u), vec2<u32>(43143u, 35261u), vec2<u32>(60483u, 4294967295u), vec2<u32>(0u, 5104u), vec2<u32>(70342u, 55299u), vec2<u32>(4294967295u, 19182u), vec2<u32>(5919u, 0u), vec2<u32>(1u, 1u), vec2<u32>(17117u, 3877u), vec2<u32>(24599u, 22752u), vec2<u32>(1u, 42513u), vec2<u32>(19153u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(9939u, 36396u), vec2<u32>(4294967295u, 14074u), vec2<u32>(31454u, 78450u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    return -464f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(1160f + -836f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(807f * -114f) - 1552f)), vec4<u32>(u_input.d, ~(~u_input.d) | _wgslsmith_mod_u32(u_input.d, max(u_input.d, 19932u)), u_input.b, ~(~u_input.d)));
}

