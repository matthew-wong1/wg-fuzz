struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -3294i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    let var_1 = abs(u_input.b) <= u_input.a;
    global0 = ~(~abs(vec3<i32>(2400i, global0.x, global0.x) ^ (vec3<i32>(-2147483647i, -1i, global0.x) | vec3<i32>(global0.x, -2147483647i, -20666i))));
    var var_2 = global0.zz;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-754f, var_0, false))))))) + _wgslsmith_f_op_f32(262f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -1000f), _wgslsmith_f_op_f32(min(var_0, -439f))), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b, 3241u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 78608u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(44583u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 46343u, u_input.a, 1u), vec4<bool>(var_1, var_1, false, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.b), vec4<u32>(47682u, 32444u, u_input.b, u_input.a))), ~vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.b) | vec4<u32>(u_input.b, 0u, u_input.a, u_input.b))), -690f, u_input.b, vec3<f32>(-1099f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 1200f)) - _wgslsmith_div_f32(var_3, var_3)), var_3));
}

