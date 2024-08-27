struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 39078u;

var<private> global1: array<u32, 29> = array<u32, 29>(81582u, 55902u, 0u, 0u, 68804u, 1u, 0u, 1u, 12395u, 16346u, 4294967295u, 1u, 62959u, 4294967295u, 0u, 4294967295u, 40347u, 8821u, 1u, 12223u, 1u, 15096u, 35819u, 30388u, 1u, 5347u, 4906u, 43623u, 75177u);

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(1i, -17429i), vec2<i32>(0i, 32718i), vec2<i32>(-1900i, -9833i), vec2<i32>(38528i, 25132i), vec2<i32>(1i, 13907i), vec2<i32>(0i, -4357i), vec2<i32>(-7357i, 2147483647i), vec2<i32>(-1i, 1257i), vec2<i32>(0i, -1i), vec2<i32>(-1i, 52389i), vec2<i32>(-75253i, -4358i), vec2<i32>(-1i, 35275i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, -21350i), vec2<i32>(i32(-2147483648), 48101i), vec2<i32>(-1i, 34067i), vec2<i32>(-17274i, -1i), vec2<i32>(2147483647i, 39939i), vec2<i32>(17546i, 10339i), vec2<i32>(-15013i, 2147483647i), vec2<i32>(0i, i32(-2147483648)));

var<private> global3: array<Struct_1, 29>;

var<private> global4: array<vec4<f32>, 26>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    global2 = array<vec2<i32>, 21>();
    global0 = ~4294967295u;
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(-236f, _wgslsmith_f_op_f32(f32(-1f) * -610f))), _wgslsmith_f_op_f32(f32(-1f) * -186f)))), vec2<f32>(-596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f - 923f)) * _wgslsmith_f_op_f32(f32(-1f) * -831f))));
    global4 = array<vec4<f32>, 26>();
    var var_1 = Struct_1(!(!all(vec4<bool>(true, true, true, true))), ~(~vec4<u32>(~arg_0.b.x, u_input.a.x, _wgslsmith_dot_vec2_u32(arg_0.b.yx, arg_0.b.ww), arg_0.b.x)), all(!vec2<bool>(-2147483647i >= arg_1.x, arg_0.a | arg_0.c)), ~min(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 29u)], 29u)]), 0u), ~1u | (u_input.a.x | arg_0.b.x)));
    return -1731f;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global2 = array<vec2<i32>, 21>();
    let var_0 = true;
    var var_1 = vec3<bool>(all(vec2<bool>(var_0, arg_0.c)), arg_0.c, (true & var_0) | ((global1[_wgslsmith_index_u32(arg_0.d, 29u)] <= 107535u) & all(!vec3<bool>(false, var_0, true))));
    var var_2 = false;
    global3 = array<Struct_1, 29>();
    return arg_1;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 26u)] + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-196f, -1728f, -617f, 542f) * vec4<f32>(-1293f, -1841f, 229f, 893f)), vec4<f32>(-1000f, -541f, -182f, 1453f), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), global4[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(~47649u, 29u)]), 26u)]), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(17595u, 29u)], 1u), arg_0, 18281u), ~global2[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(-1273f * -785f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1521f))), _wgslsmith_f_op_f32(-567f + 495f)))));
    global4 = array<vec4<f32>, 26>();
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, vec4<u32>(0u, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], 61300u), arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), var_0.x)) + 1025f)), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1471f + var_0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f * var_0.x) + _wgslsmith_f_op_f32(floor(var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -732f, _wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(~34432u, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(453f, var_0.x) * _wgslsmith_f_op_f32(abs(1077f))))));
    var var_2 = select(select(!select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, true), arg_0), !vec3<bool>(true, false, arg_0), true), vec3<bool>(arg_0 & arg_0, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, false))), arg_0), vec3<bool>(all(vec2<bool>(arg_0, arg_0)), true, arg_0)), vec3<bool>(true, false, true), !select(vec3<bool>(arg_0, !arg_0, arg_0 & arg_0), select(select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, true), vec3<bool>(false, arg_0, arg_0)), arg_0 != false), all(vec3<bool>(arg_0, arg_0, arg_0)) && true));
    let var_3 = var_2.zz;
    return any(!(!(!vec3<bool>(arg_0, true, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 29>();
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 29u)];
    var var_1 = Struct_1(!(abs(u_input.a.x) <= _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(68220u, 29u)], 44186u)), ~vec4<u32>(1u, firstTrailingBit(var_0.b.x), firstLeadingBit(~global1[_wgslsmith_index_u32(0u, 29u)]), 0u), func_1(true & all(vec4<bool>(var_0.a, var_0.a, false, true))), 17458u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(584f, -2971f, 645f, -235f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2150f, 580f, 756f, -1556f))), func_1(true))))), ~(~_wgslsmith_mult_u32(~95802u, var_1.d)), _wgslsmith_sub_vec3_u32(~select(var_1.b.yzz, u_input.a.wxx, !vec3<bool>(var_1.a, false, var_0.a)), _wgslsmith_add_vec3_u32(var_0.b.wxw, abs(~var_0.b.xzy))), global2[_wgslsmith_index_u32(var_1.d, 21u)], -2147483647i);
}

