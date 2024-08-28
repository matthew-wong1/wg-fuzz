struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 11>;

var<private> global2: array<bool, 23>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d;
    var var_0 = ~u_input.e;
    var_0 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.a.x, var_0.x >> (22060u % 32u)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 64696u, var_0.x, u_input.e.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 16577u, u_input.b, 37818u), vec4<u32>(62872u, 9469u, 0u, var_0.x))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 36963u, 69658u, u_input.e.x), u_input.e) ^ (select(vec4<u32>(1u, var_0.x, 4294967295u, 9420u), vec4<u32>(31349u, u_input.e.x, var_0.x, 9510u), vec4<bool>(false, true, false, true)) | u_input.e)));
    global0 = abs(_wgslsmith_div_i32(-u_input.c, u_input.d) & ~2147483647i) ^ (firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -16948i, u_input.d, -10758i), vec4<i32>(2147483647i, u_input.c, 0i, 2147483647i)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(30438u, 1u)) % 32u)) | ~_wgslsmith_mod_i32(u_input.d, u_input.c));
    global0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~var_0.x, _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.x, 12105u), var_0.zzy), u_input.c, -49290i);
}

