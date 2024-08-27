struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(Struct_1(20312i, vec2<f32>(473f, 1218f)), 1i), Struct_2(Struct_1(20064i, vec2<f32>(-1326f, -1785f)), 0i), vec3<bool>(true, true, true), vec2<f32>(180f, -807f), 736f), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<f32>(589f, 2232f)), 1i), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(1000f, 190f)), -15046i), vec3<bool>(false, false, true), vec2<f32>(1022f, 2733f), 947f), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<f32>(-843f, 1695f)), -48183i), Struct_2(Struct_1(-7677i, vec2<f32>(-923f, -675f)), i32(-2147483648)), vec3<bool>(true, true, false), vec2<f32>(-1509f, -1437f), 491f), Struct_3(Struct_2(Struct_1(20303i, vec2<f32>(-799f, 1525f)), i32(-2147483648)), Struct_2(Struct_1(554i, vec2<f32>(1189f, -1135f)), i32(-2147483648)), vec3<bool>(true, false, false), vec2<f32>(870f, 238f), -999f), Struct_3(Struct_2(Struct_1(1i, vec2<f32>(-1281f, 391f)), -1i), Struct_2(Struct_1(0i, vec2<f32>(-757f, -623f)), -1i), vec3<bool>(false, false, false), vec2<f32>(-344f, -342f), -916f), Struct_3(Struct_2(Struct_1(0i, vec2<f32>(242f, -1056f)), 2147483647i), Struct_2(Struct_1(0i, vec2<f32>(-1000f, 556f)), -3672i), vec3<bool>(true, false, false), vec2<f32>(1118f, -734f), 741f), Struct_3(Struct_2(Struct_1(-29378i, vec2<f32>(-948f, 662f)), 2147483647i), Struct_2(Struct_1(0i, vec2<f32>(-756f, 1000f)), 2147483647i), vec3<bool>(false, false, false), vec2<f32>(1418f, -446f), -617f), Struct_3(Struct_2(Struct_1(2147483647i, vec2<f32>(368f, -175f)), 16527i), Struct_2(Struct_1(4861i, vec2<f32>(280f, -162f)), -2552i), vec3<bool>(false, false, true), vec2<f32>(717f, -197f), -568f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    let var_0 = min(firstLeadingBit(99984u), u_input.a.x);
    return 798f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f + _wgslsmith_f_op_f32(abs(1187f))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))));
    global0 = array<vec3<bool>, 20>();
    var var_1 = _wgslsmith_dot_vec3_u32(~u_input.a.xxx & (vec3<u32>(u_input.e, 1u, firstTrailingBit(u_input.d)) | ~(u_input.a.xxx & vec3<u32>(4294967295u, 12846u, 53148u))), ~u_input.a.yyy);
    var var_2 = -1000f;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-448f, _wgslsmith_f_op_f32(1633f + 201f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, -464f)), _wgslsmith_f_op_f32(abs(-405f))))), _wgslsmith_f_op_f32(937f + _wgslsmith_f_op_f32(-178f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(806f, -1251f)) + -2111f))));
    return global1[_wgslsmith_index_u32(u_input.d, 8u)];
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-247f, arg_3.b.a.b.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(845f, 1000f))) + vec2<f32>(245f, -911f)));
    let var_1 = !(!(!vec2<bool>(arg_3.c.x, 63174i > var_0.a)));
    global1 = array<Struct_3, 8>();
    let var_2 = func_2();
    global1 = array<Struct_3, 8>();
    return -582f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), true);
    var var_1 = Struct_1(u_input.b.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.e, vec2<bool>(false, true), Struct_4(64622u), global1[_wgslsmith_index_u32(0u, 8u)])) + _wgslsmith_f_op_f32(select(-756f, -1286f, var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1792f * -264f), 271f))), -289f));
    global1 = array<Struct_3, 8>();
    let var_2 = any(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), true), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), var_0.x)), vec4<bool>(select(var_0.x, var_0.x, var_0.x), var_1.a > 2147483647i, var_0.x, true)));
    let var_3 = func_2();
    var var_4 = -var_1.a;
    var_1 = func_2().b.a;
    global1 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, vec2<f32>(_wgslsmith_f_op_f32(round(-338f)), 446f), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.d, 0u, u_input.d, u_input.e)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.e, 1735u, 15316u), vec4<u32>(u_input.d, u_input.e, 29u, 82235u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 0u, 4294967295u), u_input.a)) | u_input.a);
}

