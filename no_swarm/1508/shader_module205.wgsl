struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<u32>;

var<private> global2: vec4<f32> = vec4<f32>(-1880f, 1213f, -1000f, -1023f);

var<private> global3: array<vec4<f32>, 5>;

var<private> global4: array<f32, 5>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_div_i32(u_input.a, u_input.a) >> (_wgslsmith_clamp_u32(1u, abs(global1.x), ~1u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a) >> (max(vec2<u32>(u_input.b.x, 7208u), vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(13040i, u_input.a), vec2<i32>(u_input.a, 80681i)) ^ firstTrailingBit(vec2<i32>(-16390i, u_input.a))), ~_wgslsmith_mod_i32(i32(-1i) * -33147i, -25960i)), vec3<u32>(global1.x, 0u, ~(~(~u_input.b.x))));
}

