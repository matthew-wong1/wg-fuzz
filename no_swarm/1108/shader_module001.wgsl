struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(33476i, 1i, 1i, 7934i), vec4<i32>(23533i, i32(-2147483648), 1i, -2819i), vec4<i32>(-1i, 1i, 0i, -7439i), vec4<i32>(26943i, -1983i, 10345i, 32518i), vec4<i32>(2147483647i, 35910i, -1i, -19556i), vec4<i32>(-1i, 0i, 2147483647i, 57213i), vec4<i32>(1i, 31159i, 1i, 47753i), vec4<i32>(-1i, i32(-2147483648), 11269i, 0i), vec4<i32>(2147483647i, -1i, -12402i, i32(-2147483648)), vec4<i32>(1i, 1i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, -89976i, 10130i), vec4<i32>(1i, -8154i, -24697i, 1i), vec4<i32>(-26730i, 1i, -43399i, 0i), vec4<i32>(-296i, 2147483647i, -1i, -11530i), vec4<i32>(1i, -322i, -1630i, i32(-2147483648)), vec4<i32>(13280i, i32(-2147483648), 33884i, 31567i), vec4<i32>(-6035i, 8963i, i32(-2147483648), 1i), vec4<i32>(-54846i, -14641i, 1i, 15294i), vec4<i32>(-1i, 23177i, 25047i, 0i), vec4<i32>(1i, 27058i, i32(-2147483648), 6104i), vec4<i32>(-1i, 11829i, 12083i, -1i), vec4<i32>(4184i, i32(-2147483648), 2147483647i, -1i));

var<private> global1: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> i32 {
    global1 = false;
    return -firstTrailingBit(-(i32(-1i) * -46749i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, -122f, 507f) * vec3<f32>(-428f, 360f, -352f)), vec3<f32>(-1162f, 139f, 1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, 1045f, 580f)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-781f - -338f))), -690f, -666f)));
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    var var_1 = ~(~u_input.a);
    var var_2 = Struct_1(true, 49389u, ~(abs(0i) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 69031u), vec2<u32>(u_input.a, 41661u)) % 32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), abs(vec2<u32>(u_input.a, 0u)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), 43150u, ~u_input.a | 26045u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_2.d.x, 46395u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b, 1427u, 1u), vec3<u32>(var_2.b, u_input.a, u_input.a)))), ~global0[_wgslsmith_index_u32(24416u, 22u)] >> (~(~var_2.d) % vec4<u32>(32u)), -_wgslsmith_mod_i32(var_2.c >> (abs(u_input.a) % 32u), func_1()));
}

