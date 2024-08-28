struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-663f, 1472f);

var<private> global1: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(4294967295u, 47365u, 1u, 19700u), vec4<u32>(4294967295u, 64157u, 33907u, 0u), vec4<u32>(24989u, 14655u, 26911u, 15091u), vec4<u32>(11426u, 364u, 10017u, 13559u), vec4<u32>(4294967295u, 45855u, 4294967295u, 4294967295u), vec4<u32>(37157u, 24036u, 4294967295u, 9727u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec4<u32>, 6>();
    let var_0 = ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(15503u, 56734u, u_input.a), vec3<u32>(u_input.a, 1u, 4294967295u))), vec3<u32>(u_input.a, u_input.a, u_input.a)));
    return StorageBuffer(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

