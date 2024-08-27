struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(78123u, true, vec2<bool>(false, true), -21774i), Struct_1(0u, true, vec2<bool>(false, true), 0i), Struct_1(107694u, true, vec2<bool>(true, false), i32(-2147483648)), Struct_1(57070u, false, vec2<bool>(false, true), 0i), Struct_1(1u, true, vec2<bool>(true, false), 1i), Struct_1(123451u, false, vec2<bool>(true, false), -14725i), Struct_1(4294967295u, true, vec2<bool>(false, true), 2147483647i), Struct_1(9696u, true, vec2<bool>(false, false), 2147483647i));

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(4294967295u, vec2<f32>(929f, -100f), false), Struct_3(82200u, vec2<f32>(1284f, 657f), false), Struct_3(20585u, vec2<f32>(-647f, 184f), false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x))) << (~_wgslsmith_mod_vec4_u32(~u_input.b, u_input.b) % vec4<u32>(32u));
    global0 = array<vec2<bool>, 6>();
    global2 = array<Struct_3, 3>();
    global0 = array<vec2<bool>, 6>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(612f)), _wgslsmith_f_op_f32(f32(-1f) * -1648f)) + _wgslsmith_f_op_f32(1813f * 806f))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(trunc(-1000f)), ~(~_wgslsmith_add_i32(~u_input.a.x, min(-14073i, -6702i))));
}

