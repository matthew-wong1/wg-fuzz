struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -58917i;

var<private> global1: array<vec2<i32>, 2>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    global2 = !(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, false), any(vec3<bool>(true, false, true)))) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-966f, 2126f, true))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-184f)))));
    return StorageBuffer(vec4<u32>(~(~(~u_input.c.x)), ~arg_0.x, ~arg_0.x, 55399u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(269f)))))), u_input.c.x, (u_input.b.x ^ u_input.b.x) ^ select(u_input.b.x, 4566i, false));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(~countOneBits(_wgslsmith_mult_u32(u_input.a.x, 0u)), 24775u, abs(0u), 33746u));
}

