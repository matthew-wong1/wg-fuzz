struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(838f, -1793f, 1116f, 1000f), vec4<f32>(-624f, -620f, -1632f, -102f), vec4<f32>(242f, -1000f, -280f, 1006f), vec4<f32>(489f, -718f, -292f, 1000f), vec4<f32>(-1274f, -1000f, 1321f, 2477f), vec4<f32>(875f, 1692f, -247f, -1271f), vec4<f32>(-570f, 693f, -1199f, 1036f), vec4<f32>(1793f, -1720f, 602f, 1639f), vec4<f32>(1597f, -1000f, -445f, 1000f), vec4<f32>(-1000f, 788f, -201f, 331f), vec4<f32>(277f, 1270f, -1303f, -265f), vec4<f32>(1592f, -160f, 1128f, -935f), vec4<f32>(-381f, -981f, -1283f, 234f), vec4<f32>(-954f, 571f, -516f, -1000f), vec4<f32>(1203f, -863f, 589f, -121f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    var var_0 = (reverseBits(_wgslsmith_mult_u32(abs(1u), u_input.d.x & 0u)) >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 13124u, u_input.c), vec3<u32>(u_input.a.x, 0u, u_input.c), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.c), vec3<u32>(4294967295u, 42525u, u_input.c)), ~vec3<u32>(u_input.c, 1u, u_input.d.x))) % 32u)) & abs(firstTrailingBit(69792u));
    global0 = array<vec4<f32>, 15>();
    var_0 = firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(109185u, u_input.c, 73960u, 18218u), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.c)), ~vec4<u32>(4294967295u, u_input.a.x, u_input.c, 1u), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), vec4<u32>(~0u, 116164u, select(32281u, 90556u, true), u_input.c)), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-215f, -161f) * _wgslsmith_f_op_f32(f32(-1f) * -882f)), u_input.d.x);
}

