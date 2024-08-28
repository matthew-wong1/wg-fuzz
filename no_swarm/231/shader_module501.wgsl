struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-1000f, -1489f, 1000f));

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = arg_0.c;
    let var_1 = Struct_5(arg_1.b, Struct_4(false, arg_1, 1985f, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(204f, -141f) * _wgslsmith_f_op_f32(471f - -515f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c, -945f, arg_0.c, 117f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c, 1133f, 176f, -1421f)))), 27816u, arg_1.a.x ^ ~arg_1.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(11503u, 1u)])))));
    global3 = array<vec2<u32>, 6>();
    var var_2 = ~(~(u_input.c.x << (0u % 32u)) & ~select(arg_0.d, u_input.c.x, var_1.b.b.b)) | ~u_input.c.x;
    global2 = _wgslsmith_f_op_f32(trunc(var_0));
    return ~min(arg_1.a, firstTrailingBit(vec2<u32>(4294967295u, max(u_input.a.x, arg_0.a.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(min(arg_0.x, -335f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1428f));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_1), ~func_3(Struct_1(vec2<u32>(u_input.c.x, 19349u), false, _wgslsmith_f_op_f32(-arg_0.x), 43340u), Struct_1(~vec2<u32>(41237u, 0u), true, _wgslsmith_f_op_f32(f32(-1f) * -104f), firstTrailingBit(u_input.a.x))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1580f, -1430f))));
    global0 = array<vec3<u32>, 20>();
    var var_2 = ~_wgslsmith_add_vec3_u32(select(global0[_wgslsmith_index_u32(~arg_1, 20u)] >> (u_input.c.yxy % vec3<u32>(32u)), global0[_wgslsmith_index_u32(arg_1, 20u)], all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))), u_input.a.yxy);
    return Struct_2(select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), 0i <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 20624i), vec2<i32>(-2147483647i, 2147483647i))), select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), true), Struct_1(vec2<u32>(var_2.x, func_3(Struct_1(vec2<u32>(var_2.x, 4294967295u), true, arg_0.x, 0u), Struct_1(global3[_wgslsmith_index_u32(1u, 6u)], true, -1177f, var_2.x)).x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), -1269f, min(1u, var_1.x) ^ u_input.c.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_5 {
    var var_0 = ~u_input.a;
    return Struct_5(true, Struct_4(true, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(43230u, 1u)])), 4294967295u).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -1187f))), Struct_3(_wgslsmith_div_f32(arg_0, -1524f), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-575f + arg_0), _wgslsmith_f_op_f32(1211f * 1536f), _wgslsmith_f_op_f32(177f + 311f)), _wgslsmith_div_u32(_wgslsmith_add_u32(19206u, arg_1.b.d), var_0.x), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.b.c, arg_0) - global1[_wgslsmith_index_u32(4294967295u, 1u)]))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-407f, _wgslsmith_f_op_f32(select(arg_1.x, arg_0.b.x, arg_2)))))), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f + -1916f) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * -325f), _wgslsmith_f_op_f32(abs(arg_0.b.x))), ~u_input.a.x));
    var var_1 = arg_0;
    global0 = array<vec3<u32>, 20>();
    var var_2 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.b.b.c)))), func_2(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], ~(~(arg_0.c & var_1.d))));
    let var_3 = ~reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.d, var_1.d, 4294967295u), vec3<u32>(var_1.d, 36579u, u_input.c.x)));
    return _wgslsmith_add_u32(~var_3.x, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global3 = array<vec2<u32>, 6>();
    global3 = array<vec2<u32>, 6>();
    var var_1 = ~_wgslsmith_mult_u32(~u_input.a.x, 20756u);
    global3 = array<vec2<u32>, 6>();
    let var_2 = u_input.c.x;
    global0 = array<vec3<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2 >> (~max(1u, var_0) % 32u), ~(~(~u_input.a.x))), -vec3<i32>(2147483647i, u_input.b, -(~u_input.b)), -1371f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~func_1(Struct_3(-521f, vec4<f32>(-680f, -1000f, -1884f, 971f), var_2, 22152u, global1[_wgslsmith_index_u32(1u, 1u)]), vec2<f32>(-1014f, 312f), false), 1u)] + vec3<f32>(_wgslsmith_f_op_f32(max(-104f, -106f)), -1322f, _wgslsmith_f_op_f32(-339f + -493f)))));
}

