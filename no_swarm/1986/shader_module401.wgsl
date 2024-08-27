struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 597u;
    global0 = ~76822u;
    global0 = 27394u | _wgslsmith_div_u32(39410u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 42558u), vec3<u32>(1u, 6650u, 4294967295u)), 4294967295u), vec3<u32>(4652u, 1u, 105693u)));
    let var_0 = ~(-5152i);
    global0 = ~1u;
    let var_1 = u_input.a.yxw >> (_wgslsmith_mod_vec3_u32(select(~(~vec3<u32>(66526u, 16529u, 1u)), vec3<u32>(1u, 1u, 1u), select(true, true, any(vec2<bool>(false, false)))), ~(~abs(vec3<u32>(71522u, 4294967295u, 2422u)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-12768i, vec3<i32>(1i, -1i, -max(var_0, var_1.x)));
}

