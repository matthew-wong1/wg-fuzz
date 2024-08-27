struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
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

var<private> global0: array<u32, 6>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(1i, vec4<i32>(-30423i, 1i, -40011i, -1i), vec4<bool>(true, false, false, false), vec4<f32>(692f, -1483f, 887f, 1366f)), Struct_3(-50481i, vec4<i32>(-36060i, 34163i, -50509i, 2147483647i), vec4<bool>(false, false, false, true), vec4<f32>(419f, -623f, 264f, -504f)), Struct_3(1i, vec4<i32>(1i, -17568i, -1650i, 0i), vec4<bool>(false, true, true, true), vec4<f32>(1000f, 2042f, 1056f, -632f)), Struct_3(12025i, vec4<i32>(14684i, 0i, -28750i, 0i), vec4<bool>(true, true, false, true), vec4<f32>(1000f, -900f, -2394f, 375f)), Struct_3(2147483647i, vec4<i32>(2147483647i, 1i, -25830i, -869i), vec4<bool>(true, false, true, true), vec4<f32>(1828f, -674f, -476f, 1779f)), Struct_3(-23569i, vec4<i32>(-20150i, 7786i, 3476i, 2147483647i), vec4<bool>(false, true, true, true), vec4<f32>(1132f, 1512f, -910f, -1565f)), Struct_3(-9847i, vec4<i32>(-1824i, 0i, 42162i, -28783i), vec4<bool>(true, true, false, false), vec4<f32>(1604f, 455f, 769f, -282f)), Struct_3(-37270i, vec4<i32>(-62115i, i32(-2147483648), -2106i, 1i), vec4<bool>(false, false, false, false), vec4<f32>(-643f, 1000f, 1098f, 1070f)), Struct_3(-33054i, vec4<i32>(1i, 35318i, -25862i, -1i), vec4<bool>(true, true, false, true), vec4<f32>(1111f, -406f, 434f, 1689f)), Struct_3(3006i, vec4<i32>(81620i, 0i, -53620i, 18325i), vec4<bool>(true, true, true, true), vec4<f32>(-570f, 185f, 2478f, 1710f)), Struct_3(2147483647i, vec4<i32>(-24491i, -6582i, 1i, -9320i), vec4<bool>(false, true, true, false), vec4<f32>(2017f, -2504f, -947f, -508f)), Struct_3(19078i, vec4<i32>(36347i, -2973i, i32(-2147483648), 31169i), vec4<bool>(false, false, false, true), vec4<f32>(-247f, -932f, -1000f, 1410f)), Struct_3(0i, vec4<i32>(25825i, 18428i, -51760i, 17309i), vec4<bool>(false, true, true, false), vec4<f32>(1132f, -224f, -301f, 1081f)), Struct_3(27331i, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), vec4<bool>(false, true, true, false), vec4<f32>(-2000f, 1939f, -236f, 1298f)), Struct_3(1i, vec4<i32>(-11301i, 2775i, 45211i, 32610i), vec4<bool>(false, false, true, false), vec4<f32>(-1538f, -478f, 3353f, -1044f)), Struct_3(22307i, vec4<i32>(-29927i, i32(-2147483648), 53043i, 2147483647i), vec4<bool>(true, true, true, true), vec4<f32>(-482f, 355f, 269f, -1840f)), Struct_3(-17215i, vec4<i32>(0i, 2147483647i, 8832i, 0i), vec4<bool>(false, true, false, false), vec4<f32>(-872f, -1954f, -552f, -326f)), Struct_3(1i, vec4<i32>(6216i, 1i, 2147483647i, 6413i), vec4<bool>(false, false, false, true), vec4<f32>(-834f, 580f, -1086f, -2052f)), Struct_3(33677i, vec4<i32>(2147483647i, -26155i, -24524i, 47721i), vec4<bool>(true, true, true, true), vec4<f32>(-1069f, -1315f, -110f, 862f)), Struct_3(16353i, vec4<i32>(-5581i, 2946i, i32(-2147483648), 1i), vec4<bool>(true, true, false, false), vec4<f32>(560f, 1193f, -446f, 1000f)), Struct_3(1i, vec4<i32>(1082i, -29966i, -29138i, -60451i), vec4<bool>(false, true, false, false), vec4<f32>(1967f, -1192f, 427f, 1773f)), Struct_3(i32(-2147483648), vec4<i32>(0i, -37912i, -39417i, 60910i), vec4<bool>(false, false, true, true), vec4<f32>(1734f, 392f, 153f, -926f)));

var<private> global2: f32;

var<private> global3: array<Struct_2, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> bool {
    var var_0 = !(!select(vec2<bool>(any(vec4<bool>(false, arg_0.x, arg_0.x, false)), arg_0.x), select(vec2<bool>(arg_0.x, true), !arg_0, arg_0), arg_0.x));
    return var_0.x;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -403f);
    let var_0 = 1278f;
    global3 = array<Struct_2, 30>();
    global3 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-var_0)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(-1000f + arg_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - var_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, 905f, arg_1.x)))))), arg_1.xw, u_input.d.x);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_2.a.x));
    var var_2 = arg_1;
    global3 = array<Struct_2, 30>();
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - -2266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)), arg_1.d.x)))));
    return ~global0[_wgslsmith_index_u32(1u, 6u)] | ~select(59244u | ~arg_0, _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)]), 26397u > select(u_input.e.x, 0u, arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec3<bool>(true, all(vec2<bool>(false, false)), true)), vec3<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), func_1(vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-552f, -1702f, -993f, -460f)))) && ((i32(-1i) * -1i) == u_input.b), true || all(vec2<bool>(true, true))), !(global0[_wgslsmith_index_u32(func_3(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3647u, 6u)], 6u)], global3[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 6u)]), 30u)], func_2(false, vec4<f32>(1188f, -1000f, 1178f, 109f)), func_2(false, vec4<f32>(-591f, -1463f, 1000f, -242f))), 6u)] == u_input.e.x));
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, 1829f, -1065f, 368f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-950f, -869f, -1000f, -602f))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1221f, _wgslsmith_f_op_f32(floor(700f)), _wgslsmith_div_f32(419f, -1260f), 941f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2038f, 486f, 1108f, -565f)), vec4<f32>(1f, 1f, 1f, 1f))))))));
    var_1 = vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(-1200f + var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x);
    var var_2 = vec3<bool>(false, !any(select(!vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), true)), any(vec3<bool>(false, !var_0.x, select(true, !var_0.x, true))));
    let var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wwy, var_1.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 4294967295u, 18516u), ~vec4<u32>(69863u, u_input.e.x, 2897u, u_input.e.x))));
}

