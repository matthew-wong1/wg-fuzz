struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: i32;

var<private> global2: array<bool, 30>;

var<private> global3: Struct_2 = Struct_2(true, true);

var<private> global4: array<bool, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    var var_0 = true;
    global3 = arg_0;
    var var_1 = Struct_2(-789f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1389f + -414f))), true);
    var var_2 = _wgslsmith_div_i32(17229i, arg_1);
    global3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-607f, -1414f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1427f, 1013f)), _wgslsmith_f_op_f32(max(-1131f, -999f)))))) * _wgslsmith_f_op_f32(f32(-1f) * -1133f)));
}

fn func_1() -> vec2<f32> {
    let var_0 = u_input.b.x;
    global4 = array<bool, 13>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, _wgslsmith_f_op_f32(-2023f - _wgslsmith_f_op_f32(1689f * 1000f)), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(global2[_wgslsmith_index_u32(30935u, 30u)], global0[_wgslsmith_index_u32(82395u, 1u)]), 21707i, u_input.a)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-898f, var_1.x, -2328f, -248f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -820f) - vec4<f32>(1465f, -786f, var_1.x, 1591f)))))));
    var var_2 = Struct_2(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 4294967295u, 1u, u_input.a.x), vec4<u32>(u_input.b.x, 46884u, 24305u, var_0)), u_input.b.x) <= ~countOneBits(5915u), false);
    return vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, -204f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(399f, -1536f), vec2<f32>(889f, 952f), vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, 602f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2214f, 978f))) + vec2<f32>(1028f, _wgslsmith_f_op_f32(f32(-1f) * -1273f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(func_1())));
    global2 = array<bool, 30>();
    global4 = array<bool, 13>();
    var var_1 = _wgslsmith_f_op_f32(-590f + 801f);
    let var_2 = Struct_2(true, !global2[_wgslsmith_index_u32(abs(1u), 30u)]);
    let var_3 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(40913i, -_wgslsmith_clamp_i32(0i, 2655i, -35323i), 1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 60768i, 64899i), vec3<i32>(0i, -18909i, -7945i)), i32(-1i) * -17577i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1233f) * vec3<f32>(793f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1022f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-452f, var_0.x, 2355f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2014f, 719f) * vec3<f32>(973f, var_0.x, -816f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1141f, 1654f, var_0.x))))));
}

