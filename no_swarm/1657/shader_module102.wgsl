struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d.x, -u_input.e.x, _wgslsmith_div_i32(u_input.e.x, -1i), -66898i), u_input.d.wzy | _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zx, u_input.e.xy), reverseBits(-2147483647i), abs(0i)), ~(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), 1060f, _wgslsmith_div_i32(2147483647i, -_wgslsmith_mod_i32(reverseBits(u_input.d.x), u_input.e.x | u_input.e.x)));
}

