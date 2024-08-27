struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(4294967295u, 298f, vec2<f32>(-1358f, -412f)), Struct_4(5489u, 185f, vec2<f32>(1707f, -154f)), Struct_4(1u, -223f, vec2<f32>(246f, -182f)), Struct_4(35953u, -415f, vec2<f32>(-393f, 1066f)), Struct_4(4294967295u, -781f, vec2<f32>(-733f, -208f)), Struct_4(2196u, -1000f, vec2<f32>(-478f, 1886f)));

var<private> global1: array<bool, 7>;

var<private> global2: f32 = -1243f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yxz | (_wgslsmith_div_vec3_u32(u_input.a.ywz, ~u_input.a.zzx) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, 75637u), u_input.a), ~u_input.a.x, u_input.a.x)), _wgslsmith_clamp_u32(~min(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(105145u, 0u)), 1u), 1u, ~(~u_input.a.x)), countOneBits(vec3<i32>(-u_input.b ^ _wgslsmith_add_i32(-9769i, 1i), 73356i, -_wgslsmith_clamp_i32(u_input.b, 0i, u_input.b))));
}

