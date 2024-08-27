struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(55716i, 0i), vec2<i32>(0i, -23755i), vec2<i32>(21420i, -28054i), vec2<i32>(-1i, 9683i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(15392i, 0i), vec2<i32>(20379i, 0i), vec2<i32>(i32(-2147483648), 14408i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-938i, 70903i), vec2<i32>(-21952i, 0i), vec2<i32>(-1i, -5282i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-88341i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(-1i, -6416i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-29497i, i32(-2147483648)), vec2<i32>(1i, 37326i), vec2<i32>(647i, 1i), vec2<i32>(-1i, -37988i), vec2<i32>(-6518i, 2147483647i), vec2<i32>(-49098i, 2147483647i), vec2<i32>(35104i, 2147483647i), vec2<i32>(60043i, 30356i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: f32 = 1444f;

var<private> global3: array<Struct_4, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_2.a.xz;
    let var_1 = global3[_wgslsmith_index_u32(70495u, 17u)];
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(666f)));
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(1011f * _wgslsmith_f_op_f32(abs(-417f)));
    return !vec3<bool>(!(!(!arg_3.x)), true, false);
}

fn func_2(arg_0: f32) -> Struct_5 {
    global0 = true & any(func_3(Struct_5(1i, Struct_3(vec2<bool>(true, false), vec2<f32>(arg_0, arg_0), Struct_1(4294967295u, vec4<f32>(-858f, -1000f, arg_0, arg_0), -1018f), 1u)), global1[_wgslsmith_index_u32(41346u, 29u)], Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -3047f, arg_0), vec4<f32>(arg_0, arg_0, 1980f, 1462f)), all(vec3<bool>(false, false, true)), Struct_1(u_input.a, vec4<f32>(arg_0, -1675f, arg_0, 1000f), arg_0), arg_0, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), false)));
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(1172f, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(453f, arg_0), vec2<f32>(arg_0, -665f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, -624f)), vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1427f, 635f)))))) * vec2<f32>(1360f, -792f));
    global0 = true;
    let var_1 = u_input.b;
    return Struct_5(~abs(firstLeadingBit(_wgslsmith_mult_i32(u_input.d, u_input.b))), Struct_3(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), var_0, Struct_1(_wgslsmith_sub_u32(19218u, firstTrailingBit(55882u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(563f, 163f, -2235f, -993f))), var_0.x), ~abs(u_input.c.x ^ u_input.c.x)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-1318f + 1f));
    global2 = _wgslsmith_f_op_f32(select(-648f, -1301f, var_0.b.a.x));
    global2 = var_0.b.b.x;
    global3 = array<Struct_4, 17>();
    let var_1 = Struct_2(var_0.b.c.b, func_2(_wgslsmith_f_op_f32(-1432f + _wgslsmith_f_op_f32(-var_0.b.b.x))).b.a.x, var_0.b.c, _wgslsmith_f_op_f32(var_0.b.c.b.x + -1000f), !(var_0.b.a.x || false));
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> StorageBuffer {
    global3 = array<Struct_4, 17>();
    global2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) + _wgslsmith_f_op_f32(-arg_1.d))).b.c.c;
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_1(true).a.x, -459f, true)))).b;
    global3 = array<Struct_4, 17>();
    global1 = array<vec2<i32>, 29>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.b.yxw + vec3<f32>(arg_1.d, 436f, arg_1.d)) + _wgslsmith_div_vec3_f32(vec3<f32>(-2264f, 677f, var_0.c.b.x), vec3<f32>(1171f, var_0.c.b.x, -1227f))))) + _wgslsmith_f_op_vec3_f32(-arg_1.c.b.xxz)), min(vec3<i32>(-2147483647i, 1i, u_input.b), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.d) ^ vec4<i32>(u_input.d, u_input.b, u_input.d, -2147483647i), countOneBits(vec4<i32>(u_input.d, -45498i, -2147483647i, 1i))), 5614i, u_input.d)), _wgslsmith_f_op_f32(select(var_0.c.b.x, _wgslsmith_f_op_f32(-var_0.b.x), (var_0.a.x && arg_0.x) || true)), _wgslsmith_f_op_f32(-var_0.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-217f))) - 766f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(821f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -279f)))));
    let var_2 = vec3<u32>(select(0u, 32057u, true), _wgslsmith_div_u32(u_input.a, select(4294967295u, u_input.a, false)), 70106u);
    var var_3 = any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !vec3<bool>(u_input.b > u_input.d, all(vec2<bool>(false, true)), true), true));
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = func_4(!vec4<bool>(true, all(vec4<bool>(true, false, true, true)), (u_input.d | u_input.d) <= _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(1u, 29u)], vec2<i32>(44942i, var_4)), true), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(749f + var_1) - -150f) == 423f));
}

