struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

var<private> global2: Struct_3;

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, 2147483647i, -34401i, 54927i), vec4<i32>(1i, 15669i, 2147483647i, -26854i), vec4<i32>(-19786i, 13860i, 3794i, 2147483647i), vec4<i32>(i32(-2147483648), -16550i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-27030i, i32(-2147483648), 30518i, -28910i), vec4<i32>(0i, 1i, -18285i, -1i), vec4<i32>(2495i, 1i, 0i, -1i), vec4<i32>(2147483647i, -43115i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 6885i, -32974i, 2147483647i), vec4<i32>(-20457i, -1i, -12682i, i32(-2147483648)), vec4<i32>(2147483647i, -24945i, -1i, -27321i), vec4<i32>(0i, i32(-2147483648), -23002i, -1i), vec4<i32>(-22655i, 30696i, 1i, -2923i), vec4<i32>(i32(-2147483648), -43901i, 7883i, 2147483647i), vec4<i32>(-11415i, -1208i, -1i, -1i), vec4<i32>(1i, 2147483647i, 1i, 0i), vec4<i32>(0i, -1i, -1i, 0i), vec4<i32>(2147483647i, 1i, 6347i, 1i), vec4<i32>(1i, i32(-2147483648), 0i, 0i), vec4<i32>(i32(-2147483648), 1i, 0i, 1i), vec4<i32>(0i, -1i, 46596i, -21273i), vec4<i32>(0i, 4952i, 2498i, 29526i), vec4<i32>(2147483647i, i32(-2147483648), 46267i, -4026i), vec4<i32>(0i, -1i, -38671i, 8096i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -346i, 92523i, -2147483647i) << ((vec4<u32>(62182u, 43599u, 34932u, 1u) & vec4<u32>(u_input.a, 24757u, u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -5454i, -1i, 2147483647i), vec4<i32>(25052i, 0i, 40823i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-17646i, 0i, 29952i, -1i), global3[_wgslsmith_index_u32(73281u, 24u)]))), abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 22245i, 21496i), vec3<i32>(-2147483647i, 1i, 14138i))), 22769i), vec3<i32>(1i, 1i, 1i) & vec3<i32>(1i, _wgslsmith_mod_i32(2132i, 2147483647i), _wgslsmith_clamp_i32(min(0i, 1i), i32(-1i) * -9849i, ~0i)), 63427u);
}

