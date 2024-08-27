struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~countOneBits(max(vec4<u32>(1u, u_input.b, 20363u, 24111u), vec4<u32>(0u, u_input.b, 35172u, 1u)))), _wgslsmith_div_f32(1383f, 1000f));
    let var_1 = ~_wgslsmith_mod_u32(~(~(~u_input.b)), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)) ^ -firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), (vec2<i32>(u_input.a, u_input.a) >> ((var_0.a.xz << (var_0.a.zz % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<i32>(~u_input.a, u_input.a), true), ~(~_wgslsmith_dot_vec3_u32(min(var_0.a.wwy, vec3<u32>(35014u, var_0.a.x, 4294967295u)), _wgslsmith_sub_vec3_u32(var_0.a.ywx, vec3<u32>(51087u, u_input.b, 1u)))));
}

