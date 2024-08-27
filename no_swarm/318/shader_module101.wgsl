struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(1u, 30895u, 0u, 45224u, 0u, 0u, 8495u, 41065u, 11861u, 50820u, 81298u, 0u, 34927u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    var var_0 = vec2<u32>(global0[_wgslsmith_index_u32(32278u, 14u)], _wgslsmith_mod_u32(abs(4294967295u), ~1u));
    let var_1 = -min(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -u_input.a.x));
    var var_2 = ~vec3<i32>(~firstTrailingBit(-45180i ^ u_input.a.x), var_1, u_input.a.x);
    global0 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2.x, ~var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-24181i, u_input.a.x, var_1), abs(vec3<i32>(-30903i, -4091i, u_input.a.x))) ^ ~(-2147483647i)), 1u, 4294967295u >> (var_0.x % 32u), vec4<i32>(countOneBits(abs(1i)), var_2.x, abs(var_1) & (reverseBits(u_input.a.x) & 29351i), _wgslsmith_div_i32(~1i, -76748i)));
}

