struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(vec2<u32>(1u, 4294967295u), -1i, 393i, vec2<u32>(0u, 4294967295u), -1i), Struct_1(vec2<u32>(1u, 25290u), 1i, 1i, vec2<u32>(1u, 0u), -1i), Struct_3(true, vec2<u32>(0u, 0u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    global2 = array<Struct_4, 1>();
    var var_0 = ~(~(~(~(~vec4<u32>(1u, 1u, 22103u, 50740u)))));
    var var_1 = ~var_0.yz;
    var_1 = ~var_0.xy;
    var var_2 = 1667f;
    return vec3<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), !select(true, ~var_1.x >= max(1u, var_1.x), true), any(vec2<bool>(true, true)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 753f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-420f)) + -2118f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(312f * _wgslsmith_f_op_f32(sign(735f))), _wgslsmith_f_op_f32(min(-273f, -825f))) + _wgslsmith_f_op_f32(-252f - 717f)));
    return ~(~_wgslsmith_add_u32(1u, 1u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> vec4<f32> {
    let var_0 = func_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a.x), u_input.b, 55052i), u_input.a.wxw));
    let var_1 = 1000f;
    let var_2 = ~_wgslsmith_clamp_u32(abs(func_3(10338i)), func_3(u_input.b), 47753u & arg_3) >> ((arg_3 << (0u % 32u)) % 32u);
    global2 = array<Struct_4, 1>();
    var var_3 = ~(arg_3 << (func_3(max(-21331i, arg_2)) % 32u)) & select(75049u, 1u, var_0.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * var_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f - var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(abs(-1052f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))))) * vec4<f32>(-973f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * 148f) + _wgslsmith_f_op_f32(1222f * -204f))), 563f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1427f, 268f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, -588f))))));
    var var_2 = 44803u;
    let var_3 = 4294967295u;
    var var_4 = vec3<u32>(var_3, _wgslsmith_div_u32(var_3, select(var_3, var_3, (var_3 <= 62864u) & true)), var_3 >> (1u % 32u));
    let var_5 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3, var_3) | 4294967295u, 18u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3, 76056u), 18u)], Struct_3(!all(vec3<bool>(true, true, true)), vec2<u32>(~var_3, 44660u)));
    global2 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, 127f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 704f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1098f, -459f, 820f, var_1.x), vec4<f32>(-1000f, -550f, 1000f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1176f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, 828f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(934f, 1106f, 826f, var_1.x) - vec4<f32>(575f, var_1.x, var_1.x, var_1.x)), !vec4<bool>(var_5.c.a, var_5.c.a, var_5.c.a, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 962f, var_1.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(813f, var_1.x, 1502f)))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.x - -242f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), var_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(var_5.c.a, false), vec2<bool>(false, var_5.c.a), var_5.a.e, 15324u)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, 1329f, var_1.x, -2425f), vec4<f32>(1000f, 814f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1116f, var_1.x, -823f, -1014f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1000f, 750f), vec4<f32>(-771f, var_1.x, -1012f, var_1.x))))))), _wgslsmith_f_op_f32(-var_1.x), var_5.a.e);
}

