struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<vec3<bool>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-877f)) + -1000f);
    global1 = array<vec3<bool>, 17>();
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(arg_2.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), 1f, _wgslsmith_f_op_f32(min(-1480f, arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3839f - arg_0) * arg_0))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_2.a.x, var_0.a.x), arg_2.a.xzx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.yxy)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2344f * 959f)))), -758f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(exp2(arg_2.a.x))), 485f))));
    global1 = array<vec3<bool>, 17>();
    global1 = array<vec3<bool>, 17>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_2 {
    global1 = array<vec3<bool>, 17>();
    let var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-547f, _wgslsmith_f_op_f32(round(288f))))), countOneBits(u_input.e), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x - -903f), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_add_u32(arg_0.e.x, 0u >> ((arg_0.e.x >> (4294967295u % 32u)) % 32u))));
    let var_1 = ~1u;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, var_0, 1188f, -1124f) * arg_2)))) * arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_2.x, u_input.e, u_input.e)), _wgslsmith_f_op_f32(ceil(-577f)), _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(-arg_2.x))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), arg_2)));
    return arg_0;
}

fn func_1() -> i32 {
    let var_0 = firstLeadingBit(firstTrailingBit(u_input.e.yxw));
    var var_1 = !vec4<bool>(all(select(select(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(0u, 17u)], vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(u_input.e.x << (var_0.x % 32u), 17u)], true)), false, true, !all(vec2<bool>(true, true)));
    let var_2 = func_4(Struct_2(u_input.a.x, 0i, u_input.b, false, ~vec3<u32>(u_input.c.x << (0u % 32u), var_0.x << (var_0.x % 32u), u_input.b)), !any(!vec4<bool>(false, var_1.x, false, var_1.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(841f + 228f), _wgslsmith_f_op_f32(func_2(-1098f, vec4<u32>(var_0.x, 4294967295u, 0u, u_input.e.x), u_input.e)), -658f, _wgslsmith_f_op_f32(func_3(-209f, u_input.e, Struct_1(vec4<f32>(-1131f, 419f, 1371f, -1599f)), 1u))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1186f)), _wgslsmith_div_f32(-1660f, 1000f), -913f, _wgslsmith_div_f32(-258f, -891f))))), -vec4<i32>(select(-1i, abs(u_input.d), false), countOneBits(_wgslsmith_sub_i32(-1i, -2147483647i)), -_wgslsmith_div_i32(u_input.a.x, 29382i), u_input.d));
    let var_3 = reverseBits(~vec3<u32>(4294967295u, ~(~var_2.c), ~_wgslsmith_sub_u32(1u, var_0.x)));
    global1 = array<vec3<bool>, 17>();
    return firstTrailingBit(_wgslsmith_dot_vec2_i32(reverseBits(u_input.a), max(vec2<i32>(1i, firstLeadingBit(1i)), firstTrailingBit(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-224f, 1000f, 154f, 1000f)))) + vec4<f32>(1209f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -488f), _wgslsmith_f_op_f32(978f * 1012f), true)), _wgslsmith_f_op_f32(max(432f, _wgslsmith_f_op_f32(min(1836f, 320f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1685f, 1136f)))), vec4<i32>(func_1(), min(_wgslsmith_div_i32(-2147483647i & u_input.a.x, -1i), ~(-u_input.a.x)), 2147483647i, -15586i));
}

