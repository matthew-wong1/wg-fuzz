struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec2<f32>, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = u_input.b.x;
    global1 = array<vec2<f32>, 3>();
    global0 = u_input.d.x;
    global0 = _wgslsmith_div_i32(0i, max(-1i, -select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -10441i), vec3<i32>(u_input.d.x, 1i, u_input.a.x)), true)));
    var_0 = 4294967295u;
    return !(!(!select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_5 {
    global1 = array<vec2<f32>, 3>();
    let var_0 = !(!(!func_3()));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1800f, arg_1.x, _wgslsmith_f_op_f32(select(1149f, 1195f, false)))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * arg_1.x), arg_1.x), arg_1))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 104f, -766f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * arg_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2519f, arg_1.x)))))));
    var var_2 = var_0;
    return Struct_5(14763u, Struct_1(arg_1.zx, -7632i, !vec2<bool>(arg_0 == -52765i, all(vec3<bool>(var_2.x, false, var_2.x)))), Struct_4(~u_input.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) * vec2<f32>(-132f, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 414f)), vec2<bool>(true, false))), 35266i, var_0), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.zy, vec2<f32>(var_1.x, arg_1.x)))), u_input.a.x, select(vec2<bool>(var_0.x, true), vec2<bool>(var_2.x, true), var_2.x)), countOneBits(0i)), Struct_3(Struct_1(vec2<f32>(var_1.x, arg_1.x), 21227i, vec2<bool>(25263u != u_input.c, u_input.b.x == 25732u))));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    var var_0 = func_2(~(~u_input.a.x) & -2147483647i, arg_0);
    var_0 = func_2(var_0.c.b.b, _wgslsmith_f_op_vec3_f32(-arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -585f)), -832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 112f))), 853f)))));
    var var_2 = var_0.c;
    var var_3 = vec4<u32>(u_input.b.x, 12092u, _wgslsmith_mult_u32(min(1u, var_2.a), u_input.b.x), 1u);
    return var_2.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = vec2<f32>(-427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-642f)))))));
    let var_1 = vec2<bool>(false, all(vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)))));
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2718f, 1225f, _wgslsmith_f_op_f32(ceil(-170f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1247f, 585f)), vec3<f32>(var_0.x, var_0.x, 1000f), true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -1785f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, -555f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(-877f, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2967f, var_0.x, var_0.x))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1912f, var_0.x, var_0.x) + vec3<f32>(-1341f, var_0.x, -1000f))))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(422f, -894f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1941f, 958f, _wgslsmith_f_op_f32(1009f + var_0.x)))))), var_2));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_0.x, 2388f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1412f, 1589f, -1904f) + vec3<f32>(var_3.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, var_3.x, var_0.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(-func_2(abs(u_input.a.x), vec3<f32>(-640f, -1019f, 590f)).d.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 163f)))), _wgslsmith_f_op_f32(floor(-1000f))));
    var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2006f, var_3.x, _wgslsmith_f_op_f32(-var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-642f, _wgslsmith_f_op_f32(f32(-1f) * -108f), var_3.x, var_0.x), vec4<f32>(_wgslsmith_div_f32(var_3.x, 1378f), 527f, _wgslsmith_f_op_f32(-302f - -324f), var_0.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1465f, var_0.x, var_0.x, 1668f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, 878f, -581f, 1370f)))))));
}

