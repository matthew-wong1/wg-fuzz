struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -193f;

var<private> global1: u32;

var<private> global2: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~u_input.c), ~(~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, u_input.c.x, 0u, 12970u), vec4<u32>(u_input.c.x, u_input.a.x, 1u, 4294967295u))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2418f, _wgslsmith_f_op_f32(f32(-1f) * -897f))), _wgslsmith_f_op_f32(min(297f, _wgslsmith_f_op_f32(f32(-1f) * -1027f))), !any(vec2<bool>(false, true)))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2081f + _wgslsmith_div_f32(-740f, -271f))), -445f)));
    let var_1 = Struct_4(vec3<u32>(u_input.a.x >> (var_0.x % 32u), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, var_0.x), u_input.c.ww), vec2<u32>(u_input.c.x, 16562u)), _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(var_0.x, countOneBits(40709u)))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = abs(~countOneBits(firstLeadingBit(vec4<u32>(0u, 1u, 1u, var_0.x))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1573f + 469f))), _wgslsmith_f_op_f32(-1469f + _wgslsmith_f_op_f32(min(146f, _wgslsmith_f_op_f32(floor(-1000f))))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 386f)), _wgslsmith_f_op_f32(-143f - _wgslsmith_f_op_f32(max(-272f, -524f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1333f) - _wgslsmith_f_op_f32(-102f - 1135f))), !var_1.b.x || var_1.b.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-648f, -1166f))))), -1137f);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_i32(99869i, _wgslsmith_sub_i32(~(~u_input.b), -u_input.b)));
    global1 = ~u_input.c.x;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 19670u)), ~vec4<u32>(0u, 16343u, u_input.c.x, ~u_input.a.x)), _wgslsmith_clamp_u32(abs(_wgslsmith_mod_u32(1u, reverseBits(8806u))), _wgslsmith_mod_u32(u_input.c.x, max(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.c.x & 98442u)), 4294967295u));
    let var_1 = true;
    return !(!var_1);
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = -1437f;
    global0 = 1f;
    var var_0 = Struct_4(~vec3<u32>(u_input.c.x, arg_0, _wgslsmith_sub_u32(arg_0, 17458u)), !vec3<bool>(select(true, true, func_2(vec4<f32>(-2390f, -1000f, 350f, 835f), Struct_3(vec2<f32>(-667f, -829f)))), true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1990f, -684f))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -1000f)))))))))));
    global1 = 38208u;
    return StorageBuffer(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-359f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -1016f)))), 1118f, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 7698i, 1i, -37811i), vec4<i32>(6329i, 11034i, u_input.b, u_input.b)), 21447i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -11060i, u_input.b), vec3<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -71256i), vec2<i32>(u_input.b, u_input.b)), u_input.b, all(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))), abs(-1i), select(0i, _wgslsmith_sub_i32(u_input.b, u_input.b), var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 112453u;
    var var_1 = false;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(592f * 1833f), _wgslsmith_f_op_f32(531f * -1886f)) + _wgslsmith_f_op_f32(921f + _wgslsmith_div_f32(-192f, -560f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1973f))));
    let x = u_input.a;
    s_output = func_1(0u & ~u_input.a.x);
}

