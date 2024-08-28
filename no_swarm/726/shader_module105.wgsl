struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(20494i, 2147483647i, 75177i, u_input.a), vec4<i32>(37746i, u_input.a, 25722i, 2147483647i))) | ~vec4<i32>(u_input.a, -15669i, 0i, -2147483647i), ~reverseBits(vec4<i32>(1i, u_input.a, 1i, u_input.a) >> (u_input.b % vec4<u32>(32u))));
    let var_1 = vec2<u32>(~countOneBits(reverseBits(u_input.b.x) >> (u_input.b.x % 32u)), _wgslsmith_dot_vec3_u32(select(u_input.b.wyy, vec3<u32>(1u, ~u_input.b.x, 30235u ^ u_input.b.x), select(true, true, false) != (10413i < u_input.a)), global0[_wgslsmith_index_u32(u_input.b.x >> (1u % 32u), 23u)]));
    var var_2 = 34713u ^ u_input.b.x;
    var_2 = 1u >> (max(57950u >> (u_input.b.x % 32u), reverseBits(firstTrailingBit(43617u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~max(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 2132u, var_1.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_1.x, 23u)], vec3<u32>(var_1.x, 1u, 37383u)), 23u)]));
}

