struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: u32 = 25230u;

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.c.x;
    global0 = array<i32, 7>();
    let var_0 = 1i;
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * -361f)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f - 435f)))) * _wgslsmith_div_f32(832f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(363f)), _wgslsmith_f_op_f32(186f + 498f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~(1u >> (u_input.b % 32u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u) & vec2<u32>(39033u, u_input.b), (u_input.a >> (u_input.a % vec2<u32>(32u))) ^ (u_input.a ^ vec2<u32>(u_input.c.x, 25537u))), vec3<u32>(1u >> (max(_wgslsmith_mod_u32(u_input.c.x, 7991u), u_input.a.x ^ u_input.b) % 32u), _wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(u_input.a.x, u_input.c.x >> (0u % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -155f));
}

