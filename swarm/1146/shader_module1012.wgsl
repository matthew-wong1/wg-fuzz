struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(255f, -597f, -1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    var var_0 = !(_wgslsmith_f_op_f32(floor(710f)) <= _wgslsmith_f_op_f32(f32(-1f) * -662f));
    let var_1 = 17063u;
    var var_2 = _wgslsmith_f_op_f32(abs(-491f));
    return 154f;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0, u_input.d.x, u_input.d.x), vec4<u32>(var_0, 0u, 0u, 2933u)) << (firstTrailingBit(vec4<u32>(u_input.a.x, var_0, u_input.d.x, 48976u)) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(86925u, 19202u, 1u, 4294967295u)), ~vec4<u32>(2682u, 58062u, u_input.d.x, 17792u), vec4<u32>(var_0, 4294967295u, u_input.d.x, 1u)) >> ((~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 37429u, 8812u, var_0), vec4<u32>(u_input.a.x, u_input.d.x, var_0, 1u)) ^ vec4<u32>(min(15199u, var_0), u_input.a.x << (19696u % 32u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(11657u, 42260u, var_0)), ~60670u)) % vec4<u32>(32u)));
    global0 = array<vec3<f32>, 1>();
    let var_2 = Struct_3(vec3<u32>(~firstTrailingBit(abs(57775u)), reverseBits(var_0 >> (var_0 % 32u)), firstLeadingBit(min(var_1.b.x, 34497u) & 2160u)));
    global0 = array<vec3<f32>, 1>();
    return Struct_3(_wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(0u, var_0, var_2.a.x)), var_1.b.yyy, u_input.c >= 22538i) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_2.a.x, 0u), var_2.a, vec3<u32>(1u, var_2.a.x, u_input.d.x)) % vec3<u32>(32u)), ~var_1.b.yyz));
}

fn func_1() -> i32 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1434f, -1000f, 976f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f - -2090f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-621f, 2284f), vec2<f32>(156f, -486f)))))), vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(4294967295u, u_input.d.x, 12758u) << (u_input.d % vec3<u32>(32u))), ~u_input.b, ~vec2<u32>(1u, 4294967295u) << ((vec2<u32>(u_input.a.x, 0u) | u_input.a.yz) % vec2<u32>(32u)), !any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(680f, -581f, true)) + _wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(41994u, 4294967295u, 0u)), u_input.b, vec2<u32>(u_input.a.x, u_input.a.x), true))) - _wgslsmith_f_op_f32(func_2(Struct_3(u_input.a), u_input.b, vec2<u32>(u_input.a.x, u_input.d.x), true))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1442f + -1000f)))));
    let var_1 = 1000f;
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    return firstLeadingBit(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-131f, _wgslsmith_f_op_f32(f32(-1f) * -639f)), _wgslsmith_f_op_f32(-413f + _wgslsmith_f_op_f32(trunc(250f))))), -u_input.b, vec4<i32>(~reverseBits(_wgslsmith_div_i32(u_input.c, -10572i)), func_1(), u_input.b, u_input.b));
}

