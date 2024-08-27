struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(856f, 1515f), vec2<f32>(-1162f, 1000f), vec2<f32>(521f, 926f), vec2<f32>(2980f, 1000f), vec2<f32>(-394f, 1000f), vec2<f32>(-482f, -1644f), vec2<f32>(387f, 663f), vec2<f32>(1235f, -365f), vec2<f32>(-1000f, 608f), vec2<f32>(-894f, -392f), vec2<f32>(1000f, -1066f), vec2<f32>(245f, 709f), vec2<f32>(1061f, 1181f), vec2<f32>(517f, 3176f), vec2<f32>(689f, 973f), vec2<f32>(-1000f, -1435f), vec2<f32>(1245f, 434f), vec2<f32>(-545f, -254f), vec2<f32>(-313f, -1305f), vec2<f32>(-2377f, 900f), vec2<f32>(445f, 1287f), vec2<f32>(-591f, -333f), vec2<f32>(499f, -228f), vec2<f32>(-1880f, 687f), vec2<f32>(-296f, 698f), vec2<f32>(510f, -169f), vec2<f32>(-1030f, 1734f), vec2<f32>(-1668f, -1000f), vec2<f32>(-631f, 1140f));

var<private> global1: array<Struct_3, 17>;

var<private> global2: array<vec2<i32>, 30>;

var<private> global3: array<Struct_2, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1031f, -524f) + _wgslsmith_f_op_f32(select(347f, -196f, all(vec4<bool>(false, true, false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(907f, -552f, true)) * 645f), -1018f))));
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-963f, -1000f, false))))))));
    var var_3 = -887f;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - var_2), 1000f) - _wgslsmith_div_f32(-750f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - -956f))))));
}

fn func_3(arg_0: Struct_3) -> bool {
    return true;
}

fn func_1() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-273f * 692f))) * 572f)), -211f, 684f, _wgslsmith_f_op_f32(min(-395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(549f, 1286f)) - _wgslsmith_f_op_f32(floor(-1178f))))));
    global1 = array<Struct_3, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0, var_0)), vec4<f32>(1000f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1545f)) - _wgslsmith_f_op_f32(abs(1474f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))))));
    global2 = array<vec2<i32>, 30>();
    global3 = array<Struct_2, 17>();
    return func_3(global1[_wgslsmith_index_u32(u_input.e, 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1949f), 135f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1382f, 332f, 1209f, -335f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(586f, 495f, -349f, 1725f) + vec4<f32>(752f, -1160f, 1137f, 1000f))), vec4<f32>(-340f, -2003f, 154f, _wgslsmith_f_op_f32(f32(-1f) * -1106f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, 341f, -307f, 2323f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(216f, 970f, 1000f, 1744f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, 1542f, -791f, -2165f) * vec4<f32>(282f, -150f, -1175f, 894f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    global1 = array<Struct_3, 17>();
    global3 = array<Struct_2, 17>();
    let var_1 = !vec4<bool>(true, func_1(), ~(~u_input.e) != select(~u_input.c, select(23095u, u_input.a, true), select(false, false, false)), true);
    global0 = array<vec2<f32>, 29>();
    var var_2 = -1000f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(var_0.x))));
    var_2 = true;
    let var_3 = -47178i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec3<i32>(1i, 1i & u_input.b.x, -var_3), -(~vec3<i32>(u_input.b.x, u_input.b.x, 21136i)), !vec3<bool>(var_1.x, var_1.x, var_1.x))));
}

