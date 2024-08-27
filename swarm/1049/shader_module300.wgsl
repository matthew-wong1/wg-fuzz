struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 332f;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> bool {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(65243u, 13u)], global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(global1.c - -1542f))), arg_2.c.a);
    global2 = array<vec4<bool>, 13>();
    let var_1 = var_0.d.a;
    return !var_0.d.b.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> bool {
    global2 = array<vec4<bool>, 13>();
    let var_0 = u_input.d;
    global1 = Struct_3(vec4<bool>(true, !any(vec2<bool>(false, false)), true, true), Struct_2(Struct_1(func_3(u_input.c ^ 30223i, -9309i, Struct_4(u_input.c, vec2<bool>(false, false), Struct_2(global1.b.a), vec4<u32>(16499u, u_input.e.x, u_input.a, 62783u))), !global1.d.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 441f) * _wgslsmith_f_op_f32(-global1.c)), Struct_1(_wgslsmith_f_op_f32(1497f + _wgslsmith_div_f32(arg_1.x, arg_0)) > 268f, select(global1.a.wzx, global1.b.a.b, select(vec3<bool>(true, global1.d.a, false), !vec3<bool>(global1.a.x, global1.a.x, true), u_input.a > var_0.x))));
    var var_1 = vec4<i32>(~u_input.b, 1i, u_input.c, u_input.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, arg_0, global1.c, arg_1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, arg_1.x, -486f, 1406f), vec4<f32>(global1.c, global1.c, arg_0, global1.c), global2[_wgslsmith_index_u32(0u, 13u)]))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c, arg_1.x, -430f, 470f), vec4<f32>(-610f, 1000f, arg_1.x, arg_0)), vec4<f32>(global1.c, 1206f, global1.c, arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1678f, _wgslsmith_f_op_f32(arg_0 + 312f), -148f, _wgslsmith_f_op_f32(global1.c * 2236f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, arg_0, _wgslsmith_f_op_f32(ceil(-583f)), global1.c), vec4<f32>(arg_1.x, 471f, _wgslsmith_div_f32(arg_1.x, arg_0), _wgslsmith_f_op_f32(arg_1.x - global1.c)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-281f, -309f, false)) - -588f), -519f), global1.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(~var_0.x, 1u)), 13u)]));
    return select(all(vec2<bool>(global1.b.a.b.x && any(global1.d.b), all(global1.a.xz))), true, !global1.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_4 {
    global1 = Struct_3(vec4<bool>(true, arg_1 >= 0i, global1.a.x, false), global1.b, -888f, Struct_1(!(_wgslsmith_sub_i32(u_input.c, 1i) != -42612i), select(vec3<bool>(global1.b.a.a, func_2(global1.c, vec3<f32>(850f, 1517f, -372f)), !global1.d.a), global1.a.yzy, !(!global1.d.b))));
    global1 = Struct_3(!(!vec4<bool>(!global1.b.a.b.x, true, arg_1 < u_input.c, global1.d.a)), Struct_2(global1.b.a), _wgslsmith_f_op_f32(-950f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f))), Struct_1(!global1.a.x, global1.b.a.b));
    global2 = array<vec4<bool>, 13>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -1000f, 1394f, -1878f) - vec4<f32>(arg_0.x, -914f, global1.c, -1525f))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.c, global1.c, -1242f, global1.c)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c, global1.c, global1.c, arg_0.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-350f, -1530f, global1.c, 402f))), vec4<bool>(global1.a.x, false, false, global1.d.a)))))));
    global1 = Struct_3(select(!global1.a, !global2[_wgslsmith_index_u32(arg_2.x, 13u)], global1.b.a.b.x == global1.b.a.a), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-372f))))), global1.d);
    return Struct_4(~arg_1, global1.b.a.b.xy, Struct_2(Struct_1(false, global1.a.yww)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 13>();
    let var_0 = func_1(vec3<f32>(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1321f)) + global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - global1.c)), u_input.c, vec4<u32>(u_input.d.x, 0u, 1u, firstLeadingBit(u_input.e.x)));
    var var_1 = -abs(vec2<i32>(2147483647i, u_input.b << (~1559u % 32u)));
    global2 = array<vec4<bool>, 13>();
    let var_2 = ~_wgslsmith_sub_u32((countOneBits(var_0.d.x) << (~0u % 32u)) | _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(5365u, 4294967295u)), u_input.e), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.c), vec3<i32>(var_1.x, -(~3444i), 10402i));
}

