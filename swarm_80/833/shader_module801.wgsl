struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, false, vec3<i32>(-1i, -1i, 1i), vec4<u32>(12403u, 0u, 4294967295u, 0u), true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-vec4<i32>(30823i, 1211i, u_input.b.x, u_input.b.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -20521i, 2147483647i), vec3<i32>(global0.a, u_input.b.x, u_input.b.x)), 1i, ~(-2565i)), vec4<i32>(u_input.b.x << (17591u % 32u), _wgslsmith_clamp_i32(-29024i, global0.a, u_input.a.x), _wgslsmith_mod_i32(global0.c.x, global0.c.x), global0.c.x)));
}

