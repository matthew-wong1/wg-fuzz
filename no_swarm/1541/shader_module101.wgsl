struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec3<f32>(605f, -944f, -364f), vec4<i32>(84632i, -28312i, -15282i, -1i), vec2<u32>(4294967295u, 28242u), false, -20310i), Struct_1(vec3<f32>(1657f, 2858f, -1485f), vec4<i32>(-28549i, 1i, 0i, 1i), vec2<u32>(1u, 95062u), true, 14929i), 125f, 1000f), Struct_2(Struct_1(vec3<f32>(-1483f, 1768f, -339f), vec4<i32>(-1i, -1i, 27370i, 1i), vec2<u32>(426u, 50606u), true, 1i), Struct_1(vec3<f32>(1217f, -685f, -152f), vec4<i32>(12452i, 25819i, -1i, 8951i), vec2<u32>(68413u, 4294967295u), true, 0i), -586f, 1676f), Struct_2(Struct_1(vec3<f32>(-1960f, 293f, -927f), vec4<i32>(i32(-2147483648), -47546i, -13359i, 1i), vec2<u32>(1u, 1u), true, 0i), Struct_1(vec3<f32>(133f, -162f, -2120f), vec4<i32>(-26521i, -26810i, -1i, 0i), vec2<u32>(4294967295u, 0u), false, 0i), -205f, -1041f));

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.c, u_input.c, 1u), vec4<u32>(56159u, u_input.a, u_input.c, 0u))) & abs(vec4<u32>(~0u, 66843u, _wgslsmith_add_u32(0u, 4294967295u), 0u ^ u_input.a)), 1u, ~vec4<i32>(i32(-1i) * -u_input.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 13803i, -2463i, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, -22469i)), _wgslsmith_div_i32(1i, select(7769i, u_input.b, true)), _wgslsmith_mult_i32(40880i, -36566i) & firstLeadingBit(u_input.b)), vec4<f32>(-1308f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1713f)), _wgslsmith_f_op_f32(sign(528f))) * -174f), 1f));
}

