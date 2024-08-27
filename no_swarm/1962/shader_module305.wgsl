struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(24267u, 0u, 4294967295u, 0u, 0u, 42053u, 1u, 54547u, 1u, 0u, 4294967295u, 50267u, 4294967295u, 53329u, 1u, 62755u, 4294967295u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(1768f * _wgslsmith_f_op_f32(f32(-1f) * -1090f));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(min(reverseBits(4294967295u) << (~u_input.e.x % 32u), 47395u), 18u)]), 40137u >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.b.x, 28893u), ~u_input.e, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), u_input.e) % 32u), arg_1);
    var var_2 = arg_0;
    var_2 = arg_0;
    global0 = array<u32, 18>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) * var_0)))))));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = arg_0;
    global0 = array<u32, 18>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(203f))))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1164f))) - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_3(var_0, 1u, -2147483647i)))))));
    var var_2 = u_input.d;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-1411f, 241f, true))))))));
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0, global0[_wgslsmith_index_u32(39482u, 18u)], u_input.a))), _wgslsmith_f_op_f32(select(-501f, _wgslsmith_f_op_f32(f32(-1f) * -1345f), true)), true)), -1676f, -1435f)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    return Struct_1(u_input.e, ~(~(vec3<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u, 57963u) >> (vec3<u32>(u_input.c, 51568u, 74549u) % vec3<u32>(32u)))) | ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36093u, 18u)], 18u)], u_input.e.x, u_input.e.x), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 4294967295u, 26422u), vec3<u32>(u_input.e.x, u_input.e.x, 0u) >> (vec3<u32>(0u, u_input.e.x, u_input.e.x) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<u32, 18>();
    let var_0 = Struct_1(vec2<u32>(90569u, _wgslsmith_mult_u32(abs(u_input.c), global0[_wgslsmith_index_u32(u_input.e.x, 18u)] | 4294967295u)) | vec2<u32>(firstLeadingBit(68295u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b.x, _wgslsmith_div_u32(60u, u_input.e.x)), 18u)]), arg_0.b);
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_0.b.xz, arg_0.b))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-966f, -1487f, -1000f))))))));
    return !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, false), func_4(vec3<f32>(-2088f, 362f, -1161f)).a.x < 1u));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<bool>(any(vec4<bool>(false, all(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x, -271f > _wgslsmith_f_op_f32(func_3(Struct_1(u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, 765u)), u_input.c, u_input.d.x)))), arg_0.x, false);
    let var_1 = var_0;
    let var_2 = 939f;
    let var_3 = ~(select(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], 0u, global0[_wgslsmith_index_u32(12095u, 18u)], u_input.c), vec4<u32>(0u, 12536u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56099u, 18u)], 18u)], 1u), !arg_0) << ((~vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.e.x, 18u)], 4294967295u) ^ (vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.e.x) << (vec4<u32>(global0[_wgslsmith_index_u32(56124u, 18u)], u_input.e.x, 1u, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u))) & min(max(~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 18u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44099u, 18u)], 18u)], 18u)], 20133u)), ~vec4<u32>(u_input.e.x, 4294967295u, 23503u, 1u)), ~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.e.x, 18u)], 28258u, 103843u)), vec4<u32>(12649u, u_input.e.x, global0[_wgslsmith_index_u32(u_input.e.x, 18u)], u_input.e.x), ~vec4<u32>(9017u, 0u, u_input.e.x, 46387u)));
    global0 = array<u32, 18>();
    return Struct_1(vec2<u32>(46665u, 1u), _wgslsmith_add_vec3_u32(var_3.zwz, var_3.wwx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec2<bool>(true, u_input.e.x > 4294967295u)));
    var var_1 = func_5(select(!(!vec4<bool>(true, false, var_0.x, var_0.x)), func_1(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(54541u, u_input.e.x), u_input.e), vec3<u32>(global0[_wgslsmith_index_u32(70247u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(79182u, 18u)]) << (vec3<u32>(15484u, 36606u, 4294967295u) % vec3<u32>(32u)))), !vec4<bool>(var_0.x, select(true, true, var_0.x), false, var_0.x)));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(var_1.a, vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.e.x)), ~u_input.e, true), vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.e.x, min(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]), ~4747u))), var_1.b);
    var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~var_2.a.x), ~vec2<u32>(global0[_wgslsmith_index_u32(abs(5120u), 18u)], var_1.a.x)), ~var_1.b >> (var_1.b % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(round(1472f)), _wgslsmith_f_op_f32(-2460f + _wgslsmith_f_op_f32(step(-265f, -957f)))), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_dot_vec4_u32(vec4<u32>(max(var_2.b.x, ~global0[_wgslsmith_index_u32(1u, 18u)]), var_1.b.x, 4294967295u, 0u), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~var_2.a, vec2<u32>(var_1.b.x, u_input.c) ^ vec2<u32>(4294967295u, u_input.e.x)), u_input.c, ~(~0u))));
}

