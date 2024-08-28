struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-1i, 3760i), vec2<i32>(0i, i32(-2147483648)));

var<private> global3: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global4: array<f32, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    let var_0 = 694f;
    let var_1 = ~vec2<u32>(_wgslsmith_sub_u32(19867u, 1u), _wgslsmith_mult_u32(firstLeadingBit(u_input.b), u_input.a.x >> (~u_input.a.x % 32u)));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1898f), vec2<f32>(-1650f, _wgslsmith_f_op_f32(-global1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) - _wgslsmith_f_op_f32(round(-434f))), _wgslsmith_f_op_f32(step(-1080f, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 29u)])), -463f));
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    return Struct_1(global1.a, -1404f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, 1347f)))), global1.d);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<u32> {
    global0 = array<f32, 17>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b << (_wgslsmith_mod_u32(arg_2.x, 22029u) % 32u), 1u), ~(~arg_2.x)) == 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(169f)));
    global4 = array<f32, 29>();
    return min(countOneBits(countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), u_input.a))), ~vec3<u32>(80067u, select(~31376u, arg_2.x ^ 0u, false), _wgslsmith_mult_u32(~u_input.b, arg_2.x)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    return _wgslsmith_div_vec3_u32(~abs(vec3<u32>(arg_3, arg_1.x, u_input.a.x)), arg_1) ^ ~((u_input.a & ~vec3<u32>(10458u, arg_1.x, 539u)) & func_3(func_2(), Struct_2(arg_2.a), _wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.xz)));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(378f, _wgslsmith_f_op_f32(abs(global1.c.x))), vec2<f32>(global4[_wgslsmith_index_u32(~(10208u ^ u_input.b), 29u)], func_2().c.x))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -202f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b, -520f, global0[_wgslsmith_index_u32(arg_1.x, 17u)], global1.d.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(811f, global4[_wgslsmith_index_u32(arg_1.x, 29u)], -2115f, global4[_wgslsmith_index_u32(29399u, 29u)]) + vec4<f32>(-501f, global4[_wgslsmith_index_u32(62514u, 29u)], -710f, 750f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1.d.x, global4[_wgslsmith_index_u32(1u, 29u)], global1.d.x) + vec4<f32>(global1.b, global0[_wgslsmith_index_u32(1u, 17u)], var_0.x, global4[_wgslsmith_index_u32(4294967295u, 29u)])), select(vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(global1.a, false, false, true), vec4<bool>(true, false, global1.a, false))))))));
    let var_3 = vec4<u32>(~(~_wgslsmith_div_u32(4294967295u, max(22131u, arg_2.x))), u_input.a.x, arg_2.x, 0u);
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.x), vec2<u32>(var_3.x, var_3.x)), 29u)] + -2962f), -2793f)), -1243f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 17u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(81932u, 29u)]) * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 29u)] + global4[_wgslsmith_index_u32(21743u, 29u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1770f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global0[_wgslsmith_index_u32(arg_1.x, 17u)], -375f, 1210f) + vec4<f32>(var_2.x, var_2.x, var_2.x, -897f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1630f, -1394f, var_0.x, global1.c.x)))))));
    return Struct_2(!all(select(!vec3<bool>(true, global1.a, global1.a), vec3<bool>(global1.a, global1.a, true), global1.a)));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = 1613f;
    let var_1 = func_2();
    var var_2 = firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(~countOneBits(arg_0.x), ~_wgslsmith_sub_u32(5348u, u_input.b)), ~u_input.b), 2u)]);
    var var_3 = false;
    var var_4 = 1u;
    return Struct_2(!all(global3[_wgslsmith_index_u32(~(~u_input.a.x), 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~u_input.a.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~u_input.b, 29u)]) - global0[_wgslsmith_index_u32(~(~min(0u, 36894u)), 17u)]), func_4(97541i, func_1(true, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b, 3430u, 46808u)), Struct_1(global1.a, -1383f, vec2<f32>(1534f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<f32>(global1.b, 1045f, -907f)), u_input.b << (55126u % 32u)) & u_input.a, min(~u_input.a.yy, u_input.a.zz)));
    var var_1 = func_2();
    var var_2 = false && !global1.a;
    global0 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-955f, -reverseBits(1i));
}

